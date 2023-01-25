local CorePackages = game:GetService("CorePackages")
local IsExperienceMenuABTestEnabled = require(script.Parent.Parent.InGameMenuV3.IsExperienceMenuABTestEnabled)
local GetFFlagShareInviteLinkContextMenuABTestEnabled = require(script.Parent.Parent.Flags.GetFFlagShareInviteLinkContextMenuABTestEnabled)
local GetFFlagEnableNewInviteMenuIXP = require(script.Parent.Parent.Flags.GetFFlagEnableNewInviteMenuIXP)
local GetFFlagEnableIXPInGame = require(script.Parent.Parent.Common.Flags.GetFFlagEnableIXPInGame)
local GetFFlagLoadingScreenUseIXP = require(script.Parent.Parent.Flags.GetFFlagLoadingScreenUseIXP)
local GetFStringLoadingScreenIxpLayer = require(CorePackages.Workspace.Packages.SharedFlags).GetFStringLoadingScreenIxpLayer
local GetFStringLargerRobuxUpsellIxpLayer = require(CorePackages.Workspace.Packages.SharedFlags).GetFStringLargerRobuxUpsellIxpLayer
local GetFStringLuaAppExperienceMenuLayer = require(script.Parent.Parent.Flags.GetFStringLuaAppExperienceMenuLayer)

return function()
	local layers = {}

	if GetFFlagEnableIXPInGame() then
		table.insert(layers, "AbuseReports")
	end

	if IsExperienceMenuABTestEnabled()
		or GetFFlagShareInviteLinkContextMenuABTestEnabled()
		or GetFFlagEnableNewInviteMenuIXP()
	then
		table.insert(layers, GetFStringLuaAppExperienceMenuLayer())
	end

	if GetFFlagLoadingScreenUseIXP() then
		table.insert(layers, GetFStringLoadingScreenIxpLayer())
	end

	if GetFStringLargerRobuxUpsellIxpLayer() then
		table.insert(layers, GetFStringLargerRobuxUpsellIxpLayer())
	end

	return layers
end
