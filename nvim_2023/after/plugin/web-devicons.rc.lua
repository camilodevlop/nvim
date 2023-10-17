
local status, icons = pcall(require, 'nvim-wev-devicons')
if (not status) then return end

icons.setup{
  override = {},
  default = true,
}

---------------------------------------------------------------------
