local PluginFolder = script.Parent.Parent.Parent
local Constants = require(PluginFolder.Src.Util.Constants)

export type Breakpoint = {
	id: number,
	isEnabled: boolean,
	lineNumber: number,
	scriptName: string,
	scriptLine: string,
	condition: string,
	logMessage: string,
	continueExecution: boolean,
	debugpointType : Constants.DebugpointType,
	contexts : {string},
}

local function fromBreakpoint(breakpoint) : Breakpoint
	return {
		id = breakpoint:GetId(),
		isEnabled = breakpoint:GetEnabled(),
		lineNumber = breakpoint:GetLine(),
		scriptName = "",
		scriptLine = "",
		condition = breakpoint:GetCondition(),
		logMessage = breakpoint:GetLogExpression(),
		continueExecution = breakpoint:GetContinueExecution(),
		debugpointType = breakpoint:GetDebugpointType(),
		contexts = breakpoint:GetContexts(),
	}
end

local function fromMetaBreakpoint(metaBreakpoint)
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
		contexts = metaBreakpoint:GetContexts(),
	}
end

local function fromData(breakpoint) : Breakpoint
	return {
		id = breakpoint.id,
		isEnabled = breakpoint.isEnabled,
		lineNumber = breakpoint.lineNumber,
		scriptName = breakpoint.scriptName,
		scriptLine = breakpoint.scriptLine,
		condition = breakpoint.condition,
		logMessage = breakpoint.logMessage,
		continueExecution = breakpoint.continueExecution,
		debugpointType = breakpoint.debugpointType,
		contexts = breakpoint.contexts,
	}
end

-- Create unique values for props that are not passed in
local function mockBreakpoint(breakpoint, uniqueId) : Breakpoint	
	if breakpoint.isEnabled == nil then
		breakpoint.isEnabled = math.random()>0.5
	end

	if breakpoint.continueExecution == nil then
		breakpoint.continueExecution = math.random()>0.5
	end

	return {
		id = breakpoint.id or uniqueId,
		isEnabled = breakpoint.isEnabled,
		lineNumber = breakpoint.lineNumber or uniqueId,
		scriptName = breakpoint.scriptName or ("script"..tostring(uniqueId)),
		scriptLine = breakpoint.scriptLine or ("local varNum"..tostring(uniqueId).." = 0"),
		condition = breakpoint.condition or ("varNum"..tostring(uniqueId).." == 0"),
		logMessage = breakpoint.logMessage or ("varNum"..tostring(uniqueId)),
		continueExecution = breakpoint.continueExecution,
		debugpointType = breakpoint.debugpointType or math.fmod(uniqueId,2)==0 and Constants.DebugpointType.Breakpoint or Constants.DebugpointType.Logpoint,
		contexts = {[1] = Constants.GameStateTypes.Client, [2] = Constants.GameStateTypes.Server},
	}
end

return {
	fromBreakpoint = fromBreakpoint,
	fromData = fromData,
	fromMetaBreakpoint = fromMetaBreakpoint,
	mockBreakpoint = mockBreakpoint,
}
