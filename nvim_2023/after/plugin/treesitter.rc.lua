
local status, ts = pcall(require, 'nvim-treesitter.configs')
if (not status) then return end

ts.setup{

  higlight = {
    enable = true,
    disable = {},
  },
  
  indent = {
    enable = true,
    disable = {},
  },

  ensure_installed = {
    'tsx',
    'lua',
    'json',
    'css',
    'bash',
    'c',
    'cmake',
    'cpp',
    'git_config',
    'git_rebase',
    'gitattributes',
    'gitcommit',
    'gitignore',
    'latex',
    'python',
    'sql',
  },

  autotag = {
    enable = true,
  },
}

---------------------------------------------------------------------
