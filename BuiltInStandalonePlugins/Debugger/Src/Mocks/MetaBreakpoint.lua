--!strict
--[[
MetaBreakpoint:
- Script : string
- Line : number
- Condition : string
- Id : number
- LogMessage : string
- Enabled: boolean
- Valid : boolean
- ContinueExecution: boolean
- IsLogpoint : boolean
]]--

local main = script.Parent.Parent.Parent
local Constants = require(main.Src.Util.Constants)

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

function MetaBreakpoint:GetContexts()
	return {[1] = Constants.GameStateTypes.Client, [2] = Constants.GameStateTypes.Server}
end

function MetaBreakpoint.new(scriptString : string, line : number, condition : string, id : number, logMessage : string,
	enabled: boolean,  valid : boolean, continueExecution: boolean, isLogpoint : boolean)	
	local self = {
		Script = scriptString,
		Line = line,
		Condition = condition,
		Id = id,
		LogMessage = logMessage,
		Enabled = enabled,
		Valid = valid,
		ContinueExecution = continueExecution,
		IsLogpoint = isLogpoint
	}
	
	setmetatable(self, MetaBreakpoint)
	return self
end

export type MetaBreakpoint = typeof(MetaBreakpoint.new("TestScript", 1, "TestCondition", 1, "testLogMessage",
	true, true, true, true))
return MetaBreakpoint
