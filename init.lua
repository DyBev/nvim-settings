if vim.g.vscode then
	--VSCode
else
	--Neovim
	require("dyBev")
	require("plugins")

	vim.opt.backup = false
	vim.opt.swapfile = false

	vim.api.nvim_create_autocmd({ "BufAdd", "BufRead", "BufEnter" } , { command = [[ if search('\%1l--.*$','w') > 0 | set syn=GT | endif ]] } )
	vim.api.nvim_create_autocmd({ "BufEnter" } , { command = [[ set colorcolumn=80,113 ]] } )
end
