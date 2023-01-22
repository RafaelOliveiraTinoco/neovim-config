-- Call plugins with the Plugin Manger "Packer"
require('packer').startup(function(use)
	-- Plugins List
	use 'wbthomason/packer.nvim' -- Packer (Neovim Plugin Manager)
	use "EdenEast/nightfox.nvim" -- NightFox (ColorScheme)
	use ("nvim-treesitter/nvim-treesitter", {run = ":TSUpdate"}) -- Treesitter (Better syntax highlight)
	use {
		"williamboman/mason.nvim", -- mason.nvim (Easily manage external editor tools. Ex: LSP)
		"williamboman/mason-lspconfig.nvim", -- mason.nvim (Easily manage external editor tools. Ex: LSP)
		'neovim/nvim-lspconfig' -- LSP (Language Server Protocol)
	}
	use {
		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/cmp-buffer',
		'hrsh7th/cmp-path',
		'hrsh7th/cmp-cmdline',
		'hrsh7th/nvim-cmp'
	} -- nvim-cmp (auto complete)

end)

-- Configure plugins
require("RafaelOliveiraTinoco.plugins.pluginsConfiguration.treesitter")
require("RafaelOliveiraTinoco.plugins.pluginsConfiguration.mason")
require("RafaelOliveiraTinoco.plugins.pluginsConfiguration.cmp")
