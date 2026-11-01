-- [[ Keymaps ]]
local map = vim.keymap.set

map("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlight" })
map("n", "<leader>e", "<cmd>Ex<CR>", { desc = "File explorer" })
map("n", "<leader>d", "<cmd>Alpha<CR>", { desc = "File explorer" })

-- [[ VENTANAS (nativo de Neovim) ]]
-- Navegación entre splits:
--   Ctrl-h/j/k/l = moverse a izquierda/abajo/arriba/derecha
--   Ctrl-w + h/j/k/l = mismo efecto (forma nativa clásica)
--
-- Mover ventanas:
--   Ctrl-w + H/J/K/L = mover ventana al extremo izquierdo/abajo/arriba/derecho
--
-- Redimensionar:
--   Ctrl-w + +/-/</> = aumentar/disminuir alto/ancho
--   Ctrl-w + _/| = maximizar alto/ancho
--   Ctrl-w + = = igualar todas las ventanas
--
-- Splits:
--   :sp / :vsp = dividir horizontal/vertical

map("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Move to lower window" })
map("n", "<C-k>", "<C-w>k", { desc = "Move to upper window" })
map("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

map("n", "<C-S-h>", "<C-w>H", { desc = "Move window left" })
map("n", "<C-S-l>", "<C-w>L", { desc = "Move window right" })
map("n", "<C-S-j>", "<C-w>J", { desc = "Move window down" })
map("n", "<C-S-k>", "<C-w>K", { desc = "Move window up" })

map("n", "<C-Up>", ":resize +2<CR>", { desc = "Resize up" })
map("n", "<C-Down>", ":resize -2<CR>", { desc = "Resize down" })
map("n", "<C-Left>", ":vertical resize -2<CR>", { desc = "Resize left" })
map("n", "<C-Right>", ":vertical resize +2<CR>", { desc = "Resize right" })

-- [[ BUFFERS ]]
map("n", "<leader>bn", ":bnext<CR>", { desc = "Next buffer" })
map("n", "<leader>bp", ":bprevious<CR>", { desc = "Previous buffer" })

-- [[ SPLITS ]]
map("n", "<leader>sv", ":vsp<CR>", { desc = "Split vertically" })
map("n", "<leader>sh", ":sp<CR>", { desc = "Split horizontally" })

-- [[ PICKER.NVIM ]]
-- Comandos disponibles: :Picker files | buffers | help_tags | lsp_references | lsp_document_symbols | etc.
map("n", "<leader>ff", ":Picker files<CR>", { desc = "Find files" })
map("n", "<leader><leader>", ":Picker buffers<CR>", { desc = "Find buffers" })
map("n", "<leader>fh", ":Picker help_tags<CR>", { desc = "Find help" })
map("n", "<leader>fr", ":Picker mru<CR>", { desc = "Find recent" })
map("n", "<leader>fn", function()
  -- picker.nvim no tiene live_grep directo; usa :Picker files con rg si lo necesitas
  vim.cmd("Picker files")
end, { desc = "Find in notes" })

-- [[ TERMINAL ]]
map("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Terminal pequeña en la parte inferior (10 líneas)
local job_id = 0
map("n", "<leader>st", function()
  vim.cmd.vnew()
  vim.cmd.term()
  vim.cmd.wincmd("J")
  vim.api.nvim_win_set_height(0, 10)
  job_id = vim.bo.channel
end, { desc = "Small terminal (10 lines)" })

-- [[ VIMWIKI ]]
map("n", "<leader>vwb", ":VWB<CR>", { desc = "Vimwiki backlinks" })

-- [[ LSP (nativo de Neovim 0.11+) ]]
-- Mapeos por defecto al adjuntar un servidor:
--   grn = renombrar símbolo
--   gra = acciones de código
--   grr = listar referencias
--   gri = ir a implementación
--   gO  = símbolos del documento
--   Ctrl-S (insert) = ayuda de firma
--   [d / ]d = diagnóstico anterior/siguiente
--   K = hover (documentación)
--
-- NO es necesario definirlos manualmente; Neovim los activa solos.
-- Puedes ver todos con :help lsp-defaults
