
return {
	"VonHeikemen/lsp-zero.nvim",
	event = "VeryLazy",

	dependencies = {
		"plenary",
		-- LSP Support
		"neovim/nvim-lspconfig",
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",

		-- Autocompletion
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"saadparwaiz1/cmp_luasnip",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-nvim-lua",
		"lukas-reineke/cmp-rg",

		-- Snippets
		"L3MON4D3/LuaSnip",
		"rafamadriz/friendly-snippets",
	},

	config = function()
		local lsp_zero = require('lsp-zero')
		local lspconfig = require('lspconfig')

		local replace_termcodes = function(str)
			return vim.api.nvim_replace_termcodes(str, true, true, true)
		end

		local feedkey = function(key, mode)
			vim.api.nvim_feedkeys(replace_termcodes(key), mode, true)
		end

		lsp_zero.on_attach(function(client, bufnr)
			local opts = {buffer = bufnr, remap = false}

			vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
			vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
			vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
			vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
			vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
			vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
			vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
			vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
			vim.keymap.set("n", "<leader>lrn", function() vim.lsp.buf.rename() end, opts)
			vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
		end)

		require('mason').setup({})
		require('mason-lspconfig').setup({
			ensure_installed = {},
			handlers = {
				lsp_zero.default_setup,
				lua_ls = function()
					local lua_opts = lsp_zero.nvim_lua_ls()
					require('lspconfig').lua_ls.setup(lua_opts)
				end,
			}
		})

		local cmp = require('cmp')
		local luasnip = require('luasnip')
		local cmp_select = {behavior = cmp.SelectBehavior.Select}

		local has_words_before = function()
			unpack = unpack or table.unpack
			local line, col = unpack(vim.api.nvim_win_get_cursor(0))
			return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
		end

		cmp.setup({
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},
			sources = {
				{name = 'path'},
				{name = 'nvim_lsp'},
				{name = 'nvim_lua'},
				{name = 'luasnip', keyword_length = 2},
				{name = 'buffer', keyword_length = 5},
				{name = 'rg', keyword_length = 5},
			},

			formatting = lsp_zero.cmp_format(),
			mapping = cmp.mapping.preset.insert({
				['<C-o>'] = cmp.mapping.select_prev_item(cmp_select),
				['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
				["<Tab>"] = cmp.mapping(function(fallback)
					if cmp.visible() and vim.fn.mode() == 'i' then
						local entry = cmp.get_selected_entry()
						if not entry then
							cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
						end
						cmp.confirm()
					elseif vim.fn.getcmdtype() == "/" then
						cmp.complete()
					else
						fallback()
					end
				end, {"i","s","c",}),
				['<C-Space>'] = cmp.mapping.complete(),
			}),
		})

		cmp.setup.cmdline(':', {
			sources = cmp.config.sources({
			}, {
				{ name = 'cmdline' }
			})
		})

		local capabilities = vim.lsp.protocol.make_client_capabilities()
		capabilities.textDocument.completion.completionItem.snippetSupport = true

		lspconfig.emmet_ls.setup({
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
	end
}
