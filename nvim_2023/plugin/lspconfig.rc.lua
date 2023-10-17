local status, nvim_lsp = pcall(require, 'lspconfig')

if (not status) then return end

local protocol = require('vim.lsp.protocol')

local on_attach = function(client, bufnr)

  -- Formatting
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_command[[augroup Format]]
    vim.api.nvim_command[[autocmd! <buffer>]]
    vim.api.nvim_command[[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
    vim.api.nvim_command[[augroup END]]
  end
end

---------------------------------------------------------------------

-- Language server for Swift and C/C++/Objective C

nvim_lsp.sourcekit.setup{
  on_attach = on_attach,
  filetypes = {"swift", "c", "cpp", "objective-c", "objective-cpp"},
  cmd = { "/Library/Developer/CommandLineTools/usr/bin/sourcekit-lsp" },
  single_file_support = { "false" },
  root_dir = nvim_lsp.util.root_pattern('Package.swift', '.git')
}

---------------------------------------------------------------------

-- Language server for Python

nvim_lsp.jedi_language_server.setup{
  on_attach = on_attach,
  filetypes = {"python"},
  cmd = { "jedi-language-server" },
  single_file_support = { "true" }
}

---------------------------------------------------------------------

-- Language server for lua

nvim_lsp.lua_ls.setup{
  on_attach = on_attach,
  filetypes = {"lua"},
  cmd = { "lua-language-server" },
  log_level = { 2 },
  single_file_support = { "true" }
}

---------------------------------------------------------------------
