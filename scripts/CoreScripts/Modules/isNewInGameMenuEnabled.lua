local Players = game:GetService("Players")
local VRService = game:GetService("VRService")

local IsExperienceMenuABTestEnabled = require(script.Parent.InGameMenu.IsExperienceMenuABTestEnabled)
local ExperienceMenuABTestManager = require(script.Parent.InGameMenu.ExperienceMenuABTestManager)

game:DefineFastInt("NewInGameMenuPercentRollout3", 0)
game:DefineFastString("NewInGameMenuForcedUserIds", "")
game:DefineFastFlag("NewInGameMenuDisabledInVR", false)

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local FFlagEnableNewVrSystem = require(RobloxGui.Modules.Flags.FFlagEnableNewVrSystem)
local FFlagDisableNewIGMinDUA = game:DefineFastFlag("DisableNewIGMinDUA", false)

local isSubjectToDesktopPolicies = require(
	script.Parent.InGameMenu.isSubjectToDesktopPolicies)

return function()
	if game:GetFastFlag("NewInGameMenuDisabledInVR") and not FFlagEnableNewVrSystem then
		if VRService.VREnabled then
			-- VR is enabled and the VR device is connected. Disable the new In Game Menu.
			return false
		end
	end

	if VRService.VREnabled then
		return true
	end

	if not FFlagDisableNewIGMinDUA then
		if isSubjectToDesktopPolicies() then
			return true
		end
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

	if IsExperienceMenuABTestEnabled() and ExperienceMenuABTestManager.default:isV2MenuEnabled() then
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
