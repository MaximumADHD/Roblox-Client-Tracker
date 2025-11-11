local UserInputService = require(script.Parent.Parent.Services).UserInputService
local KeycodeMappings = require(script.Parent.KeycodeMappings)
local Platform = require(script.Parent.Platform)

local PlatformMap = {
	["ps4"] = Platform.PS4,
	["ps5"] = Platform.PS5,
	["xbox"] = Platform.Xbox,
}

local function getPlatform()
	local img: string = UserInputService:GetImageForKeyCode(Enum.KeyCode.ButtonStart)
	for platformString, platform in PlatformMap do
		if img:find(platformString) then
			return platform
		end
	end
	-- fallback to GetStringForKeyCode
	return if UserInputService:GetStringForKeyCode(Enum.KeyCode.ButtonA) == "ButtonCross"
		then Platform.PS5
		else Platform.Xbox
end

local function getBuilderIconForKeycode(keyCode: Enum.KeyCode): string
	local platform = getPlatform()
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
