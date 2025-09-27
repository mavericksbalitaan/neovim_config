-- https://github.com/nvim-lualine/lualine.nvim

return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "dracula",
			},
			sections = {
				lualine_x = {
					{
						color = { fg = "#ff9e64" },
					},
				},
			},
		})
	end,
}
