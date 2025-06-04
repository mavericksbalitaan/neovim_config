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
vim.keymap.set("n", "<leader><s-tab>", ":bp<CR>")
vim.keymap.set("n", "<leader>q", ":qa!<CR>")
vim.keymap.set("n", "<leader>w", ":bd<CR>")

-- resize splits
vim.keymap.set("n", "<C-h>", ":vertical resize -1<CR>")
vim.keymap.set("n", "<C-j>", ":resize -1<CR>")
vim.keymap.set("n", "<C-l>", ":vertical resize +1<CR>")
vim.keymap.set("n", "<C-k>", ":resize +1<CR>")

-- command mode
vim.keymap.set("n", "<space>", ":")

-- terminal mode
vim.keymap.set("t", "<leader>j", "<C-w>j")
vim.keymap.set("t", "<leader>k", "<C-w>k")
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

-- visual mode
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv", { desc = "Move highlighted line down" })
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv", { desc = "Move highlighted line up" })

-- copy to system
vim.opt.clipboard = "unnamedplus"

-- highlight when yanking (copying) text
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- opening a new terminal
vim.api.nvim_create_autocmd("TermOpen", {
  callback = function()
    vim.opt.number = false
    vim.opt.relativenumber = false
  end,
})

-- opening a sh file
vim.api.nvim_create_autocmd("FileType", {
  pattern = "sh",
  callback = function()
    vim.lsp.start({
      name = "bash-language-server",
      cmd = { "bash-language-server", "start" },
    })
  end,
})
