mode = {
	full = true,
	basic = true,
	minimal = true,
	offline = true,
}

local mode_order = {"full", "basic", "minimal", "offline"}

-- mode is defined globally in the entry file
if config_mode == "" then config_mode = "full"

for m, _ in mode_order.pairs() do
	if not m == config_mode then
		mode[m] = false
	else
		break
	end
end

-- discard global variables 
config_mode = nil

-- import and reexport of the actual config
local wolf = {}

wolf.settings = require("wolf.settings")
wolf.maps = require("wolf.maps")
wolf.lazy = require("wolf.lazy")

return wolf
