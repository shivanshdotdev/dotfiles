return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
    config = function()
        local highlight = {
            "IndentBlanklineIndent1",
        }

        vim.api.nvim_set_hl(0, "IndentBlanklineIndent1", { fg = "#3b4261" })

        require("ibl").setup({
            indent = { highlight = highlight },
        })
    end,
}
