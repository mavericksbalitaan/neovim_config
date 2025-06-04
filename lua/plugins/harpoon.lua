return {
	"ThePrimeagen/harpoon",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local mark = require("harpoon.mark")
		local ui = require("harpoon.ui")

		vim.keymap.set("n", "<leader>a", mark.add_file, {
			desc = "Harpoon: Add file to marks",
		})

		vim.keymap.set("n", "<leader>h", ui.toggle_quick_menu, {
			desc = "Harpoon: Show marks menu",
		})

		for i = 1, 9 do
			vim.keymap.set("n", "<leader>" .. i, function()
				ui.nav_file(i)
			end, { desc = "Harpoon: Go to mark " .. i })
		end
	end,
}
