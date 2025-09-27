-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md

-- Enable the LSP server
vim.lsp.enable({
	"cssls",
	"lua_ls",
	"sqlls",
	"tailwindcss",
	"ts_ls",
})

-- Setup an LspAttach autocommand to enable features based on client capabilities
-- A single autocommand can work for multiple LSP servers!
vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(ev)
		local client = vim.lsp.get_client_by_id(ev.data.client_id)
		if client:supports_method("textDocument/completion") then
			vim.opt.completeopt = { "menu", "menuone", "noinsert", "fuzzy", "popup" }
			vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
			vim.keymap.set("i", "<C-Space>", function()
				vim.lsp.completion.get()
			end)
		end
	end,
})

-- Diagnostic
vim.diagnostic.config({
	virtual_lines = { current_line = true },
})
