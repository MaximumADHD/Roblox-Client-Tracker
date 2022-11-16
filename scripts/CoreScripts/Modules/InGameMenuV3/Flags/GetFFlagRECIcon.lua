local Players = game:GetService("Players")

game:DefineFastFlag("IGMv3RECIcon", false)
game:DefineFastString("NewInGameMenuForcedUserIds", "")

return function()

    local localPlayer = Players.LocalPlayer
	while not localPlayer do
		Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
		localPlayer = Players.LocalPlayer
	end

	local forcedUserIds = game:GetFastString("NewInGameMenuForcedUserIds")
	for forcedUserIdString in forcedUserIds:gmatch("%d+") do
		if localPlayer and tonumber(forcedUserIdString) == localPlayer.UserId then
			return true
		end
	end

    return game:GetFastFlag("IGMv3RECIcon")
end
