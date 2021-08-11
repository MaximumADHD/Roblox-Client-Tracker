export type Breakpoint = {
	id: string,
	isEnabled: bool,
	isValid: bool,
	lineNumber: number,
	scriptName: string,
	scriptLine: string,
	condition: string,
	logMessage: string,
}

local function fromBreakpoint(breakpoint) : Breakpoint
	return {
		id = breakpoint:GetId(),
		isEnabled = breakpoint:GetEnabled(),
		isValid = breakpoint:GetValid(),
		lineNumber = breakpoint:GetLine(),
		scriptName = "",
		scriptLine = "",
		condition = breakpoint:GetCondition(),
		logMessage = breakpoint:GetLogExpression()
	}
end

local function fromData(breakpoint) : Breakpoint
	return {
		id = breakpoint.id,
		isEnabled = breakpoint.isEnabled,
		isValid = breakpoint.isValid,
		lineNumber = breakpoint.lineNumber,
		scriptName = breakpoint.scriptName,
		scriptLine = breakpoint.scriptLine,
		condition = breakpoint.condition,
		logMessage = breakpoint.logMessage,
	}
end

-- Create unique values for props that are not passed in
local function mockBreakpoint(breakpoint, uniqueId) : Breakpoint
	return {
		id = breakpoint.id or uniqueId,
		isEnabled = breakpoint.isEnabled or (math.random()>0.5),
		isValid = breakpoint.isValid or (math.random()>0.5),
		lineNumber = breakpoint.lineNumber or uniqueId,
		scriptName = breakpoint.scriptName or ("script"..tostring(uniqueId)),
		scriptLine = breakpoint.scriptLine or ("local varNum"..tostring(uniqueId).." = 0"),
		condition = breakpoint.condition or ("varNum"..tostring(uniqueId).." == 0"),
		logMessage = breakpoint.logMessage or ("varNum"..tostring(uniqueId)),
	}
end

return {
	fromBreakpoint = fromBreakpoint,
	fromData = fromData,
	mockBreakpoint = mockBreakpoint,
}
