local M = {
    {
        -- Mason installs and manages language servers
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        -- Mason-lspconfig automatically installs servers from config
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "pylsp"}
            })
        end
    },
    {
        -- Nvim-lspconfig establishes the actual connection to language servers
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.pylsp.setup({})

            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
        end
    }
}

return M
