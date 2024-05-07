return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = true,
	opts = {
		open_mapping = "<leader>=",
		direction = "float",
		auto_scroll = true, -- automatically scroll to the bottom on terminal output
		vim.keymap.set("n", "<leader>lt", ":TermSelect<CR>"),
		vim.keymap.set("n", "<leader>fp", ":2TermExec cmd='prettier % --write' <CR>")
	},
}
