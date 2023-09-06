game:DefineFastFlag("EnableInGameMenuChrome", false)
game:DefineFastString("InGameMenuChromeForcedUserIds", "")

local Players = game:GetService("Players")
local VRService = game:GetService("VRService")

return function()
	if VRService.VREnabled then
		-- hard disable in VR until we support v2 menu and validated
		return false
	end

	local localPlayer = Players.LocalPlayer
	while not localPlayer do
		Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
		localPlayer = Players.LocalPlayer
	end

	local forcedUserIds = game:GetFastString("InGameMenuChromeForcedUserIds")
	for forcedUserIdString in forcedUserIds:gmatch("%d+") do
		if localPlayer and tonumber(forcedUserIdString) == localPlayer.UserId then
			return true
		end
	end

	return game:GetFastFlag("EnableInGameMenuChrome")
end
