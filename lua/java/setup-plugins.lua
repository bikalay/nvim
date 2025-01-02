local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
  {
    'ellisonleao/gruvbox.nvim',
    event = "VimEnter",
  },
  {
    'nvim-treesitter/nvim-treesitter',
    run = ":TSUpdate",
    event = "BufRead",
  },
  {
    'editorconfig/editorconfig-vim',
    event = "BufRead",
  },
  {
    'mbbill/undotree',
    event = "BufRead",
  },
  {
    'windwp/nvim-autopairs',
    config = function()
      require("nvim-autopairs").setup({})
    end,
    event = "BufRead",
  },
  {
    'tpope/vim-commentary',
    event = "BufRead",
  },
  {
    'tpope/vim-surround',
    event = "BufRead",
  },
  {
    'nvim-lua/plenary.nvim',
    event = "BufRead",
  },
  {
    'nvim-telescope/telescope.nvim',
    event = "VimEnter",
  },
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = "make",
    event = "VimEnter",
  },
  {
    'declancm/maximize.nvim',
    event = "VimEnter",
  },
  {
    'williamboman/mason.nvim',
    event = "VimEnter",
  },
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
    'tpope/vim-obsession',
    event = "BufRead",
  },
  {
    'github/copilot.vim',
    event = "BufRead",
  },
  {
    "andythigpen/nvim-coverage",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("coverage")
    end,
    event = "BufRead",
  },
  {
    "nvim-tree/nvim-web-devicons",
  },
  {
    "folke/trouble.nvim",
    cmd = "Trouble",
    config = function()
      require("trouble").setup({})
    end,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
  },
  {
    "jamestthompson3/nvim-remote-containers",
  }
})
