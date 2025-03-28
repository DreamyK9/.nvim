-- choose which config to load
-- Possible Choices:
-- "wolf" - custom config by me
local config = "wolf"

-- Choose which mode to load the config in.
-- Does not affect unsupporting configs
-- Possible Choices:
--    "full" - all features
--    "basic" - features that are reasonable everywhere
--    "minimal" - maximum compatibility
--    "offline" - no downloads needed, only settings
config_mode = ""

require(config)
