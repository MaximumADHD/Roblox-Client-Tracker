local KeycodeMappings = require(script.Parent.KeycodeMappings)
local Platform = require(script.Parent.Platform)
local getInputPlatform = require(script.Parent.getInputPlatform)

local function getBuilderIconForKeycode(keyCode: Enum.KeyCode): string
	local platform = getInputPlatform()
	local key = keyCode.Name
	local mappedIcon = KeycodeMappings[platform][key]
	if mappedIcon then
		return mappedIcon
	end

	-- fallback on exact key name -> mappings when there is no gamepad mapping
	assert(KeycodeMappings[Platform.Default][key], `{key} has no associated BuilderIcon`)
	return KeycodeMappings[Platform.Default][key]
end

return getBuilderIconForKeycode
