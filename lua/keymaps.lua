local keymap = vim.keymap.set
local opts = { silent = true }
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>ft", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fp", ":Telescope projects<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)
vim.api.nvim_set_keymap('n', '<C-H>', '<C-W>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-J>', '<C-W>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-K>', '<C-W>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-L>', '<C-W>l', { noremap = true, silent = true })

