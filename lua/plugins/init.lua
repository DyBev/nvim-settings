return {
	"AlexvZyl/nordic.nvim",
	priority = 1000,
	lazy = false,
	config = function()
		vim.o.termguicolors=true
		vim.cmd([[colorscheme nordic]])
	end,
}
