require('kanagawa').setup({
	undercurl = true,           -- enable undercurls
	commentStyle = { italic = true },
	functionStyle = {},
	keywordStyle = { italic = true},
	statementStyle = { bold = true },
	typeStyle = {},
	variablebuiltinStyle = { italic = true},
	specialReturn = true,       -- special highlight for the return keyword
	specialException = true,    -- special highlight for exception handling keywords
	transparent = false,        -- do not set background color
	dimInactive = false,        -- dim inactive window `:h hl-NormalNC`
	globalStatus = false,       -- adjust window separators highlight for laststatus=3
	terminalColors = true,      -- define vim.g.terminal_color_{0,17}
	colors = {},
	overrides = {},
	theme = "default"           -- Load "default" theme or the experimental "light" theme
})
vim.cmd('colorscheme kanagawa')
vim.cmd('let g:netrw_bufsettings = "noma nomod nu nowrap ro nobl"')

vim.opt.nu = true
vim.opt.rnu = true

vim.opt.cursorline = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.opt.smartindent = true
vim.opt.wrap = true

vim.opt.backup = false
vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.undodir = os.getenv("HOME") .. '/.vim/undodir'
vim.opt.undofile = true

vim.opt.scrolloff = 15
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 50

vim.opt.listchars = {
	eol = '$',
	tab = '-->',
	trail = '.',
}

vim.opt.list = true

vim.g.mapleader = " "
