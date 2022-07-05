local IsExperienceMenuABTestEnabled = require(script.Parent.Parent.InGameMenuV3.IsExperienceMenuABTestEnabled)
local GetFFlagEnableIXPInGame = require(script.Parent.Parent.Common.Flags.GetFFlagEnableIXPInGame)

return function()
	local layers = {}

	if GetFFlagEnableIXPInGame() then
		table.insert(layers, "AbuseReports")
	end

	if IsExperienceMenuABTestEnabled() then
		table.insert(layers, "Experience.Menu")
	end

	return layers
end
