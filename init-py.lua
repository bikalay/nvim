require("py.plugins.init")
require("common.core.options")
require("py.core.options")
require("common.core.keymaps")
require("py.core.keymaps")
require("common.core.colorscheme")
require("common.plugins.undotree")
require("common.plugins.treesitter")({
  "python",
  "json",
  "csv",
  "dockerfile",
})
require("common.plugins.lspconfig")({
  "yamlls",
  "pyright",
  "jsonls",
  "dockerls",
  "docker_compose_language_service",
  "gitlab_ci_ls",
})
require("common.plugins.telescope")
require("common.plugins.trouble")
require("common.plugins.autopairs")

