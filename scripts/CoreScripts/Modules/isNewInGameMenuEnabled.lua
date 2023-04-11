--!nonstrict
local Players = game:GetService("Players")
local VRService = game:GetService("VRService")

local IsExperienceMenuABTestEnabled = require(script.Parent.IsExperienceMenuABTestEnabled)
local ExperienceMenuABTestManager = require(script.Parent.ExperienceMenuABTestManager)

game:DefineFastInt("NewInGameMenuPercentRollout3", 0)
game:DefineFastString("NewInGameMenuForcedUserIds", "")
game:DefineFastFlag("NewInGameMenuDisabledInVR", false)

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local FFlagDisableNewIGMinDUA = game:DefineFastFlag("DisableNewIGMinDUA", false)

local isSubjectToDesktopPolicies = require(script.Parent.InGameMenu.isSubjectToDesktopPolicies)

return function()
	-- new IGM is always on in VR
	if VRService.VREnabled then
		return true
	end

	if not FFlagDisableNewIGMinDUA then
		if isSubjectToDesktopPolicies() then
			return true
		end
	end

	local localPlayer = Players.LocalPlayer
	while not localPlayer do
		Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
		localPlayer = Players.LocalPlayer
	end

	local forcedUserIds = game:GetFastString("NewInGameMenuForcedUserIds")
	for forcedUserIdString in forcedUserIds:gmatch("%d+") do
		if tonumber(forcedUserIdString) == localPlayer.UserId then
			return true
		end
	end

	if IsExperienceMenuABTestEnabled() and ExperienceMenuABTestManager.default:isV3MenuEnabled() then
		return true
	end

	local rolloutPercent = game:GetFastInt("NewInGameMenuPercentRollout3")
	local userIdLastTwoDigits = localPlayer.UserId % 100

	local inPercentRollout = userIdLastTwoDigits < rolloutPercent

	if inPercentRollout then
		return true
	end

	return false
end
