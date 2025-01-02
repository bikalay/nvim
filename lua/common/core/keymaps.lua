-- Exit to terminal normal mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { noremap = true })
vim.keymap.set("t", "<C-[>", "<C-\\><C-n>", { noremap = true })

-- PLUGINS

-- undotree
vim.keymap.set("n", "<C-z>", ":UndotreeToggle<CR>", {noremap = true})

-- telescope
vim.keymap.set("n", "<C-p>", "<cmd>Telescope find_files<CR>", {noremap = true})
vim.keymap.set("n", "<C-f>", "<cmd>Telescope live_grep<CR>", {noremap = true})

-- maximize
vim.keymap.set("n", "<C-w>m", "<Cmd>lua require('maximize').toggle()<CR>", {noremap = true})
