local IsExperienceMenuABTestEnabled = require(script.Parent.Parent.IsExperienceMenuABTestEnabled)
local ExperienceMenuABTestManager = require(script.Parent.Parent.ExperienceMenuABTestManager)
local GetFFlagFixChromeAllowlistWait = require(script.Parent.Parent.Flags.GetFFlagFixChromeAllowlistWait)

game:DefineFastFlag("EnableInGameMenuChrome", false)
game:DefineFastString("InGameMenuChromeForcedUserIds", "")
game:DefineFastInt("InGameMenuChromeAllowlistTimeout", 5)

local Players = game:GetService("Players")
local VRService = game:GetService("VRService")

return function()
	if VRService.VREnabled then
		-- hard disable in VR until we support v2 menu and validated
		return false
	end

	-- Determine localPlayer unless it takes longer than timeout
	local localPlayer = Players.LocalPlayer
	local timeoutTick = tick() + game:GetFastInt("InGameMenuChromeAllowlistTimeout")

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

	local forcedUserIds = game:GetFastString("InGameMenuChromeForcedUserIds")
	for forcedUserIdString in forcedUserIds:gmatch("%d+") do
		if localPlayer and tonumber(forcedUserIdString) == localPlayer.UserId then
			return true
		end
	end

	if IsExperienceMenuABTestEnabled() and ExperienceMenuABTestManager.default:isChromeEnabled() then
		return true
	end

	return game:GetFastFlag("EnableInGameMenuChrome")
end
