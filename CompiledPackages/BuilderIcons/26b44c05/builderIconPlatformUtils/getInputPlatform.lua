local UserInputService = require(script.Parent.Parent.Services).UserInputService
local Platform = require(script.Parent.Platform)

local PlatformMap = {
	["ps4"] = Platform.PS4,
	["ps5"] = Platform.PS5,
	["xbox"] = Platform.Xbox,
}

local function getInputPlatform()
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

return getInputPlatform
