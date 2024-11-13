local M = {
    {
        -- Telescope adds quick and easy fuzzy search to neovim
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        requires = { {"nvim-lua/plenary.nvim"} },
        config = function()
            local builtin = require("telescope.builtin")

            vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
            vim.keymap.set('n', '<leader>fh', function() vim.cmd("Telescope find_files hidden=true") end, {})
            vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
        end
    },
    {
        -- Telescope-ui-select adds fancy telescope-style UIs for other pop-ups like code actions
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup {
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown {
                        }
                    }
                }
            }
            require("telescope").load_extension("ui-select")
        end
    }
}

return M

