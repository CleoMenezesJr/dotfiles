vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap
map('n', '<C-h>', '<C-w>h', {noremap = true, silent = false})
map('n', '<C-l>', '<C-w>l', {noremap = true, silent = false})
map('n', '<C-j>', '<C-w>j', {noremap = true, silent = false})
map('n', '<C-k>', '<C-w>k', {noremap = true, silent = false})

map('i', 'jk', '<ESC>', {noremap = true, silent = false})
map('i', 'jk', '<ESC>', {noremap = true, silent = false})
map('n', '<TAB>', ':BufferLineCycleNext<CR>', {noremap = true, silent = false})
map('n', '<s-TAB>', ':BufferLineCyclePrev<CR>', {noremap = true, silent = false})
map('n', '<C-n>', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
map('n', '<leader>q', ':bdelete!<CR>', {noremap = true, silent = true})
map('n', '<leader>f', ':Telescope find_files<CR>', {noremap = true, silent = true})
map('n', '<leader>g', ':Telescope live_grep<CR>', {noremap = true, silent = true})

map('v', '<', '<gv', {noremap = true, silent = false})
map('v', '>', '>gv', {noremap = true, silent = false})

