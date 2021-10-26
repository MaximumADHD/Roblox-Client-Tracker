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

function MetaBreakpoint.new(scriptString : string, line : number, condition : string, id : number, enabled: boolean, valid : boolean, continueExecution: boolean)	
	local self = {
		Script = scriptString,
		Line = line,
		Condition = condition,
		Id = id,
		Enabled = enabled,
		Valid = valid,
		ContinueExecution = continueExecution
	}

	return {
		Script = self.Script,
		Line = self.Line,
		Condition = self.Condition,
		Id = self.Id,
		Enabled = self.Enabled,
		Valid = self.Valid,
		ContinueExecution = self.ContinueExecution
	}
end

export type MetaBreakpoint = typeof(MetaBreakpoint.new("TestScript", 1, "TestCondition", 1, true, true, true))
return MetaBreakpoint
