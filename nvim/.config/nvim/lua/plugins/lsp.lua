return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    vim.lsp.config("basedpyright", {})
    vim.lsp.config("jdtls", {})
    vim.lsp.config("html", {})
    vim.lsp.config("cssls", {})
    vim.lsp.config("ts_ls", {})
    vim.lsp.config("clangd", {
        cmd = {
            "clangd",
            "--background-index",
            "--query-driver=/usr/bin/gcc,/usr/bin/g++",
        },
    })
    vim.lsp.config("sqls", {
        filetypes = { "sql", "mysql" }
    })


    vim.lsp.enable("basedpyright")
    vim.lsp.enable("jdtls")
    vim.lsp.enable("html", {})
    vim.lsp.enable("cssls", {})
    vim.lsp.enable("ts_ls", {})
    vim.lsp.enable("clangd", {})
    vim.lsp.enable("sqls")

    -- Keymaps when LSP attaches
    vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
            local buf = args.buf
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = buf, desc = "Go to Definition" })
            vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = buf, desc = "Hover Docs" })
            vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { buffer = buf, desc = "Rename" })
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { buffer = buf, desc = "Code Action" })
        end,
    })
end,
}
