-- [[ LSP nativo ]]

-- Configuración global
vim.lsp.config('*', {
  root_markers = { '.git' },
})

-- Python
vim.lsp.config('pyright', {
  cmd = { 'pyright-langserver', '--stdio' },
  filetypes = { 'python' },
  root_markers = { 'pyproject.toml', 'setup.py', '.git' },
})

-- C / C++
vim.lsp.config('clangd', {
  cmd = { 'clangd', '--background-index', '--clang-tidy' },
  filetypes = { 'c', 'cpp' },
  root_markers = { 'compile_commands.json', '.clangd', '.git' },
})

-- Arduino
vim.lsp.config('arduino_language_server', {
  cmd = { 'arduino-language-server' },
  filetypes = { 'arduino' },
  root_markers = { 'sketch.yaml', '.git' },
})

-- Lua
vim.lsp.config('lua_ls', {
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
  root_markers = { '.luarc.json', '.git' },
  settings = {
    Lua = {
      runtime = { version = 'LuaJIT' },
      workspace = { checkThirdParty = false },
    },
  },
})

-- Typst
vim.lsp.config('tinymist', {
  cmd = { 'tinymist' },
  filetypes = { 'typst' },
  root_markers = { '.git' },
})

-- LaTeX
vim.lsp.config('texlab', {
  cmd = { 'texlab' },
  filetypes = { 'tex', 'latex' },
  root_markers = { '.git', '.latexmkrc' },
})

-- Activar servidores (Neovim los inicia automáticamente según filetype)
vim.lsp.enable({
  'pyright',
  'clangd',
  'arduino_language_server',
  'lua_ls',
  'tinymist',
  'texlab',
})
