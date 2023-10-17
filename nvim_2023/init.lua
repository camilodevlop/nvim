
-- Lua files.

require('base')
require('highlights')
require('maps')
require('plugins')

---------------------------------------------------------------------

-- Colorschemes

-- Vim colorschemes: default, desert, darkblue, among others.
-- vim.cmd("colorscheme desert")

-- colorscheme config: kanagawa
--local themeStatus, kanagawa = pcall(require, "kanagawa")
--if themeStatus then
--    vim.cmd("colorscheme kanagawa")
--else
--    return
--end


-- colorscheme config: everforest
--vim.cmd("colorscheme everforest")

-- colorscheme config: nightfox
--vim.cmd("colorscheme nordfox")  -- duskfox, nightfox, nordfox, terafox, carbonfox.

-- colorscheme config: gruvbox
vim.cmd("colorscheme gruvbox")  -- duskfox, nightfox, nordfox, terafox, carbonfox.

---------------------------------------------------------------------

-- Synchronizing Vim and the system clipboard.
local has = function(x)
  return vim.fn.has(x) == 1
end

local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
 require('macos')
end

if is_win then
  require('windows')
end

---------------------------------------------------------------------
