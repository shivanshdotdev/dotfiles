return {
    "echasnovski/mini.surround",
    version = "*",
    config = function()
        require("mini.surround").setup({
            -- These define the core hotkeys you will use
            mappings = {
                add = "sa",            -- Add surrounding (Normal and Visual modes)
                delete = "sd",         -- Delete surrounding
                replace = "sc",        -- Replace surrounding
                
                find = "sf",           -- Find surrounding to the right
                find_left = "sF",      -- Find surrounding to the left
                highlight = "sh",      -- Highlight surrounding pairs
                update_n_lines = "sn", -- Change how many lines it looks ahead
            },
        })
    end,
}
