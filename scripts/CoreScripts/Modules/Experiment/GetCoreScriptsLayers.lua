local CorePackages = game:GetService("CorePackages")
local IsExperienceMenuABTestEnabled = require(script.Parent.Parent.InGameMenuV3.IsExperienceMenuABTestEnabled)
local GetFFlagShareInviteLinkContextMenuV1ABTestEnabled = require(script.Parent.Parent.Settings.Flags.GetFFlagShareInviteLinkContextMenuV1ABTestEnabled)
local GetFFlagEnableNewInviteMenuIXP = require(script.Parent.Parent.Flags.GetFFlagEnableNewInviteMenuIXP)
local GetFFlagEnableIXPInGame = require(script.Parent.Parent.Common.Flags.GetFFlagEnableIXPInGame)
local GetFFlagLoadingScreenUseIXP = require(script.Parent.Parent.Flags.GetFFlagLoadingScreenUseIXP)
local GetFStringLoadingScreenIxpLayer = require(CorePackages.AppTempCommon.Flags.GetFStringLoadingScreenIxpLayer)
local GetFStringRobuxUpsellIxpLayer = require(CorePackages.AppTempCommon.Flags.GetFStringRobuxUpsellIxpLayer)
local GetFStringLuaAppExperienceMenuLayer = require(script.Parent.Parent.Flags.GetFStringLuaAppExperienceMenuLayer)

return function()
	local layers = {}

	if GetFFlagEnableIXPInGame() then
		table.insert(layers, "AbuseReports")
	end

	if IsExperienceMenuABTestEnabled()
		or GetFFlagShareInviteLinkContextMenuV1ABTestEnabled()
		or GetFFlagEnableNewInviteMenuIXP()
	then
		table.insert(layers, GetFStringLuaAppExperienceMenuLayer())
	end

	if GetFFlagLoadingScreenUseIXP() then
		table.insert(layers, GetFStringLoadingScreenIxpLayer())
	end

	if GetFStringRobuxUpsellIxpLayer() then
		table.insert(layers, GetFStringRobuxUpsellIxpLayer())
	end

	return layers
end
