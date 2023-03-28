if vim.g.vscode then
	--VSCode
	print("hello VS Code")
else
	--Neovim
	require("dylan")
	print("hello")

	vim.opt.backup = false
	vim.opt.swapfile = false

	vim.api.nvim_create_autocmd({ "BufAdd", "BufRead", "BufEnter" } , { command = [[ if search('\%1l--.*$','w') > 0 | set syn=GT | endif ]] } )
end
