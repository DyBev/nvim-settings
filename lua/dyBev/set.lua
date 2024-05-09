
vim.cmd('let g:netrw_bufsettings = "noma nomod nu nowrap ro nobl"')

vim.cmd 'command W :w'

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

vim.opt.undodir = os.getenv("HOME") .. '/.vim/undodir'
vim.opt.undofile = true

vim.opt.backup = false
vim.opt.swapfile = false

vim.opt.scrolloff = 15
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 50

vim.opt.listchars = {
	eol = '$',
	tab = '|  ',
	trail = '.',
}

vim.opt.list = true

vim.g.mapleader = " "

vim.cmd("let g:gitblame_date_format = '%r'")
vim.cmd("set colorcolumn=80,113")
vim.cmd("set autoread")

vim.api.nvim_create_autocmd(
	{ "BufAdd", "BufRead", "BufEnter" },
	{ command = [[ if search('\%1l--.*$','w') > 0 | set syn=GT | endif ]] } 
)

vim.api.nvim_create_autocmd(
	{ "BufEnter" },
	{ command = [[ set colorcolumn=80,113 ]] } 
)


