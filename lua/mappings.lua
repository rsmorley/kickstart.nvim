vim.keymap.set('n', '<C-s>', '<CMD>w<CR>')
vim.keymap.set('n', '<leader>q', '<CMD>q<CR>')

-- removed since this is included in snacks
-- vim.keymap.set('n', '<C-x>', ':split<BAR>:terminal<CR>')

-- window navigation
vim.keymap.set('n', '<C-left>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-right>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-down>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-up>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
