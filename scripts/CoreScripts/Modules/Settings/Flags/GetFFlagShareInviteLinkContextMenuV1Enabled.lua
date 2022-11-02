local Players = game:GetService("Players")
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local Modules = CoreGui.RobloxGui.Modules
local ThrottleUserId = require(CorePackages.Workspace.Packages.AppCommonLib).ThrottleUserId
local ShareInviteLinkABTestManager = require(Modules.ShareInviteLinkABTestManager)

local GetFFlagShareInviteLinkContextMenuV1ABTestEnabled = require(Modules.Flags.GetFFlagShareInviteLinkContextMenuV1ABTestEnabled)

game:DefineFastFlag("ShareInviteLinkContextMenuV1Enabled_v3", false)
game:DefineFastInt("ShareInviteLinkContextMenuV1RolloutPercentage", 0)

-- ShareInviteLinkContextMenuV1Enabled to true, feature launches to all
-- user, else, depends on experiment if experiement flag for v1 is on.
return function()
	local localPlayer = Players.LocalPlayer

	if not localPlayer or not localPlayer.UserId then
		return false
	end
	local localPlayer = localPlayer :: Player

	local shareInviteLinkEnabledFromExperiment = if GetFFlagShareInviteLinkContextMenuV1ABTestEnabled() then ShareInviteLinkABTestManager.default:isShareInviteLinkEnabled() else false
	local rolloutPercent = game:GetFastInt("ShareInviteLinkContextMenuV1RolloutPercentage")
	return (game:GetFastFlag("ShareInviteLinkContextMenuV1Enabled_v3") or shareInviteLinkEnabledFromExperiment) or ThrottleUserId(rolloutPercent, localPlayer.UserId)
end
