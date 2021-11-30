export type DebugpointType = string
local DebugpointType : {[string]: DebugpointType} = {
	Breakpoint = "Breakpoint",
	Logpoint = "Logpoint",
}

export type Breakpoint = {
	id: number,
	isEnabled: boolean,
	lineNumber: number,
	scriptName: string,
	scriptLine: string,
	condition: string,
	logMessage: string,
	continueExecution: boolean,
	debugpointType : DebugpointType
}

local BreakpointInternal = {}
BreakpointInternal.__index = BreakpointInternal

function BreakpointInternal.new(data) 
    local self = {}
    setmetatable(self, BreakpointInternal)
    for key, value in pairs(data) do
		self[key] = value
	  end
    return self
end

function BreakpointInternal:setEnabled(value : boolean)
    self.isEnabled = value
end

local function fromBreakpoint(breakpoint) : Breakpoint
	return BreakpointInternal.new({
		id = breakpoint:GetId(),
		isEnabled = breakpoint:GetEnabled(),
		lineNumber = breakpoint:GetLine(),
		scriptName = "",
		scriptLine = "",
		condition = breakpoint:GetCondition(),
		logMessage = breakpoint:GetLogExpression(),
		continueExecution = breakpoint:GetContinueExecution(),
		debugpointType = breakpoint:GetDebugpointType()
	})
end

local function fromMetaBreakpoint(metaBreakpoint)
	return BreakpointInternal.new({
		id = metaBreakpoint.Id,
		isEnabled = metaBreakpoint.Enabled,
		lineNumber = metaBreakpoint.Line,
		scriptName = metaBreakpoint.Script,
		scriptLine = "",
		condition = metaBreakpoint.Condition,
		logMessage = metaBreakpoint.LogMessage,
		continueExecution = metaBreakpoint.ContinueExecution,
		debugpointType = metaBreakpoint.IsLogpoint and DebugpointType.Logpoint or DebugpointType.Breakpoint
	})
end

local function fromData(breakpoint) : Breakpoint
	return BreakpointInternal.new({
		id = breakpoint.id,
		isEnabled = breakpoint.isEnabled,
		lineNumber = breakpoint.lineNumber,
		scriptName = breakpoint.scriptName,
		scriptLine = breakpoint.scriptLine,
		condition = breakpoint.condition,
		logMessage = breakpoint.logMessage,
		continueExecution = breakpoint.continueExecution,
		debugpointType = breakpoint.debugpointType
	})
end

-- Create unique values for props that are not passed in
local function mockBreakpoint(breakpoint, uniqueId) : Breakpoint	
	if breakpoint.isEnabled == nil then
		breakpoint.isEnabled = math.random()>0.5
	end

	if breakpoint.continueExecution == nil then
		breakpoint.continueExecution = math.random()>0.5
	end

	return BreakpointInternal.new({
		id = breakpoint.id or uniqueId,
		isEnabled = breakpoint.isEnabled,
		lineNumber = breakpoint.lineNumber or uniqueId,
		scriptName = breakpoint.scriptName or ("script"..tostring(uniqueId)),
		scriptLine = breakpoint.scriptLine or ("local varNum"..tostring(uniqueId).." = 0"),
		condition = breakpoint.condition or ("varNum"..tostring(uniqueId).." == 0"),
		logMessage = breakpoint.logMessage or ("varNum"..tostring(uniqueId)),
		continueExecution = breakpoint.continueExecution,
		debugpointType = breakpoint.debugpointType or math.fmod(uniqueId,2)==0 and DebugpointType.Breakpoint or DebugpointType.Logpoint
	})
end

return {
	fromBreakpoint = fromBreakpoint,
	fromData = fromData,
	fromMetaBreakpoint = fromMetaBreakpoint,
	mockBreakpoint = mockBreakpoint,
	debugpointType = DebugpointType
}
