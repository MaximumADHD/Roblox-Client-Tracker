--!strict
--[[
DebuggerVariable:
- variableId : number
- name : string
- value : string
- type : string
- variablesPopulated : boolean
]]--

local DebuggerVariable = {}

function DebuggerVariable.new(variableId : number, name : string, value : string, type : string)
	local self = {
		variableId = variableId,
		name = name,
		value = value,
		type = type,
		childrenPopulated = false
	}
	
	local GetVariableByIndex = function () : DebuggerVariable
		-- not implemented yet
		return DebuggerVariable.new(0, "", "", "")
	end	

	local GetChildren = function ()
		return {
			[1] = DebuggerVariable.new(1, 'Heesoo', 'Instance', 'Map')
		}
	end

	return {
		GetVariableByIndex = GetVariableByIndex,
		Populated = self.childrenPopulated,
		Name = self.name,
		Value = self.value,
		Type = self.type,
		VariableId = self.variableId,
		GetChildren = GetChildren,
	}
end

export type DebuggerVariable = typeof(DebuggerVariable.new(0, "", "", ""))

return DebuggerVariable
