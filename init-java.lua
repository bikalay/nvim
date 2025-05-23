require("java.plugins.init")
require("common.core.options")
require("java.core.options")
require("common.core.keymaps")
require("java.core.keymaps")
require("common.core.colorscheme")
require("common.plugins.undotree")
require("common.plugins.treesitter")({
  "java",
  "sql",
  "json",
  "csv",
})
require("common.plugins.lspconfig")({
  "jdtls",
  "sqls",
  "jsonls",
  "dockerls",
  "docker_compose_language_service",
  "gitlab_ci_ls",
  "gradle_ls"
})
require("common.plugins.autopairs")
require("common.plugins.telescope")
require("common.plugins.trouble")

