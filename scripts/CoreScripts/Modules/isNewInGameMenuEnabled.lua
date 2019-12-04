local Players = game:GetService("Players")

game:DefineFastInt("NewInGameMenuPercentRollout", 0)
game:DefineFastString("NewInGameMenuForcedUserIds", "")

return function()
	local localPlayer = Players.LocalPlayer

	if localPlayer == nil then
		return false
	end

	local rolloutPercent = game:GetFastInt("NewInGameMenuPercentRollout")
	local userIdLastTwoDigits = localPlayer.UserId % 100

	local inPercentRollout = userIdLastTwoDigits < rolloutPercent

	if inPercentRollout then
		return true
	end

	local forcedUserIds = game:GetFastString("NewInGameMenuForcedUserIds")
	for forcedUserIdString in forcedUserIds:gmatch("%d+") do
		if tonumber(forcedUserIdString) == localPlayer.UserId then
			return true
		end
	end

	return false
end
