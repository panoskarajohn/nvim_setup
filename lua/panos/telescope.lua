local Remap = require("panos.keymap")
local nnoremap = Remap.nnoremap

nnoremap("<C-p>", ":Telescope find files<CR>")
nnoremap("<leader>ps", function()
    require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})
end)
nnoremap("<C-p>", function()
    require('telescope.builtin').git_files()
end)
nnoremap("<Leader>pf", function()
    require('telescope.builtin').find_files()
end)
nnoremap("<Leader>o", function()
    require('telescope.builtin').lsp_document_symbols()
end)

