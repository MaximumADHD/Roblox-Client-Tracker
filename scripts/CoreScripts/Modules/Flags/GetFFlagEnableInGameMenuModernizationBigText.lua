--!nonstrict
local Players = game:GetService("Players")

local IsExperienceMenuABTestEnabled = require(script.Parent.Parent.IsExperienceMenuABTestEnabled)
local ExperienceMenuABTestManager = require(script.Parent.Parent.ExperienceMenuABTestManager)

local GetFStringInGameMenuModernizationBigTextForcedUserIds = require(script.Parent.GetFStringInGameMenuModernizationBigTextForcedUserIds)

return function()
	local localPlayer = Players.LocalPlayer
	while not localPlayer do
		Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
		localPlayer = Players.LocalPlayer
	end

	local forcedUserIds = GetFStringInGameMenuModernizationBigTextForcedUserIds()
	for forcedUserIdString in forcedUserIds:gmatch("%d+") do
		if tonumber(forcedUserIdString) == localPlayer.UserId then
			return true
		end
	end

	if IsExperienceMenuABTestEnabled() and ExperienceMenuABTestManager.default:shouldShowBiggerText() then
		return true
	end

	return false
end
