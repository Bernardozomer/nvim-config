local opts = {}

-- disable search highlighting until next search
vim.api.nvim_set_keymap('n', '<C-s>', ':noh<CR>', opts)

-- improve buffer navigation
vim.api.nvim_set_keymap('n', '<C-l>', ':bnext<CR>', opts)
vim.api.nvim_set_keymap('n', '<C-h>', ':bprevious<CR>', opts)

-- replace all
vim.api.nvim_set_keymap('n', 'S', ':%s///g<Left><Left><Left>', opts)

-- yank and paste to system clipboard
vim.api.nvim_set_keymap('n', '<leader>y', '"+y', opts)
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', opts)
vim.api.nvim_set_keymap('x', '<leader>y', '"+y', opts)

vim.api.nvim_set_keymap('n', '<leader>p', '"+p', opts)
vim.api.nvim_set_keymap('v', '<leader>p', '"+p', opts)
