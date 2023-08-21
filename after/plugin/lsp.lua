local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.setup()
vim.diagnostic.config({
	virtual_text = true,
})

vim.keymap.set("n", "<leader>ds", function () vim.diagnostic.open_float() end)
