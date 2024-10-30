-- COLORS
local colorscheme = "tokyonight"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end

-- select one of these
-- require('monokai').setup {}
-- require('monokai').setup { palette = require('monokai').pro }
-- require('monokai').setup { palette = require('monokai').soda }
-- require('monokai').setup { palette = require('monokai').ristretto }
