local PluginFolder = script.Parent.Parent.Parent
local Constants = require(PluginFolder.Src.Util.Constants)

export type MetaBreakpoint = {
	id: number,
	isEnabled: boolean,
	lineNumber: number,
	scriptName: string,
	scriptLine: string,
	condition: string,
	logMessage: string,
	continueExecution: boolean,
	debugpointType : Constants.DebugpointType,
	contextBreakpoints : {[string] : {connectionId : string, breakpoints : {[number] : Instance}}}
}

local function fromMetaBreakpoint(metaBreakpoint) : MetaBreakpoint
	return {
		id = metaBreakpoint.Id,
		isEnabled = metaBreakpoint.Enabled,
		lineNumber = metaBreakpoint.Line,
		scriptName = metaBreakpoint.Script,
		scriptLine = "",
		condition = metaBreakpoint.Condition,
		logMessage = metaBreakpoint.LogMessage,
		continueExecution = metaBreakpoint.ContinueExecution,
		debugpointType = metaBreakpoint.IsLogpoint and Constants.DebugpointType.Logpoint or Constants.DebugpointType.Breakpoint,
		contextBreakpoints = metaBreakpoint:GetContextBreakpoints(),
	}
end

-- Mocks MetaBreakpoint Model.
-- Create unique values for props that are not passed in
local function mockMetaBreakpoint(metaBreakpoint, uniqueId) : MetaBreakpoint
	if metaBreakpoint.isEnabled == nil then
		metaBreakpoint.isEnabled = math.random()>0.5
	end

	if metaBreakpoint.continueExecution == nil then
		metaBreakpoint.continueExecution = math.random()>0.5
	end

	return {
		id = metaBreakpoint.id or uniqueId,
		isEnabled = metaBreakpoint.isEnabled,
		lineNumber = metaBreakpoint.lineNumber or uniqueId,
		scriptName = metaBreakpoint.scriptName or ("script"..tostring(uniqueId)),
		scriptLine = metaBreakpoint.scriptLine or ("local varNum"..tostring(uniqueId).." = 0"),
		condition = metaBreakpoint.condition or ("varNum"..tostring(uniqueId).." == 0"),
		logMessage = metaBreakpoint.logMessage or ("varNum"..tostring(uniqueId)),
		continueExecution = metaBreakpoint.continueExecution,
		debugpointType = metaBreakpoint.debugpointType or math.fmod(uniqueId,2)==0 and Constants.DebugpointType.Breakpoint or Constants.DebugpointType.Logpoint,
		contextBreakpoints = metaBreakpoint.contextBreakpoints or {}
	}
end

return {
	fromMetaBreakpoint = fromMetaBreakpoint,
	mockMetaBreakpoint = mockMetaBreakpoint,
}
