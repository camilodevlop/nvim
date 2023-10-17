
local status, bufferline = pcall(require, 'bufferline')
if (not status) then return end

bufferline.setup{

  options = {
    mode = tabs,
    separator_style = 'slant',
    always_show_bufferline = false,
    show_buffer_close_icons = false,
    show_close_icons = false,
    color_icons = true
  },

  -------------------------------------------------------------------

  highlights = {
    separator = {
      guifg = '#073642',  -- Solarized colors
      guibg = '#002b36',
    },

    separator_selected = {
      guifg = '#073642',  -- Solarized colors
    },

    background = {
      guifg = '#657b83',  -- Solarized colors
      guibg = '#002b36'
    },

    buffer_selected = {
      guifg = '#fdf6e3',  -- Solarized colors
      gui = 'bold'
    },

    fill = {
      guibg = '#073642'   -- Solarized colors
    }
  }

  -------------------------------------------------------------------
}

---------------------------------------------------------------------

vim.api.nvim_set_keymap('n', '<Tab>', '<cmd>BufferLineCycleNext<cr>', {})
vim.api.nvim_set_keymap('n', '<S-Tab>', '<cmd>BufferLineCyclePrev<cr>', {})

---------------------------------------------------------------------
