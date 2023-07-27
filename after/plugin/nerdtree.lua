local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<C-e>', ':NERDTreeToggle<CR>', opts)
vim.keymap.set('n', '<C-b>', ':NERDTreeClose<CR>', opts)
