local CoreGui = game:GetService("CoreGui")

local Modules = CoreGui.RobloxGui.Modules
local ShareInviteLinkABTestManager = require(Modules.ShareInviteLinkABTestManager)

game:DefineFastFlag("ShareInviteLinkContextMenuV3Enabled_v3", false)

local GetFFlagShareInviteLinkContextMenuV3ABTestEnabled = require(Modules.Flags.GetFFlagShareInviteLinkContextMenuV3ABTestEnabled)

-- ShareInviteLinkContextMenuV3Enabled to true, feature launches to all
-- user, else, depends on experiment if experiement flag for v3 is on.
return function()
	local shareInviteLinkEnabledFromExperiment = if GetFFlagShareInviteLinkContextMenuV3ABTestEnabled() then ShareInviteLinkABTestManager.default:isShareInviteLinkEnabled() else false
	return game:GetFastFlag("ShareInviteLinkContextMenuV3Enabled_v3") or shareInviteLinkEnabledFromExperiment
end