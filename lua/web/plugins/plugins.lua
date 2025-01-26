local plugins = {
  {
    'mattn/emmet-vim',
    event = "BufRead",
  },
  {
    'alvan/vim-closetag',
    event = "BufRead",
  },
  {
    'ap/vim-css-color',
    event = "BufRead",
  },
  {
    'heavenshell/vim-jsdoc',
    run = 'make install',
    event = "BufRead",
  },
  {
    'prettier/vim-prettier',
    run = 'yarn install --frozen-lockfile --production',
    event = "BufRead",
  },
}

return plugins
