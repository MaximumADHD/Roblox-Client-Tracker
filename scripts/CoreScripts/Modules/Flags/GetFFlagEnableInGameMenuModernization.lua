--!nonstrict
local Players = game:GetService("Players")

local IsExperienceMenuABTestEnabled = require(script.Parent.Parent.IsExperienceMenuABTestEnabled)
local ExperienceMenuABTestManager = require(script.Parent.Parent.ExperienceMenuABTestManager)

local GetFStringInGameMenuModernizationBigTextForcedUserIds = require(script.Parent.GetFStringInGameMenuModernizationBigTextForcedUserIds)
local GetFStringInGameMenuModernizationStickyBarForcedUserIds = require(script.Parent.GetFStringInGameMenuModernizationStickyBarForcedUserIds)

game:DefineFastFlag("EnableInGameMenuModernization", false)
game:DefineFastString("InGameMenuModernizationForcedUserIds", "")

return function()
	local localPlayer = Players.LocalPlayer
	while not localPlayer do
		Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
		localPlayer = Players.LocalPlayer
	end

	local forcedUserIds = game:GetFastString("InGameMenuModernizationForcedUserIds")
	for forcedUserIdString in forcedUserIds:gmatch("%d+") do
		if tonumber(forcedUserIdString) == localPlayer.UserId then
			return true
		end
	end

	local forcedUserIds2 = GetFStringInGameMenuModernizationBigTextForcedUserIds()
	for forcedUserIdString in forcedUserIds2:gmatch("%d+") do
		if tonumber(forcedUserIdString) == localPlayer.UserId then
			return true
		end
	end

	local forcedUserIds3 = GetFStringInGameMenuModernizationStickyBarForcedUserIds()
	for forcedUserIdString in forcedUserIds3:gmatch("%d+") do
		if tonumber(forcedUserIdString) == localPlayer.UserId then
			return true
		end
	end

	if IsExperienceMenuABTestEnabled() and ExperienceMenuABTestManager.default:isMenuModernizationEnabled() then
		return true
	end

	return game:GetFastFlag("EnableInGameMenuModernization")
end
