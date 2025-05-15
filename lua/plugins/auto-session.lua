return {
	"rmagatti/auto-session",
	config = function()
		require("auto-session").setup({
			pre_save_cmds = { "Neotree close" },
			post_restore_cmds = { "Neotree filesystem reveal left toggle" },
			bypass_save_filetypes = { "terminal" },
		})
		vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
		vim.keymap.set("n", "<leader>ls", require("auto-session.session-lens").search_session, {
			noremap = true,
		})
	end,
}
