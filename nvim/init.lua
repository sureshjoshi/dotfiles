local termfeatures = vim.g.termfeatures or {}
termfeatures.osc52 = false
vim.g.termfeatures = termfeatures

vim.opt.number = true               -- Line numbers
vim.opt.relativenumber = true       -- Relative line numbers
vim.opt.scrolloff = 5               -- Number of lines to always keep above/below the cursor
vim.opt.cursorline = true           -- Highlight the cursor's line

-- Indentation
vim.opt.autoindent = true           -- Use current line's indent
vim.opt.expandtab = true            -- Spaces instead of tabs
vim.opt.shiftwidth = 5              -- Indent using tab width
vim.opt.softtabstop = 3             -- Disabling this
vim.opt.tabstop = 4                 -- Tab width
vim.opt.smartindent = true          -- Be more clever with brace indents

-- Splitting
vim.opt.splitbelow = true           -- Horizontal splits go below
vim.opt.splitright = true           -- Vertical splits go right

-- Search settings
vim.opt.hlsearch = true             -- Highlight search results ?TODO?
vim.opt.ignorecase = true           -- Case insensitive search
vim.opt.incsearch = true            -- Show matches as you type
vim.opt.smartcase = true            -- Case sensitive if uppercase in search

vim.opt.completeopt = { "menuone", "popup", "noinsert" } -- Options for completion menu
vim.opt.winborder = "rounded" -- Use rounded borders for windows

-- Keymaps (TODO: Split out)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("plugins.completion")
require("plugins.snacks")
require("plugins.themes")
require("plugins.treesitter")
require("lsp")
