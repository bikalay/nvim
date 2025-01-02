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
      "ellisonleao/gruvbox.nvim",
      event = "VimEnter",
    },
    {
      "nvim-treesitter/nvim-treesitter",
      run = ":TSUpdate",
      event = "BufRead",
    },
    {
      "editorconfig/editorconfig-vim",
      event = "BufRead",
    },
    {
      "mbbill/undotree",
      event = "BufRead",
    },
    {
      "windwp/nvim-autopairs",
      config = function()
        require("nvim-autopairs").setup({})
      end,
      event = "BufRead",
    },
    {
      "tpope/vim-commentary",
      event = "BufRead",
    },
    {
      "tpope/vim-surround",
      event = "BufRead",
    },
    {
      "nvim-lua/plenary.nvim",
      event = "BufRead",
    },
    {
      "nvim-telescope/telescope.nvim",
      event = "VimEnter",
    },
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      run = "make",
      event = "VimEnter",
    },
    {
      'declancm/maximize.nvim',
      config = function()
        require('maximize').setup()
      end,
      event = "VimEnter",
    },
    {
      "tpope/vim-obsession",
      event = "BufRead",
    },
    {
      "github/copilot.vim",
      event = "BufRead",
    },
})
