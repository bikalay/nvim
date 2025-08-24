local lazy = require("common/plugins/lazy-install")
local common = require("common/plugins/plugins")
local rust = require("rust/plugins/plugins")

local all_plugins = {}

vim.list_extend(all_plugins, common)
vim.list_extend(all_plugins, rust)

lazy.setup(all_plugins);
