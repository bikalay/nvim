local lazy = require("common/plugins/lazy-install")
local common = require("common/plugins/plugins")
local py = require("py/plugins/plugins")

local all_plugins = {}

vim.list_extend(all_plugins, common)
vim.list_extend(all_plugins, py)

lazy.setup(all_plugins);
