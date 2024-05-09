return {
		"nordtheme/vim",
		priority = 1000,
		lazy = false,
		config = function()
			vim.o.termguicolors=true
			vim.cmd([[colorscheme nord]])
		end,
}
