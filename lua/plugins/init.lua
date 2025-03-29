return {{
	"AlexvZyl/nordic.nvim",
	priority = 1000,
	lazy = false,
	config = function()
		vim.o.termguicolors=true
		require('nordic').load()
		vim.cmd("hi Visual guifg=#2E3440 guibg=#BBC3D4 gui=none")
	end,
},{
	"yorickpeterse/vim-paper",
	priority = 1000,
	lazy = false,
	config = function()
--		vim.o.termguicolors=true
--		vim.cmd([[colorscheme paper]])
	end,
},{
	"yorik1984/newpaper.nvim",
	priority = 1000,
	lazy = false,
	config = function()
--		vim.o.termguicolors=true
--		vim.cmd([[colorscheme newpaper]])
	end,
}
}
