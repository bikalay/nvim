local plugins =  {
	-- Theme
	{
		"ellisonleao/gruvbox.nvim",
		event = "VimEnter",
	},
	-- Synax Highlighting
	{
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
		event = "BufRead",
	},
	-- Editorconfig
	{
		"editorconfig/editorconfig-vim",
		event = "BufRead",
	},
	-- Undo Tree
	{
		"mbbill/undotree",
		event = "BufRead",
	},
	-- Autopairs
	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
		event = "BufRead",
	},
	-- Comments
	{
		"tpope/vim-commentary",
		event = "BufRead",
	},
	-- Vim Surround
	{
		"tpope/vim-surround",
		event = "BufRead",
	},
	-- Vim Plenary
	{
		"nvim-lua/plenary.nvim",
		event = "BufRead",
	},
	-- Telescope
	{
		"nvim-telescope/telescope.nvim",
		event = "VimEnter",
	},
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		run = "make",
		event = "VimEnter",
	},
	-- Maximize
	{
		'declancm/maximize.nvim',
		config = function()
			require('maximize').setup()
		end,
		event = "VimEnter",
	},
	-- copilot
	{
		"github/copilot.vim",
		event = "BufRead",
	},
	--mason
	{
		'williamboman/mason.nvim',
		event = "VimEnter",
	},
	--lspconfig
	{
		'williamboman/mason-lspconfig.nvim',
		event = "BufRead",
	},
	{
		'neovim/nvim-lspconfig',
		event = "BufRead",
	},
	{
		'hrsh7th/cmp-nvim-lsp',
		event = "BufRead",
	},
	{
		'hrsh7th/cmp-buffer',
		event = "BufRead",
	},
	{
		'hrsh7th/cmp-path',
		event = "BufRead",
	},
	{
		'hrsh7th/cmp-cmdline',
		event = "BufRead",
	},
	{
		'quangnguyen30192/cmp-nvim-tags',
		event = "BufRead",
	},
	{
		'delphinus/cmp-ctags',
		event = "BufRead",
	},
	{
		'hrsh7th/nvim-cmp',
		event = "BufRead",
	},
	{
		'saadparwaiz1/cmp_luasnip',
		event = "BufRead",
	},
	{
		'L3MON4D3/LuaSnip',
		event = "BufRead",
	},
	{
		"nvim-tree/nvim-web-devicons",
		event = "VimEnter",
	},
	{
		"folke/trouble.nvim",
		cmd = "Trouble",
		config = function()
			require("trouble").setup({})
		end,
		event = "BufRead",
	},
	{
		"vim-autoformat/vim-autoformat",
		event = "BufRead",
	},
	{
		"backdround/global-note.nvim",
		event = "VimEnter",
	}

}

return plugins
