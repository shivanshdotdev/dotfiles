return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  -- tag = "v0.9.3",
  branch = "main",
  config = function()
    require("nvim-treesitter").setup({
      ensure_installed = {
        "java",
        "python",
        "markdown",
        "markdown_inline",
        "lua",
        "vim",
        "vimdoc",
        "bash",
      },
      highlight = { enable = true },
      indent = { enable = true },
      auto_install = true,
    })
  end,
}
