local lsp = require('lsp-zero')
local cmp = require('cmp')
-- local cmp_action = require('lsp-zero').cmp_action()
local lspconfig = require('lspconfig')
-- local configs = require('lspconfig/configs')
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lsp.preset('recommended')
lsp.setup()

vim.diagnostic.config({
	virtual_text = true,
})

cmp.setup({
	mapping = {
		['<Tab>'] = cmp.mapping.confirm({select = false})
	}
})

vim.keymap.set("n", "<leader>ds", function () vim.diagnostic.open_float() end)

lspconfig.emmet_ls.setup({
    -- on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { "css", "eruby", "html", "javascript", "javascriptreact", "less", "sass", "scss", "svelte", "pug", "typescriptreact", "vue" },
    init_options = {
      html = {
        options = {
          -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
          ["bem.enabled"] = true,
        },
      },
    }
})
