local lazy = require("common/plugins/lazy-install")
local common = require("common/plugins/plugins")
local autoformat = require("common/plugins/autoformat")

local all_plugins = {}

vim.list_extend(all_plugins, common)
vim.list_extend(all_plugins, autoformat)

lazy.setup(all_plugins);
