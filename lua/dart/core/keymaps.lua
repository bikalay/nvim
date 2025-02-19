vim.keymap.set("n",
"<leader>;", ":w<CR>:!dart format %<CR>:edit<CR>",
{noremap = true, silent = true}
)

