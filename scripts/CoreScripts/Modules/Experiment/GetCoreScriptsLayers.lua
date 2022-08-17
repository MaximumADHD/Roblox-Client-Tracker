local IsExperienceMenuABTestEnabled = require(script.Parent.Parent.InGameMenuV3.IsExperienceMenuABTestEnabled)
local GetFFlagShareInviteLinkContextMenuV1ABTestEnabled = require(script.Parent.Parent.Settings.Flags.GetFFlagShareInviteLinkContextMenuV1ABTestEnabled)
local GetFFlagEnableIXPInGame = require(script.Parent.Parent.Common.Flags.GetFFlagEnableIXPInGame)

return function()
	local layers = {}

	if GetFFlagEnableIXPInGame() then
		table.insert(layers, "AbuseReports")
	end

	if IsExperienceMenuABTestEnabled() or GetFFlagShareInviteLinkContextMenuV1ABTestEnabled() then
		table.insert(layers, "Experience.Menu")
	end

	return layers
end
