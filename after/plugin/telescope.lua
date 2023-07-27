local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-t>', builtin.find_files, {})
vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})
