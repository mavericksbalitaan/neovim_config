-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			window = {
				mappings = {
					["P"] = { "toggle_preview", config = { use_float = true, use_image_nvim = true } },
					["l"] = "focus_preview",
					["<C-b>"] = { "scroll_preview", config = { direction = 10 } },
					["<C-f>"] = { "scroll_preview", config = { direction = -10 } },
				},
			},
		})

		vim.keymap.set("n", "<leader>-", ":Neotree filesystem reveal left toggle<CR>")
	end,
}
