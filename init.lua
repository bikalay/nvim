require("common.plugins.init")
require("common.core.options")
require("common.core.keymaps")
require("common.core.colorscheme")
require("common.plugins.treesitter")({
	"gitignore",
	"json",
	"markdown",
	"yaml",
	"xml",
	"csv",
	"dockerfile",
	"editorconfig",
	"nginx",
	"tmux",
	"vim",
	"lua",
  "bash",
})
require("common.plugins.telescope")
require("common.plugins.undotree")
require("common.plugins.trouble")
require("common.plugins.autopairs")
require("common.plugins.lspconfig")({
	"yamlls",
	"jsonls",
	"lua_ls",
	"dockerls",
	"docker_compose_language_service",
	"gitlab_ci_ls",
})


vim.keymap.set("n", "<leader>;", ":Autoformat<CR>", {noremap = true})
