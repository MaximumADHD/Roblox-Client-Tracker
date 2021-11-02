--!strict
--[[
MetaBreakpoint:
- Script : string
- Line : number
- Condition : string
- Id : number
- Enabled: boolean
- Valid : boolean
- ContinueExecution: boolean
]]--

local MetaBreakpoint = {}
MetaBreakpoint.__index = MetaBreakpoint

function MetaBreakpoint:SetEnabled(enabled)
	self.Enabled = enabled
	if self.mockBreakpointManager then
		self.mockBreakpointManager.MetaBreakpointChanged:Fire(self)
	end
end

function MetaBreakpoint:SetContinueExecution(continueExecution)
	self.ContinueExecution = continueExecution
	if self.mockBreakpointManager then
		self.mockBreakpointManager.MetaBreakpointChanged:Fire(self)
	end
end

function MetaBreakpoint:SetMockBreakpointManager(mockBreakpointManager)
	self.mockBreakpointManager = mockBreakpointManager
end

function MetaBreakpoint.new(scriptString : string, line : number, condition : string, id : number, logMessage : string,
	enabled: boolean,  valid : boolean, continueExecution: boolean, isLogpoint : boolean)	
	local self = {
		Script = scriptString,
		Line = line,
		Condition = condition,
		Id = id,
		Enabled = enabled,
		Valid = valid,
		LogMessage = logMessage,
		ContinueExecution = continueExecution,
		IsLogpoint = isLogpoint
	}
	
	setmetatable(self, MetaBreakpoint)
	return self
end

export type MetaBreakpoint = typeof(MetaBreakpoint.new("TestScript", 1, "TestCondition", 1, "testLogMessage",
	true, true, true, true))
return MetaBreakpoint
