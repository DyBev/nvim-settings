-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use('nvim-lua/plenary.nvim')
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
	}

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('nvim-treesitter/playground')
	use('theprimeagen/harpoon')
	use('mbbill/undotree')
	use('RRethy/vim-illuminate')
	use('kylechui/nvim-surround')
	use('folke/trouble.nvim')
	use('nvim-tree/nvim-tree.lua')
	use('kyazdani42/nvim-web-devicons')
	use('folke/which-key.nvim')
	use('akinsho/bufferline.nvim')
	use('norcalli/nvim-colorizer.lua')
	use('NeogitOrg/neogit')
	use('sindrets/diffview.nvim')
	use('lewis6991/gitsigns.nvim')

	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {

			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},

			-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	}
end)
