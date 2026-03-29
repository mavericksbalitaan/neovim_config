-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.mapleader = "\\"

-- customize vim settings
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set signcolumn")
vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set cursorline")

vim.keymap.set("n", "<leader>-", ":Neotree filesystem toggle<CR>", { silent = true })
vim.keymap.set("n", "<space>", ":")
vim.keymap.set("n", "<leader>sw", ":wincmd r<CR>")
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<leader>rf", ":%bd | e#<CR>")
vim.keymap.set("n", "<leader>s", ":e ~/.config/nvim<CR>")
vim.keymap.set("n", "<leader>r", ":e ~/repos<CR>")

vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#fe8019", bold = true })

-- buffer navigation
vim.keymap.set("n", "<leader><Tab>", ":bn<CR>")
vim.keymap.set("n", "<leader><S-Tab>", ":bp<CR>")

-- highlight text on yank
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

require("lazy").setup("plugins")
require("lsp")
