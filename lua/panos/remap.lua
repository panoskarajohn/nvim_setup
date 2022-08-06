local nnoremap = require("panos.keymap").nnoremap

nnoremap("<leader>pv", "<cmd>Ex<CR>")
nnoremap("<leader>q", vim.diagnostic.open_float)
