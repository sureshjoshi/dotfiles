local opt = vim.opt

-- Editor
opt.colorcolumn = "100"         -- Highlight the 100 character mark
opt.cursorline = true           -- Highlight the cursor's line
opt.list = true                 -- Display leading/trailing whitespace characters
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣", }
opt.number = true               -- Line numbers
opt.relativenumber = true       -- Relative line numbers
opt.scrolloff = 10              -- Number of lines to always keep above/below the cursor
opt.sidescrolloff = 5           -- Number of columns to always keep left/right of cursor
opt.signcolumn = "yes"          -- Always show sign column
opt.wrap = false                -- Turn off line wrapping

-- Indentation
opt.autoindent = true           -- Use current line's indent
opt.breakindent = true          -- Maintain indents on wrapped text
opt.expandtab = true            -- Spaces instead of tabs
opt.shiftwidth = 4              -- Indent using tab width
opt.softtabstop = 4             -- Disabling this
opt.tabstop = 4                 -- Tab width
opt.smartindent = true          -- Be more clever with brace indents

-- Splitting
opt.splitbelow = true           -- Horizontal splits go below
opt.splitright = true           -- Vertical splits go right

-- Search
opt.hlsearch = true             -- Highlight search results ?TODO?
opt.ignorecase = true           -- Case insensitive search
opt.incsearch = true            -- Show matches as you type
opt.smartcase = true            -- Case sensitive if uppercase in search

-- File handling
opt.backup = false              -- Don't create backup files
opt.swapfile = false            -- Don't create swap files
opt.undofile = true             -- Create persistent undo file
opt.writebackup = false         -- Don't create backup files

-- System interaction
opt.clipboard = "unnamedplus"   -- Sync OS/Neovim clipboards
opt.mouse = "a"                 -- Allow mouse functionality

-- Performance
opt.synmaxcol = 300             -- Syntax highlighting column limit

opt.completeopt = { "menuone", "popup", "noinsert" } -- Options for completion menu
opt.winborder = "rounded" -- Use rounded borders for windows