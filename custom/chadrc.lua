---@type ChadrcConfig
local M = {}

M.ui = { theme = 'ayu_dark' }
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"
vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")

return M
