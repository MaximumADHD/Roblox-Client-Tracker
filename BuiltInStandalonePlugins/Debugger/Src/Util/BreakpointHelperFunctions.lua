local PluginFolder = script.Parent.Parent.Parent

local AnalyticsEventNames = require(PluginFolder.Src.Resources.AnalyticsEventNames)
local Constants = require(PluginFolder.Src.Util.Constants)

local module = {}

module.setBreakpointRowEnabled = function(bp, row, analytics, actionSource)
	local isEnabled = not row.item.isEnabled

	if row.item.context == nil then
		bp:SetEnabled(isEnabled)

		if isEnabled then
			analytics:report(AnalyticsEventNames.EnableMetaBreakpoint, actionSource)
		else
			analytics:report(AnalyticsEventNames.DisableMetaBreakpoint, actionSource)
		end
	else
		local intForGST = Constants.GetIntForGST(row.item.context)
		if intForGST == nil then
			return
		end

		bp:SetChildBreakpointEnabledByScriptAndContext(row.item.scriptGUID, intForGST, isEnabled)

		if isEnabled then
			analytics:report(AnalyticsEventNames.EnableBreakpoint, actionSource)
		else
			analytics:report(AnalyticsEventNames.DisableBreakpoint, actionSource)
		end
	end
end

return module
