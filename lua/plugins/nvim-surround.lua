-- https://github.com/kylechui/nvim-surround

return {
	"kylechui/nvim-surround",
	event = "VeryLazy",
	config = function()
		require("nvim-surround").setup({})
	end,
}
