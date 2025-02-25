-- Change leader key to space instead of backslash
vim.g.mapleader = " "

-- Clear search highlights
vim.keymap.set("n", "<leader>nh", ":nohl<CR>") -- No Highlight

-- Increment and decrement
vim.keymap.set("n", "<leader>+", "<C-a>") -- Increment
vim.keymap.set("n", "<leader>-", "<C-x>") -- Decrement

-- Splitting window
vim.keymap.set("n", "<leader>sv", "<C-w>v") -- Split Vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s") -- Split Horizontally
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>") -- Split eXit
vim.keymap.set("n", "<leader>sc", "<C-w>w") -- Split Change

-- Tabs
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>") -- Tab Open
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>") -- Tab eXit
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>") -- Tab Next
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>") -- Tab Previous
