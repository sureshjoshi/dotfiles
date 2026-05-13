-- TODO: Review for opts (noremap, silent, etc)

local map = vim.keymap.set

map("i", "jk", "<ESC>", { desc = "Alternate escape for Insert mode" });
map("n", "<Esc>", ":nohlsearch<CR>", {desc = "Remove highlights on escape" })

map("n", "gh", "^", { desc = "Go to start of line" })
map("n", "gl", "$", { desc = "Go to end of line" })

-- Buffer navigation
map("n", "<Tab>", ":bnext<CR>", { desc = "Next buffer" })
map("n", "<S-Tab>", ":bprevious<CR>", { desc = "Previous buffer" })
-- TODO: Probably a better mapping for this
map("n", "<leader>bb", ":e #<CR>", { desc = "Switch to last edited buffer" })

-- Center after movement
map("n", "n", "nzz", { desc = "" })
map("n", "N", "Nzz", { desc = "" })
-- TODO: Add more for jumps

-- Text Editing
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

map("v", "<", "<gv", { desc = "Dedent keeping visual mode" })
map("v", ">", ">gv", { desc = "Indent keeping visual mode" })
map("v", "p", '"_dP', { desc = "Paste over selection without losing copied selection" })


-- TODO: Remap ? or remap n/N to always maintain direction

-- Add undo break points at more natural locations
map("i", ",", ",<c-g>u")
map("i", ".", ".<c-g>u")
map("i", ";", ";<c-g>u")
map("i", ":", ":<c-g>u")

-- Auto-close pairs -- TODO: I actually don't like this, as it throws me off
map("i", "'", "''<left>")
map("i", "`", "``<left>")
map("i", '"', '""<left>')
map("i", "(", "()<left>")
map("i", "[", "[]<left>")
map("i", "{", "{}<left>")
map("i", "<", "<><left>")

-- Surround-ish plugin operating on selections
map("x", '"', 'c""<Esc>P', { noremap = true })
map("x", "'", "c''<Esc>P", { noremap = true })
map("x", "[", "c[]<Esc>P", { noremap = true })
map("x", "{", "c{}<Esc>P", { noremap = true })
map("x", "(", "c()<Esc>P", { noremap = true })
-- TODO: Interferes with indent
-- map("x", "<", "c<><Esc>P", { noremap = true })

map("n", "s", "*", { noremap = true, desc = "Replace 's' with search for word at cursor" })
map("n", "yc", "yy<cmd>normal gcc<CR>p", { noremap = true, desc = "Duplicate line and comment original" })
