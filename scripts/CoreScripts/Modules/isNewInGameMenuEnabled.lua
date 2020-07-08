local Players = game:GetService("Players")
local ABTestService = game:GetService("ABTestService")

game:DefineFastInt("NewInGameMenuPercentRollout", 0)
game:DefineFastFlag("NewInGameMenuABTestEnabled", false)
game:DefineFastString("NewInGameMenuForcedUserIds", "")

return function()
	if game:GetEngineFeature("UniversalAppOnWindows") then
		return true
	end

	local localPlayer = Players.LocalPlayer

	if localPlayer == nil then
		return false
	end

	local forcedUserIds = game:GetFastString("NewInGameMenuForcedUserIds")
	for forcedUserIdString in forcedUserIds:gmatch("%d+") do
		if tonumber(forcedUserIdString) == localPlayer.UserId then
			return true
		end
	end

	if game:GetFastFlag("NewInGameMenuABTestEnabled") then
		ABTestService:WaitUntilUserABTestsInitialized()
		local InGameMenuTestVariant = nil
		pcall(function() InGameMenuTestVariant = ABTestService:GetVariant("AllUsers.GameExperience.InGameMenu") end)
		local InVariantForGameMenuABTest = (InGameMenuTestVariant ~= nil) and (InGameMenuTestVariant ~= "Control")
		return InVariantForGameMenuABTest
	end

	local rolloutPercent = game:GetFastInt("NewInGameMenuPercentRollout")
	local userIdLastTwoDigits = localPlayer.UserId % 100

	local inPercentRollout = userIdLastTwoDigits < rolloutPercent

	if inPercentRollout then
		return true
	end

	return false
end
