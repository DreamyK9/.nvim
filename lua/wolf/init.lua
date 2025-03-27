modes = {
	full = true,
	basic = true,
	minimal = true,
	offline = true,
}

-- mode is defined globally in the entry file
if mode == "" then mode = "full"

for m, _ in modes.pairs() do
	if not m == mode then
		modes[m] = false
	else
		break
	end
end

local wolf = {}

wolf.settings = require("wolf.settings")
wolf.maps = require("wolf.maps")
wolf.lazy = require("wolf.lazy")

return wolf
