vim.cmd("set backspace=indent,eol,start")
vim.cmd("set cursorline")
vim.cmd("set encoding=utf-8")
vim.cmd("set noswapfile")
vim.cmd("set number")
vim.cmd("set signcolumn=yes")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set hidden")
vim.cmd("set termguicolors")

-- keybindings
vim.g.mapleader = "\\"

-- insert mode
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("i", "kj", "<Esc>")

-- normal mode
vim.keymap.set("n", "<leader><tab>", ":bn<CR>")
vim.keymap.set("n", "<leader><S-tab>", ":bp<CR>")
vim.keymap.set("n", "<leader>[", "<C-w>h")
vim.keymap.set("n", "<leader>]", "<C-w>l")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<leader>q", ":qa!<CR>")
vim.keymap.set("n", "<leader>w", ":bd<CR>")

-- resize splits
vim.keymap.set("n", "<silent><S-j>", ":resize -1<CR>")
vim.keymap.set("n", "<silent><S-h>", ":vertical resize +1<CR>")
vim.keymap.set("n", "<silent><S-l>", ":vertical resize -1<CR>")
vim.keymap.set("n", "<silent><S-k>", ":resize +1<CR>")
vim.keymap.set("n", "<silent><S-tab>", ":bp<CR>")

-- command mode
vim.keymap.set("n", "<space>", ":")

-- terminal mode
vim.keymap.set("t", "<leader>j", "<C-w>j")
vim.keymap.set("t", "<leader>k", "<C-w>k")
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

-- visual mode
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- copy to system
vim.opt.clipboard = "unnamedplus"
