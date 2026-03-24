vim.pack.add({
    "https://github.com/nvim-mini/mini.icons",
    "https://github.com/robotpajamas/dexco.nvim",
})

require("mini.icons").setup({
    style = "ascii",
})
vim.cmd.colorscheme("dexco")
