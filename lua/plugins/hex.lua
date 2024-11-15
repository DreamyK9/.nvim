local M = {
    -- Hex adds a hex-edit mode to neovim
    'RaafatTurki/hex.nvim',
    config = function ()
        require('hex').setup()
        vim.keymap.set('n', '<leader>b', ':HexToggle<CR>', {})
    end
}

return { M }
