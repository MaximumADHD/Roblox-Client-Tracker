local Breakpoint = {}
Breakpoint.__index = Breakpoint

function Breakpoint.new(breakpoint): Breakpoint
	if breakpoint.Enabled == nil then
		breakpoint.Enabled = true
	end

	if breakpoint.ContinueExecution == nil then
		breakpoint.ContinueExecution = false
	end

	if breakpoint.Verified == nil then
		breakpoint.Verified = true
	end

	if breakpoint.Id == nil then
		breakpoint.Id = 1
	end

	local self = {
		Id = breakpoint.Id,
		Enabled = breakpoint.Enabled,
		Line = breakpoint.Line or 1,
		Script = breakpoint.Script or "1234-5678-9ABC",
		Condition = breakpoint.Condition or ("varNum" .. tostring(breakpoint.Id) .. " == 0"),
		LogMessage = breakpoint.LogMessage or ("varNum" .. tostring(breakpoint.Id)),
		ContinueExecution = breakpoint.ContinueExecution,
		Verified = breakpoint.Verified,
		MetaBreakpointId = breakpoint.MetaBreakpointId or 6,
	}

	setmetatable(self, Breakpoint)
	return self
end

export type Breakpoint = typeof(Breakpoint.new({}))
return Breakpoint
