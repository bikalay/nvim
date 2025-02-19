local lazy = require("common/plugins/lazy-install")
local common = require("common/plugins/plugins")
local go = require("go/plugins/plugins")

local all_plugins = {}

vim.list_extend(all_plugins, common)
vim.list_extend(all_plugins, go)

lazy.setup(all_plugins);
