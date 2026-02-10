--!nonstrict
--!nolint LocalUnused
local Players = game:GetService("Players")
local VRService = game:GetService("VRService")
local CorePackages = game:GetService("CorePackages")

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)

game:DefineFastInt("NewInGameMenuPercentRollout3", 0)
game:DefineFastString("NewInGameMenuForcedUserIds", "")
game:DefineFastFlag("NewInGameMenuDisabledInVR", false)

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local isSubjectToDesktopPolicies = SharedFlags.isSubjectToDesktopPolicies
local isInExperienceUIVREnabled =
	require(CorePackages.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled

return function()
	-- new IGM is always on in VR
	if VRService.VREnabled then
		if isInExperienceUIVREnabled then
			return false
		else
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

	local rolloutPercent = game:GetFastInt("NewInGameMenuPercentRollout3")
	local userIdLastTwoDigits = localPlayer.UserId % 100

	local inPercentRollout = userIdLastTwoDigits < rolloutPercent

	if inPercentRollout then
		return true
	end

	return false
end
