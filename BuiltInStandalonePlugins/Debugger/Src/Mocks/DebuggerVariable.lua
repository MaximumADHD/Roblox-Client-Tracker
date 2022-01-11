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
DebuggerVariable.__index = DebuggerVariable

function DebuggerVariable.new(variableId : number, name : string, value : string, type : string)
	local self = {
		VariableId = variableId,
		Name = name,
		Value = value,
		Type = type,
		Populated = false,
		PopulatableType = "DebuggerVariable"
	}
	
	setmetatable(self, DebuggerVariable)
	return self
end

function DebuggerVariable:MockSetChildren(newVariables)
	self.children = newVariables
end

function DebuggerVariable:GetChildren()
	return self.children and self.children or {}
end

function DebuggerVariable:GetVariableByIndex()
	-- not implemented yet
	return DebuggerVariable.new(0, "", "", "")
end

function DebuggerVariable.GetDefaultFrameVariables()
	return {["Locals"] = DebuggerVariable.new(1, "", "", ""),
		["Globals"] = DebuggerVariable.new(1, "", "", ""),
		["Upvalues"] = DebuggerVariable.new(1, "", "", "")
	}
end

export type DebuggerVariable = typeof(DebuggerVariable.new(0, "", "", ""))

return DebuggerVariable
