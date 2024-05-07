return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = { "lua", "javascript", "html", "css", "json", "graphql", "python" },
			highlight = {
				enable = true,
			},
			indent = {
				enable = true,
			},
		})

		local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
		parser_config.liquid = {
			install_info = {
				url = "~/tree-sitter-liquid", -- local path or git repo
				files = { "src/parser.c" }, -- note that some parsers also require src/scanner.c or src/scanner.cc
				-- optional entries:
				branch = "main", -- default branch in case of git repo if different from master
				generate_requires_npm = false, -- if stand-alone parser without npm dependencies
				requires_generate_from_grammar = false, -- if folder contains pre-generated src/parser.c
			},
			filetype = "liquid", -- if filetype does not match the parser name
		}
	end,
}
