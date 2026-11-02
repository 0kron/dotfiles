-- [[ Plugins con vim.pack ]]
vim.pack.add({
  "https://github.com/wsdjeg/picker.nvim",
  "https://github.com/vimwiki/vimwiki",
  "https://github.com/goolord/alpha-nvim",
  "https://github.com/lewis6991/gitsigns.nvim",
  "https://github.com/sainnhe/everforest",
  "https://github.com/iamcco/markdown-preview.nvim",
  "https://github.com/romus204/tree-sitter-manager.nvim",
  "https://github.com/saghen/blink.lib",
  "https://github.com/saghen/blink.cmp",
  "https://github.com/norcalli/nvim-colorizer.lua",
})

-- [[ picker.nvim ]]
require('picker').setup({
  mappings = {
    close = '<Esc>',
    next_item = '<Tab>',
    previous_item = '<S-Tab>',
    open_item = '<Enter>',
    toggle_preview = '<C-p>',
  },
})

-- [[ tree-sitter-manager ]]
require("tree-sitter-manager").setup({
  ensure_installed = { "vimdoc" },
  auto_install = true,
})

-- [[ gitsigns ]]
require("gitsigns").setup({
  signs = {
    add = { text = "+" },
    change = { text = "~" },
    delete = { text = "_" },
  },
})

-- [[ everforest ]]
vim.g.everforest_background = "hard"
vim.g.everforest_transparent_background = 2
vim.cmd.colorscheme("everforest")

-- [[ vimwiki ]]
vim.g.vimwiki_path = "~/Notes/"
vim.g.vimwiki_syntax = "markdown"
vim.g.vimwiki_ext = "md"
vim.g.vimwiki_global_ext = 0

-- [[ alpha dashboard ]]
local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")
dashboard.section.buttons.val = {
  dashboard.button("n", " new file", ":enew<CR>"),
  dashboard.button("q", " quit", ":qa<CR>"),
}
dashboard.section.header.val = {
  [[                                               ]],
  [[                                               ]],
  [[    ⡀⢀⡠⠀⠄⢀⠀⡀                                   ]],
  [[⣀⠤⠘⣀⠁⠌⡀⣴⣂⢬⣌⢡⠒⠂⠄⠠⢀⣄                             ]],
  [[⡄⢀⢰⣠⣚⣼⣴⣿⣿⣿⠿⡿⢿⡷⣤⣼⡯⠋                             ]],
  [[⠭⠲⣔⡾⣿⡯⣾⣾⣿⣿⣽⣦⣀                                  ]],
  [[⠤⡃⢽⢿⢿⣿⢿⣿⢿⡿⣿⣟⡿⣤⢄                                ]],
  [[⣲⣠⠐⢓⣷⣟⣿⠗⡽⣭⠢⠳⣌⣈⣻⣿⣿⣦⣦⣦⠔⢺⣴⠞⢘⣧⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⢽⢧⣶⡈⠈⠌⡾⠢⡱⣌⠢⢒⡠⣾⣿⡟⠁⣠⣻⡃⢀⣾⡷⣅⣾⡟⢳⠀⢴⣢⣭⣵⣤⡡⡁⡂⢐⣤⣀⡠⢀⠀⡄⢠⢠ ⠀]],
  [[⢿⣿⣿⣧⣧⣤⠠⢸⢤⣤⣾⣿⣿⣿⡿⠅⣼⣟⠅⣤⣿⣿⣷⠿⠯⠛⠋⠀⢀⣩⣿⣿⣿⡷⣿⣷⡪⡤⡀⠐⠂⣐⢦⢂⣲⢴⡄]],
  [[⠀⠉⠛⠿⣵⣷⣾⣗⢕⡩⢊⣙⠏⢣⣀⣾⣿⣦⣽⣿⠿⠋⠀⠀⠀⠀⠀⢠⣾⡟⢻⣿⣿⣿⣿⣿⣿⣿⢏⣠⢾⣧⣿⣿⣿⣿⡇]],
  [[⠀⠀⠀⠀⠉⠛⠛⠿⢾⣷⣿⣿⣾⠿⠿⠿⠿⠟⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠁⢀⣾⠞⣰⡿⠋⢀⢐⣳⣴⣿⡷⠟⠋⠈⠈⠈⠁]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠋⠀⠙⠁⡐⣭⣿⠿⠛⠉⠁⠀⠀⠀⠀ ⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[              - mejorar o morir -              ]],
}
alpha.setup(dashboard.opts)

-- [[ markdown-preview ]]
vim.g.mkdp_browser = "/usr/bin/librewolf"
vim.g.mkdp_browser_args = "--new-window"
vim.g.mkdp_port = 8000
vim.g.mkdp_filetypes = { "markdown" }

-- [[ colorizer ]]
require('colorizer').setup({
   '*';
   markdown = { names = false; }
})

-- [[ blink.cmp ]]
require("blink.cmp").setup({
  sources = {
    default = { "lsp", "path", "snippets", "buffer" },
  },
  keymap = {
    preset = "default",
  },
  fuzzy = { implementation = "lua" },
  signature = { enabled = true },
})
