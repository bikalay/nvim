local lazy = require("common/plugins/lazy-install")
-- local common = require("common/plugins/plugins")
local avante = require("avante/plugins/plugins")

local all_plugins = {}

-- vim.list_extend(all_plugins, common)
vim.list_extend(all_plugins, avante)

lazy.setup(all_plugins);
