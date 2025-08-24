local opt = vim.opt;

opt.foldmethod     = 'expr'
opt.foldexpr       = 'nvim_treesitter#foldexpr()'
opt.foldenable     = false
opt.foldlevel      = 99

-- Set the comment style for Dart files
vim.api.nvim_create_autocmd("FileType", {
  pattern = "go",
  callback = function()
    -- This tells vim-commentary how to comment your Dart code.
    vim.opt_local.commentstring = "// %s"
  end,
})

