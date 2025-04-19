-- just some generic remaps

vim.g.mapleader = ' ' 


-- telescope

vim.keymap.set('n', '<leader>ff', '<cmd> Telescope find_files <CR>')
vim.keymap.set('n', '<leader>fa', "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>")

-- tree

vim.keymap.set('n', '<C-n>', "<cmd> NvimTreeToggle <CR>")

--undotree
vim.keymap.set('n', '<leader><F5>', vim.cmd.UndotreeToggle)

-- terminal

local nvterm = require("nvterm.terminal")

vim.keymap.set({'n', 't'}, '<A-i>', function() nvterm.toggle "float" end)
vim.keymap.set({'n', 't'}, '<A-h>', function() nvterm.toggle "horizontal" end)
vim.keymap.set({'n', 't'}, '<A-v>', function() nvterm.toggle "vertical" end)

-- general

vim.keymap.set('n', '<C-h>', "<C-w>h")
vim.keymap.set('n', '<C-j>', "<C-w>j")
vim.keymap.set('n', '<C-k>', "<C-w>k")
vim.keymap.set('n', '<C-l>', "<C-w>l")

vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
