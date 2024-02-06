local Players = game:GetService("Players")
game:DefineFastFlag("NewUnibarIA", false)

return function()
	local localPlayer = Players.LocalPlayer
	while not localPlayer do
		Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
		localPlayer = Players.LocalPlayer
	end

	-- Enable new IA for users allowlisted into any chrome variant for dogfooding
	local forcedUserIds = game:GetFastString("InGameMenuChromeForcedUserIds")
	for forcedUserIdString in forcedUserIds:gmatch("%d+") do
		if localPlayer and tonumber(forcedUserIdString) == localPlayer.UserId then
			return true
		end
	end

	return game:GetFastFlag("NewUnibarIA")
end
