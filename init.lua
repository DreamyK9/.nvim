if vim.loop.os_uname().sysname == "Windows_NT" then
	-- python interpreter. might need to be changed per system
	vim.g.python3_host_prog = vim.env.USERPROFILE .. "/.pyenv/pyenv-win/versions/3.13.3/python.exe"
end

require("wolf")
