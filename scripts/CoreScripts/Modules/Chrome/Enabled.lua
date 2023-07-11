game:DefineFastFlag("EnableInGameMenuChrome", false)
game:DefineFastString("InGameMenuChromeForcedUserIds", "")

local Players = game:GetService("Players")

return function()
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

	-- add whitelisted users from menu modernization to chrome
	local forcedUserIdsControls = game:GetFastString("InGameMenuControlsForcedUserIds")
	for forcedUserIdString in forcedUserIdsControls:gmatch("%d+") do
		if localPlayer and tonumber(forcedUserIdString) == localPlayer.UserId then
			return true
		end
	end

	return game:GetFastFlag("EnableInGameMenuChrome")
end
