vim.cmd('colorscheme tokyonight-storm')
vim.cmd('let g:netrw_bufsettings = "noma nomod nu nowrap ro nobl"')

vim.opt.nu = true
vim.opt.rnu = true

vim.opt.cursorline = true

vim.opt.tabstop = 8
vim.opt.softtabstop = 8
vim.opt.shiftwidth = 8

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
	tab = '|->',
	trail = '.',
}

vim.opt.list = true

vim.g.mapleader = " "

vim.cmd("let g:gitblame_date_format = '%r'")
vim.cmd("let g:statusline = '%{FugitiveStatusLine}' ")
