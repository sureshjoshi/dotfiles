-- Terminal configuration
local termfeatures = vim.g.termfeatures or {}
termfeatures.osc52 = false
vim.g.termfeatures = termfeatures
vim.opt.termguicolors = true

-- Leader configuration (needs to come before plugins)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Handle new filetypes
vim.filetype.add({ extension = { jai = "jai" } })

require("config")
require("plugins")
