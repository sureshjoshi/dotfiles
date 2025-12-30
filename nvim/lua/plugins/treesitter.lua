vim.pack.add({
    "https://github.com/nvim-treesitter/nvim-treesitter",
    "https://github.com/nvim-treesitter/nvim-treesitter-context"
})

local languages = { "c", "cpp", "html", "jai", "javascript", "lua", "python", "regex", "rust", "svelte", "typescript" }

require("nvim-treesitter.config").setup({
    ensure_installed = languages,
    auto_install = false,
    highlight = {
        enable = true,
        disable = function(lang, buf)
            local max_filesize = 100 * 1024 -- 100kB
            local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
            if ok and stats and stats.size > max_filesize then
                return true
            end
        end,
        additional_vim_regex_highlighting = false,
    },
})

vim.api.nvim_create_autocmd("FileType", {
	desc = "Ensure highlighting is running on a per-file basis",
	group = vim.api.nvim_create_augroup("nvim-treesitter-filetype-group", { clear = true }),
    pattern = languages,
	callback = function(args)
        -- local treesitter = require('nvim-treesitter')
        -- local lang = vim.treesitter.language.get_lang(args.match)
        -- if vim.list_contains(treesitter.get_installed(), lang) then
            pcall(vim.treesitter.start)
        -- end
    end,
})

vim.api.nvim_create_autocmd("User", {
    desc = "Add Jai tree-sitter",
	group = vim.api.nvim_create_augroup("nvim-treesitter-filetype-jai", { clear = true }),
    pattern = "TSUpdate",
    callback = function()
        require("nvim-treesitter.parsers").jai = {
            install_info = {
                url = "https://github.com/robotpajamas/tree-sitter-jai",
                branch = "shenanigans",
                queries = "queries/",
            },
            -- install_info = {
            --     path = '~/Development/tree-sitter-jai',
            --     location = 'parser',
            --     generate = true,
            --     generate_from_json = false,
            --     queries = 'queries/',
            -- },
        }
    end,
})
