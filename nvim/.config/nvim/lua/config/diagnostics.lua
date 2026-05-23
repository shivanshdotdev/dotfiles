vim.keymap.set("n", "<leader>do", function()
  vim.diagnostic.setloclist({ open = true })
end, { desc = "Open diagnostics panel" })

vim.keymap.set("n", "<leader>dc", "<cmd>lclose<CR>", {
  desc = "Close diagnostics panel"
})
