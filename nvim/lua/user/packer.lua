-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use ({
		'rebelot/kanagawa.nvim',
		as = 'kanagawa',
		config = function()
			vim.cmd('colorscheme kanagawa')
		end
	})
	use("nvim-treesitter/nvim-treesitter", {run = ':TSUpdate'})
	use('nvim-treesitter/playground')
    use('windwp/nvim-ts-autotag')
	use('ThePrimeagen/harpoon')
	use('mbbill/undotree')
	use('tpope/vim-fugitive')
    use('neovim/nvim-lspconfig')
    use('jose-elias-alvarez/null-ls.nvim')
    use('MunifTanjim/prettier.nvim')
    use('onsails/lspkind-nvim')
	use {
	'VonHeikemen/lsp-zero.nvim',
	branch = 'v2.x',
	requires = {
		-- LSP Support
		{'neovim/nvim-lspconfig'},             -- Required
		{                                      -- Optional
		'williamboman/mason.nvim',
		run = function()
			pcall(vim.cmd, 'MasonUpdate')
		end,
	},
	{'williamboman/mason-lspconfig.nvim'}, -- Optional

	-- Autocompletion
	{'hrsh7th/nvim-cmp'},     -- Required
	{'hrsh7th/cmp-nvim-lsp'}, -- Required
	{'L3MON4D3/LuaSnip'},     -- Required
	use('voldikss/vim-floaterm'),
	use {"akinsho/toggleterm.nvim", tag = '*', config = function()
		require("toggleterm").setup()
	end},
	use('nvim-tree/nvim-tree.lua'),
	use('nvim-tree/nvim-web-devicons'),
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	},
    use("folke/zen-mode.nvim"),
    use("github/copilot.vim"),
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
}
}
end)
