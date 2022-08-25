--!strict
--[[
Mocks reflected MetaBreakpoint instance.

MetaBreakpoint:
- Script : string
- Line : number
- Condition : string
- Id : number
- LogMessage : string
- Enabled: boolean
- ContinueExecution: boolean
- IsLogpoint : boolean
]]
--

export type MetaBreakpointProperties = {
	Script: string | nil,
	Line: number | nil,
	Condition: string | nil,
	Id: number | nil,
	LogMessage: string | nil,
	Enabled: boolean | nil,
	ContinueExecution: boolean | nil,
	IsLogpoint: boolean | nil,
}

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

function MetaBreakpoint:GetContextBreakpoints()
	return {}
end

function MetaBreakpoint.new(metaBreakpoint: MetaBreakpointProperties)
	if metaBreakpoint.Enabled == nil then
		metaBreakpoint.Enabled = true
	end

	if metaBreakpoint.ContinueExecution == nil then
		metaBreakpoint.ContinueExecution = false
	end

	if metaBreakpoint.IsLogpoint == nil then
		metaBreakpoint.IsLogpoint = false
	end

	local self = {
		Script = metaBreakpoint.Script or "1234-5678-9ABC",
		Line = metaBreakpoint.Line or 1,
		Condition = metaBreakpoint.Condition or "",
		Id = metaBreakpoint.Id or 1,
		LogMessage = metaBreakpoint.LogMessage or "",
		Enabled = metaBreakpoint.Enabled,
		ContinueExecution = metaBreakpoint.ContinueExecution,
		IsLogpoint = metaBreakpoint.IsLogpoint,
	}

	setmetatable(self, MetaBreakpoint)
	return self
end

export type MetaBreakpoint = typeof(MetaBreakpoint.new({}))
return MetaBreakpoint
