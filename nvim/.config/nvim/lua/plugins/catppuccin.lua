return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000, -- load before other plugins
  config = function()
    require("catppuccin").setup({
      flavour = "mocha",
      background = {
        light = "latte",
        dark = "mocha",
      },
      transparent_background = true,
      float = {
        transparent = false,
        solid = false,
      },
      term_colors = false,
      dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
      },
      no_italic = false,
      no_bold = false,
      no_underline = false,
      styles = {
        comments = { "italic" },
        conditionals = { "italic" },
      },
      lsp_styles = {
        virtual_text = {
          errors = { "italic" },
          hints = { "italic" },
          warnings = { "italic" },
          information = { "italic" },
          ok = { "italic" },
        },
        underlines = {
          errors = { "underline" },
          hints = { "underline" },
          warnings = { "underline" },
          information = { "underline" },
          ok = { "underline" },
        },
        inlay_hints = {
          background = true,
        },
      },
      integrations = {
        treesitter = true, -- CRITICAL: Enables granular AST highlighting
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        mini = {
          enabled = true,
        },
      },
      custom_highlights = function(colors)
        return {
          LineNr = { fg = colors.red },

          -- Matches bat's high-contrast token pops
          ["@type.builtin.c"] = { fg = colors.sapphire, style = { "bold" } }, -- int, bool, void
          ["@keyword.control.c"] = { fg = colors.mauve },                    -- if, for, while, return
          ["@function.call.c"] = { fg = colors.blue },                      -- printf, scanf
          ["@string.c"] = { fg = colors.green },                            -- format strings

          -- Red operators and delimiters like bat
          ["@operator"] = { fg = colors.red, style = { "bold" } },          -- =, ==, +, -, <, >, &
          ["@operator.c"] = { fg = colors.red, style = { "bold" } },
          ["@punctuation.delimiter"] = { fg = colors.red },                 -- ;, ,
        }
      end,
    })

    vim.cmd.colorscheme("catppuccin")

    -- Define a visible yank highlight using Catppuccin palette
    vim.api.nvim_set_hl(0, "YankHighlight", {
      bg = "#f5c2e7", -- Catppuccin mocha pink
      fg = "#1e1e2e",
    })
    vim.api.nvim_create_autocmd("TextYankPost", {
      callback = function()
        vim.highlight.on_yank({
          higroup = "YankHighlight",
          timeout = 150,
        })
      end,
    })
  end,
}
