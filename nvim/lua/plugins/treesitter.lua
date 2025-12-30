vim.pack.add({
    "https://github.com/nvim-treesitter/nvim-treesitter", 
    "https://github.com/nvim-treesitter/nvim-treesitter-context"
})

require("nvim-treesitter.config").setup({
    ensure_installed = { "c", "cpp", "html", "javascript", "lua", "python", "regex", "rust", "svelte", "typescript" },
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
