return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",

	config = function ()
		local parser_config = require "nvim-treesitter.parsers".get_parser_configs()

		parser_config.GuidedTrack = {
			install_info = {
				url = "~/Documents/01-work/03-GTHighlighter/guidedtrack-syntax-highlighting-plugins/grammars/tree-sitter-GuidedTrack/",
				files = {"src/parser.c"}
			},
		}

		require'nvim-treesitter.configs'.setup {
			ensure_installed = { "c", "lua", "vim", "vimdoc" },
			sync_install = false,
			auto_install = true,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = {"markdown"},
			},
		}

		local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
		ts_update()
	end
}
