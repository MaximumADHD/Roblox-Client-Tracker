local PluginFolder = script.Parent.Parent.Parent

local AnalyticsEventNames = require(PluginFolder.Src.Resources.AnalyticsEventNames)
local Constants = require(PluginFolder.Src.Util.Constants)

local module = {}

local FFlagStudioDebuggerEnableAllContextsTogglingInEdit = game:GetFastFlag("StudioDebuggerEnableAllContextsTogglingInEdit")

module.setBreakpointRowEnabled = function(bp, row, analytics, actionSource, connectionId)
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

		local uiService = game:GetService("DebuggerUIService")
		local editDM = false
		if FFlagStudioDebuggerEnableAllContextsTogglingInEdit and connectionId and connectionId ~= Constants.kInvalidDebuggerConnectionId then
			editDM = not uiService:IsConnectionForPlayDataModel(connectionId)
		end

		if editDM and isEnabled then
			bp:SetEnabled(isEnabled)
		else
			bp:SetChildBreakpointEnabledByScriptAndContext(row.item.scriptGUID, intForGST, isEnabled)
		end

		if isEnabled then
			analytics:report(AnalyticsEventNames.EnableBreakpoint, actionSource)
		else
			analytics:report(AnalyticsEventNames.DisableBreakpoint, actionSource)
		end
	end
end

return module
