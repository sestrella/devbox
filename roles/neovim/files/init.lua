require('plugins')

-- providers
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_python_provider = 0
vim.g.loaded_ruby_provider = 0
-- screen
vim.opt.laststatus = 3

vim.o.colorcolumn = "80"
vim.o.number = true
vim.o.termguicolors = true
-- spaces
vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.tabstop = 2
-- windows
vim.o.splitbelow = true
vim.o.splitright = true
-- splits
vim.keymap.set("n", "<c-h>", "<c-w><c-h>", {})
vim.keymap.set("n", "<c-j>", "<c-w><c-j>", {})
vim.keymap.set("n", "<c-k>", "<c-w><c-k>", {})
vim.keymap.set("n", "<c-l>", "<c-w><c-l>", {})
