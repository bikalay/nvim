local opt = vim.opt;

opt.foldmethod     = 'expr'
opt.foldexpr       = 'nvim_treesitter#foldexpr()'
opt.foldenable     = false
opt.foldlevel      = 99
