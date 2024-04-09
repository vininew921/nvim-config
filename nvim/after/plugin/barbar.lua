local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<A-.>', ':BufferNext<CR>', opts)
vim.keymap.set('n', '<A-,>', ':BufferPrevious<CR>', opts)
vim.keymap.set('n', '<A-w>', ':BufferClose!<CR>', opts)
