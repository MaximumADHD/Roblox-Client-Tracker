local PluginFolder = script.Parent.Parent.Parent
local Constants = require(PluginFolder.Src.Util.Constants)
local Metabreakpoint = require(PluginFolder.Src.Models.MetaBreakpoint)

export type BreakpointRow = {
	id: number,
	isEnabled: boolean,
	lineNumber: number,
	scriptName: string,
	scriptLine: string,
	condition: string,
	logMessage: string,
	continueExecution: boolean,
	debugpointType : Constants.DebugpointType,
	context : string,
}

local function extractNonChildData(breakpoint : Metabreakpoint.MetaBreakpoint, context : string, scriptName : string) : BreakpointRow
	return {
		id = breakpoint.id,
		isEnabled = breakpoint.isEnabled,
		lineNumber = breakpoint.lineNumber,
		scriptName = scriptName,
		scriptLine = breakpoint.scriptLine,
		condition = breakpoint.condition,
		logMessage = breakpoint.logMessage,
		continueExecution = breakpoint.continueExecution,
		debugpointType = breakpoint.debugpointType,
		context = context,
	}
end

return {
	extractNonChildData = extractNonChildData,
}
