local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<A-n>', ':BufferNext<CR>', opts)
vim.keymap.set('n', '<A-p>', ':BufferPrevious<CR>', opts)
vim.keymap.set('n', '<A-w>', ':BufferClose!<CR>', opts)
