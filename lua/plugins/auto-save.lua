-- https://github.com/okuuva/auto-save.nvim

return {
	"okuuva/auto-save.nvim",
	version = "*",
	cmd = "ASToggle",
	event = { "InsertLeave", "TextChanged" },
	opts = {},
}
