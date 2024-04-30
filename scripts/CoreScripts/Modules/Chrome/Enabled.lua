local CorePackages = game:GetService("CorePackages")
local IsExperienceMenuABTestEnabled = require(script.Parent.Parent.IsExperienceMenuABTestEnabled)
local ExperienceMenuABTestManager = require(script.Parent.Parent.ExperienceMenuABTestManager)
local GetFFlagFixChromeAllowlistWait = require(script.Parent.Parent.Flags.GetFFlagFixChromeAllowlistWait)
local GetFStringInGameMenuChromeForcedUserIds =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFStringInGameMenuChromeForcedUserIds
local GetFIntInGameMenuChromeAllowlistTimeout =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFIntInGameMenuChromeAllowlistTimeout

game:DefineFastFlag("EnableInGameMenuChrome", false)

local Players = game:GetService("Players")
local VRService = game:GetService("VRService")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local isTenFootInterface = require(RobloxGui.Modules.TenFootInterface):IsEnabled()

return function()
	if VRService.VREnabled then
		-- hard disable in VR until we support v2 menu and validated
		return false
	end

	-- Determine localPlayer unless it takes longer than timeout
	local localPlayer = Players.LocalPlayer
	local timeoutTick = tick() + GetFIntInGameMenuChromeAllowlistTimeout()

	if GetFFlagFixChromeAllowlistWait() then
		while not localPlayer and tick() < timeoutTick do
			Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
			localPlayer = Players.LocalPlayer
		end
	else
		while not localPlayer do
			Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
			localPlayer = Players.LocalPlayer
		end
	end

	local forcedUserIds = GetFStringInGameMenuChromeForcedUserIds()
	for forcedUserIdString in forcedUserIds:gmatch("%d+") do
		if localPlayer and tonumber(forcedUserIdString) == localPlayer.UserId then
			return true
		end
	end

	if IsExperienceMenuABTestEnabled() and ExperienceMenuABTestManager.default:isChromeEnabled() then
		return true
	end

	if isTenFootInterface then
		-- hard disable on Console so it does not show in Studio emulator, except for users in the allowlist
		return false
	end

	return game:GetFastFlag("EnableInGameMenuChrome")
end
