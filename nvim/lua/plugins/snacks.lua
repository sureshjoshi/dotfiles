vim.pack.add({
     { src = "https://github.com/folke/snacks.nvim", version = vim.version.range("^2.30") }
})

require("snacks").setup({
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    -- bigfile = { enabled = true },
    -- dashboard = { enabled = true },
    explorer = { enabled = true },
    indent = {
        enabled = true, 
        animate = { enabled = false },
    },
    -- input = { enabled = true },
    picker = { enabled = true },
    -- notifier = { enabled = true },
    -- quickfile = { enabled = true },
    -- scope = { enabled = true },
    -- scroll = { enabled = true },
    -- statuscolumn = { enabled = true },
    -- words = { enabled = true },
})

vim.keymap.set("n", "<leader><space>", function() Snacks.picker.smart() end, { desc = "Smart find files" })
vim.keymap.set("n", "<leader>e", function ()
     local explorer_pickers = Snacks.picker.get({ source = "explorer" })
            for _, v in pairs(explorer_pickers) do
                if v:is_focused() then
                    v:close()
                else
                    v:focus()
                end
            end
        if #explorer_pickers == 0 then
            Snacks.picker.explorer()
        end
   end
)
