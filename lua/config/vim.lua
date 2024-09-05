-- Tabs use space characters
vim.cmd("set expandtab")
-- Tabs are 4 spaces wide
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
-- Use space as leader button to access more complex keybinds
vim.g.mapleader = " "
-- Activate line numbering and make relative
vim.cmd("set number")
vim.wo.relativenumber = true

-- Automatically change working dir to opened file
-- not using set autochdir bc it might conflic with plugins
-- Sources: 
-- * https://stackoverflow.com/questions/2288756/how-to-set-working-current-directory-in-vim
-- * https://vim.fandom.com/wiki/Set_working_directory_to_the_current_file
-- * https://neovim.discourse.group/t/vimscript-autocmd-to-lua/2932
--vim.cmd.("set autochdir")
-- 
--vim.api.nvim_create_autocmd("BufEnter", {
--pattern = "*",
--command = "silent! lcd %:p:h"
--})

-- Alternative: key mapping
vim.keymap.set('n', '<leader>cd', function()
    vim.cmd("lcd %:p:h")
end, {noremap = true, silent = true})

