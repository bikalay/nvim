local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
-- vim.keymap.set(
--   "n",
--   "<leader>fg",
--   "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>",
--   { desc = "Live Grep" }
-- )
vim.keymap.set(
"n",
"<leader>fc",
'<cmd>lua require("telescope.builtin").live_grep({ glob_pattern = "!{spec,test}"})<CR>',
{ desc = "Live Grep Code" }
)
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", {noremap = true})
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find Buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Find Help Tags" })
vim.keymap.set("n", "<leader>fs", builtin.lsp_document_symbols, { desc = "Find Symbols" })
-- vim.keymap.set("n", "<leader>fi", "<cmd>AdvancedGitSearch<CR>", { desc = "AdvancedGitSearch" })
vim.keymap.set("n", "<leader>fo", builtin.oldfiles, { desc = "Find Old Files" })
vim.keymap.set("n", "<leader>fw", builtin.grep_string, { desc = "Find Word under Cursor" })
vim.keymap.set("n", "<leader>gc", builtin.git_commits, { desc = "Search Git Commits" })
vim.keymap.set("n", "<leader>gb", builtin.git_bcommits, { desc = "Search Git Commits for Buffer" })
vim.keymap.set("n", "<leader>fk", builtin.keymaps, { desc = "Find Keymaps" })
vim.keymap.set("n", "<leader>/", function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
    winblend = 10,
    previewer = false,
    layout_config = { width = 0.7 },
  }))
end, { desc = "[/] Fuzzily search in current buffer" })

require('telescope').setup({
  extensions = {
    fzf = {
      override_generic_sorter = false, -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
    }
  }
})
