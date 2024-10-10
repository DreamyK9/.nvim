local M = {
    -- catppuccin makes neovim look fancy pastel
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function ()
        -- Possible flavors: catppuccin-latte (white), catppuccin-frappe (brighter), catppuccin-macchiato (neutral), catppuccin-mocha (darker, default)
        vim.cmd.colorscheme "catppuccin-mocha"
    end
}

return { M }
