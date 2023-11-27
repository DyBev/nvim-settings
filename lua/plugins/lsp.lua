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
		['<Tab>'] = cmp.mapping(function(fallback)
			-- This little snippet will confirm with tab, and if no entry is selected, will confirm the first item
			if cmp.visible() then
				local entry = cmp.get_selected_entry()
				if not entry then
					cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
					cmp.confirm()
				else
					cmp.confirm()
				end
			else
				fallback()
			end
		end, {"i","s","c",}),
	}
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
	sources = {
		{ name = 'buffer' }
	}
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
	sources = cmp.config.sources({
		{ name = 'cmdline' }
	})
})

vim.keymap.set("n", "<leader>ds", function () vim.diagnostic.open_float() end)

lspconfig.emmet_language_server.setup({
	filetypes = { "css", "eruby", "html", "javascript", "javascriptreact", "less", "sass", "scss", "svelte", "pug", "typescriptreact", "vue" },
	init_options = {
		showSuggestionsAsSnippets = false,
		syntaxProfiles = {
			html = {
				attr_quotes = "single",
			},
		}
	}
})
