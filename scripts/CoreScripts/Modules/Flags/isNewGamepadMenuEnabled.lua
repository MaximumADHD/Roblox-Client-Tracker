
local Players = game:GetService("Players")

local FFlagTopBarNewGamepadMenu = game:DefineFastFlag("TopBarNewGamepadMenu", false)
local FStringNewGamepadMenuForcedUserIds = game:DefineFastString("NewGamepadMenuForcedUserIds", "")

local function isNewGamepadMenuEnabled()
	if FFlagTopBarNewGamepadMenu then
		return true
	end

	local localPlayer = Players.LocalPlayer
	if localPlayer == nil then
		return false
	end

	for forcedUserIdString in FStringNewGamepadMenuForcedUserIds:gmatch("%d+") do
		if tonumber(forcedUserIdString) == localPlayer.UserId then
			return true
		end
	end

	return false
end

return isNewGamepadMenuEnabled