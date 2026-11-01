-- [[ Opciones básicas ]]
vim.o.number = true
vim.o.relativenumber = true
vim.o.termguicolors = true
vim.o.mouse = "a"
vim.o.showmode = true
vim.o.scrolloff = 8
vim.o.wrap = true

vim.opt.tabstop = 3
vim.opt.shiftwidth = 3
vim.opt.expandtab = true

vim.o.ignorecase = true
vim.o.smartcase = true

vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.o.clipboard = "unnamedplus"
vim.o.breakindent = true
vim.o.undofile = true
vim.o.signcolumn = "yes"
vim.opt.colorcolumn = "80"
vim.o.updatetime = 250
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.list = true
vim.o.inccommand = "split"
vim.o.cursorline = true
vim.o.confirm = true

-- [[ Autocomandos básicos ]]
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Resaltar al copiar texto",
  group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
  callback = function() vim.hl.on_yank() end,
})

-- [[ Diagnósticos ]]
vim.diagnostic.config({
  update_in_insert = false,
  severity_sort = true,
  float = { source = "if_many" },
  underline = { severity = { min = vim.diagnostic.severity.WARN } },
  virtual_text = true,
  jump = {
    on_jump = function(_, bufnr)
      vim.diagnostic.open_float({ bufnr = bufnr, scope = "cursor", focus = false })
    end,
  },
})

-- [[ Cargar módulos ]]
require("plugins")
require("lsp")
require("keymaps")
