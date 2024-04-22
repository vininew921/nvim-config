local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<C-K>', ':BufferNext<CR>', opts)
vim.keymap.set('n', '<C-J>', ':BufferPrevious<CR>', opts)
vim.keymap.set('n', '<A-w>', ':BufferClose!<CR>', opts)
