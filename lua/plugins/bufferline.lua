-- https://github.com/akinsho/bufferline.nvim

return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		vim.opt.termguicolors = true
		require("bufferline").setup({
			options = {
				numbers = "ordinal",
			},
		})
	end,
}
