vim.g.mapleader = " "  -- Sets the leader key to Space

-- Exit to terminal normal mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { noremap = true })
vim.keymap.set("t", "<C-[>", "<C-\\><C-n>", { noremap = true })

-- PLUGINS
-- undotree
vim.keymap.set("n", "<C-z>", ":UndotreeToggle<CR>", {noremap = true})

-- telescope

-- maximize
vim.keymap.set("n", "<C-w>m", "<cmd>lua require('maximize').toggle()<CR>", {noremap = true})
