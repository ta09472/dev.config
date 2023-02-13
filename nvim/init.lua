require('bs.base')
require('bs.highlights')
require('bs.maps')
require('bs.plugins')

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"

vim.api.nvim_exec('language en_US', true) -- deafult language set to english

if is_mac then
  require('bs.macos')
end
if is_win then
  require('bs.windows')
end
