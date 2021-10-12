local WatchWindowTableRow = require(script.Parent.WatchWindowTableRow)
local DebuggerVariable = require(script.Parent.Parent.Parent.Mocks.DebuggerVariable)

type VarName = {nameColumn : string}

export type VariableRow = VarName & WatchWindowTableRow.WatchWindowTableRow

local function fromData(data) : VariableRow
	return { 
		nameColumn = data.name,
		pathColumn = data.path,
		scopeColumn = data.scope,
		valueColumn = data.value,
		dataTypeColumn = data.dataType,
		childPaths = data.childPaths or {},
		expanded = false,
		textFilteredOut = false,
		scopeFilteredOut = false,
	}
end

local function fromInstance(instance : DebuggerVariable.DebuggerVariable, parent : VariableRow) : VariableRow
	return {
		nameColumn = instance.Name,
		pathColumn = parent.pathColumn .. tostring(instance.VariableId),
		scopeColumn = parent.scopeColumn,
		valueColumn = instance.Value,
		dataTypeColumn = instance.Type,
		childPaths = {},
		expanded = false,
		textFilteredOut = false,
		scopeFilteredOut = false,
	}
end

return {
	fromData = fromData,
	fromInstance = fromInstance,
}
