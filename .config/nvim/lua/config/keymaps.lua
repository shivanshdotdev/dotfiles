-- lua/config/keymaps.lua

local map = vim.keymap.set
-- Use 'jk' to exit insert mode
map("i", "jk", "<Esc>", { desc = "Exit insert mode" })

-- Example: Add other common maps here
map("n", "<leader>nh", ":nohlsearch<CR>", { desc = "Clear search highlights" })
--
-- Move text up and down
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- Duplicate lines in Visual Mode (Alt + j/k is common if Ctrl+Shift fails)
map("v", "<C-S-j>", ":t '> <CR>gv", { desc = "Duplicate selection down" })
map("v", "<C-S-k>", ":t '< -1<CR>gv", { desc = "Duplicate selection up" })





