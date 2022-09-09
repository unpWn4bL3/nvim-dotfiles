-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- nvim-builtin lsp
	use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
	-- nvim-builtin lsp code formatting
	use 'lukas-reineke/lsp-format.nvim'
	--
	use {
		'glepnir/lspsaga.nvim',
		branch = 'main'
	}

	-- symbols-outline.nvim symbols tree
	use 'simrat39/symbols-outline.nvim'

	-- nvim-treesitter for highlighting
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

	-- telescope, for fzf integration
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}

	-- file tree
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons', -- optional, for file icons
		},
		tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}
	-- startup
	use {
		'goolord/alpha-nvim',
		config = function()
			require('alpha').setup(require('alpha.themes.dashboard').config)
		end
	}
	-- buffer line
	use { 'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons' }
	-- Lualine
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
end)
