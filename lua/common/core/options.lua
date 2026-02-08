local opt = vim.opt;
-- local g = vim.g;
local o = vim.o;

o.termguicolors = true
-- line numbers
opt.relativenumber = true
opt.number = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- appearance
opt.signcolumn = "yes"
opt.colorcolumn = "80"
opt.background = "dark"
opt.cursorline = true

opt.guicursor = table.concat({
  "n-v-c-sm:block",
  "i-ci-ve:ver25",
  "r-cr-o:hor20",
  "t:ver25",          -- bar in terminal-job mode
}, ",")

-- spell check
opt.spell = true
opt.spelloptions = "camel"

-- clipboard
opt.clipboard:append("unnamedplus")

--do not split by '-'
opt.iskeyword:append("-")

-- Netrw
vim.cmd [[
let g:netrw_banner    = 0
let g:netrw_liststyle = 3
let g:netrw_winsize   = 50
let g:netrw_preview   = 1
let g:netrw_altv      = 1
]]


