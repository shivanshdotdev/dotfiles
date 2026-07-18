-- lua/config/keymaps.lua

local map = vim.keymap.set
-- Use 'jk' to exit insert mode
map("i", "jk", "<Esc>", { desc = "Exit insert mode" })

-- Example: Add other common maps here
map("n", "<leader>nh", ":nohlsearch<CR>", { desc = "Clear search highlights" })

map("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file" })
map("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit" })

-- Move text up and down
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- Duplicate lines in Visual Mode (Alt + j/k is common if Ctrl+Shift fails)
map("v", "<C-S-j>", ":t '> <CR>gv", { desc = "Duplicate selection down" })
map("v", "<C-S-k>", ":t '< -1<CR>gv", { desc = "Duplicate selection up" })

-- Open diagnostic float (standard behavior: closes on cursor move)
map('n', '<leader>df', vim.diagnostic.open_float, { desc = "Toggle Diagnostic Float" })

vim.keymap.set("n", "<leader>nw", function()
    if vim.wo.wrap then
        vim.wo.wrap = false
        vim.wo.linebreak = false
    else
        vim.wo.wrap = true
        vim.wo.linebreak = true
    end
end, { desc = "Toggle wrap and linebreak" })

map("n", "<leader>do", function()
  vim.diagnostic.setloclist({ open = true })
end, { desc = "Open diagnostics panel" })

map("n", "<leader>dc", "<cmd>lclose<CR>", {
  desc = "Close diagnostics panel"
})


