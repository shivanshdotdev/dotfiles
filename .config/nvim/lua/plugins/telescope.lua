return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },

  config = function()
    local previewers = require("telescope.previewers")

    require("telescope").setup({
      defaults = {
        preview = true,
        buffer_previewer_maker = function(filepath, bufnr, opts)
          opts = opts or {}
          -- Disable filetype detection to prevent syntax highlighting/Treesitter in preview
          opts.use_ft_detect = false
          previewers.buffer_previewer_maker(filepath, bufnr, opts)
        end,
      },
    })

    local builtin = require("telescope.builtin")

    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live Grep" })
    vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Buffers" })
  end,
}
