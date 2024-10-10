local M = {
    -- Neotree adds a file explorer to neovim
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      "3rd/image.nvim", -- Optional image support in preview window
    },
    config = function ()
        require("neo-tree").setup({
            close_if_last_window = true,
        -- fix working dir changing to ~ when swithcing a file buffer
        })

        vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {})
        vim.keymap.set('n', '<leader>n', ':Neotree close<CR>', {})
    end
}

return { M }
