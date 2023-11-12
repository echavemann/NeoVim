local keymap = vim.keymap.set
local opts = { silent = true }
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>ft", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fp", ":Telescope projects<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)
