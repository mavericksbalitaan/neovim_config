return {
	"LudoPinelli/comment-box.nvim",
	config = function()
		vim.keymap.set({ "n", "v" }, "<leader>cb", ":CBccbox<CR>")
		vim.keymap.set({ "n", "v" }, "<leader>cl", ":CBccline<CR>")
	end,
}
