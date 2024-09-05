-- load vim settings
require("config.vim")
-- load the lazy.nvim plugin manager 
-- located in: ~/.config/nvim/lua/config/lazy.lua
-- also loads all installed plugins and their configs
require("config.lazy")

-- ## startup commands ## --
-- fix for neotree cd'ing to ~ on first file select
-- TODO
