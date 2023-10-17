
-- Packages management

local status, packer = pcall(require, 'packer')

if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd[[packadd packer.nvim]]

---------------------------------------------------------------------

packer.startup(function(use)

  -------------------------------------------------------------------

  -- Packer
  use 'wbthomason/packer.nvim'

  -------------------------------------------------------------------

  -- Colorschemes

  --use("rebelot/kanagawa.nvim")

  --use {
  --  'svrana/neosolarized.nvim',
  --  requires = { 'tjdevries/colorbuddy.nvim' }
  --}

  --use('sainnhe/everforest')

  --use('EdenEast/nightfox.nvim')

  use('morhetz/gruvbox')

  -------------------------------------------------------------------

  -- File icons
  use('kyazdani42/nvim-web-devicons')

  -------------------------------------------------------------------

  -- LSP UIs
  use('kkharji/lspsaga.nvim')

  -------------------------------------------------------------------

  -- Statusline: lualine
  use('hoob3rt/lualine.nvim')

  -------------------------------------------------------------------

  -- VScode-like pictograms and completion
  use('onsails/lspkind-nvim') -- VScode-like pictograms
  use('hrsh7th/cmp-buffer')   -- nvim-cmp source for buffer words
  use('hrsh7th/cmp-nvim-lsp') -- nvim-cmp source for neovim's built-in LSP
  use('hrsh7th/nvim-cmp') -- Completion
  use('L3MON4D3/LuaSnip') -- Snippets: Luasnip

  -------------------------------------------------------------------

  -- Tree-sitter
  use{
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -------------------------------------------------------------------

  -- Autopair and autotag
  use('windwp/nvim-autopairs')
  use('windwp/nvim-ts-autotag')

  -------------------------------------------------------------------

  -- Telescope browser
  use('nvim-lua/plenary.nvim')  -- Common utilities
  use('nvim-telescope/telescope.nvim')
  use('nvim-telescope/telescope-file-browser.nvim')

  -------------------------------------------------------------------

  -- Tabs: Bufferline
  -- use('akinsho/nvim-bufferline.lua')

  -------------------------------------------------------------------

  -- 
  use('norcalli/nvim-colorizer.lua')

  -------------------------------------------------------------------

  -- Git decorations
  use('lewis6991/gitsigns.nvim')

  -------------------------------------------------------------------

  -- Git: blame & browse
  use('dinhhuy258/git.nvim')

  -------------------------------------------------------------------

  -- LSP
  use('neovim/nvim-lspconfig')

  -------------------------------------------------------------------

  -- Terminal
  use({
      "akinsho/toggleterm.nvim",
      tag = "*",
      config = function()
          require("configs.toggleterm")
      end,
  })

  -------------------------------------------------------------------

end)

---------------------------------------------------------------------
