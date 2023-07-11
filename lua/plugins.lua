vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'nvim-lualine/lualine.nvim' -- Statusline

	use {
		'nvim-treesitter/nvim-treesitter',
		run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
	}
	use 'akinsho/nvim-bufferline.lua'

	use 'neovim/nvim-lspconfig' -- LSP
	use 'hrsh7th/nvim-cmp' -- Completion
	use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP

	use 'onsails/lspkind-nvim' -- vscode-like pictograms


	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'

	use 'windwp/nvim-autopairs'
	use 'nvim-telescope/telescope.nvim'
	use 'nvim-telescope/telescope-file-browser.nvim'
	use 'nvim-lua/plenary.nvim' -- Common utilities
end)
