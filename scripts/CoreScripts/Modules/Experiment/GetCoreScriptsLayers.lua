local CorePackages = game:GetService("CorePackages")
local IsExperienceMenuABTestEnabled = require(script.Parent.Parent.InGameMenuV3.IsExperienceMenuABTestEnabled)
local GetFFlagShareInviteLinkContextMenuABTestEnabled = require(script.Parent.Parent.Flags.GetFFlagShareInviteLinkContextMenuABTestEnabled)
local GetFFlagEnableNewInviteMenuIXP = require(script.Parent.Parent.Flags.GetFFlagEnableNewInviteMenuIXP)
local GetFStringLargerRobuxUpsellIxpLayer = require(CorePackages.Workspace.Packages.SharedFlags).GetFStringLargerRobuxUpsellIxpLayer
local GetFStringLuaAppExperienceMenuLayer = require(script.Parent.Parent.Flags.GetFStringLuaAppExperienceMenuLayer)
local GetFFlagInGameMenuV1FadeBackgroundAnimation = require(script.Parent.Parent.Settings.Flags.GetFFlagInGameMenuV1FadeBackgroundAnimation)
local GetFFlagEnableTeleportBackButton = require(script.Parent.Parent.Flags.GetFFlagEnableTeleportBackButton)
local GetFStringTeleportBackButtonIXPCustomLayerName = require(script.Parent.Parent.Flags.GetFStringTeleportBackButtonIXPCustomLayerName)

return function()
	local layers = {
		"AbuseReports",
	}

	if IsExperienceMenuABTestEnabled()
		or GetFFlagShareInviteLinkContextMenuABTestEnabled()
		or GetFFlagEnableNewInviteMenuIXP()
	then
		table.insert(layers, GetFStringLuaAppExperienceMenuLayer())
	end

	if GetFStringLargerRobuxUpsellIxpLayer() then
		table.insert(layers, GetFStringLargerRobuxUpsellIxpLayer())
	end
	
	if GetFFlagEnableTeleportBackButton() then
		table.insert(layers, GetFStringTeleportBackButtonIXPCustomLayerName())
	end

	if GetFFlagInGameMenuV1FadeBackgroundAnimation() then
		table.insert(layers, "Engine.Interactivity.UICreation.NotchScreenSupport")
	end

	return layers
end
