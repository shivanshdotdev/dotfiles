return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
        -- 1. Correctly set the highlight group
        vim.api.nvim_set_hl(0, "IblCustomIndent", { fg = "#3b4261" })

        -- 2. Pass it directly to the setup function
        require("ibl").setup({
            indent = {
                char = "│",
                highlight = "IblCustomIndent", -- Use a single string or a complete array
            },
            scope = {
                enabled = true, -- Ensures the scope behavior doesn't mismatch the grid
            }
        })
    end,
}
