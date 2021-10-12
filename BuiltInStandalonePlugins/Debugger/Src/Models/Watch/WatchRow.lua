local WatchWindowTableRow = require(script.Parent.WatchWindowTableRow)
local DebuggerVariable = require(script.Parent.Parent.Parent.Mocks.DebuggerVariable)

type Expression = {expressionColumn : string}

export type WatchRow = Expression & WatchWindowTableRow.WatchWindowTableRow

local function fromExpression(expression) : WatchRow
	return {
		expressionColumn = expression,
		pathColumn = "",
		scopeColumn = "",
		valueColumn = "",
		dataTypeColumn = "",
		childPaths = {},
		expanded = false,
		textFilteredOut = false,
		scopeFilteredOut = false,
	}
end

local function fromData(data) : WatchRow
	return {
		expressionColumn = data.expression,
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

local function fromInstance(instance : DebuggerVariable.DebuggerVariable, parent : WatchRow?) : WatchRow
	local parentPath = (parent and parent.pathColumn) or ""
	return {
		expressionColumn = instance.Name,
		pathColumn = parentPath .. tostring(instance.VariableId),
		scopeColumn = (parent and parent.scopeColumn) or "",
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
	fromExpression = fromExpression,
	fromInstance = fromInstance,
}
