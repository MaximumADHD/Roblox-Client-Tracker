local Src = script.Parent.Parent.Parent
local DebuggerVariable = require(Src.Mocks.DebuggerVariable)
local Constants = require(Src.Util.Constants)
local WatchWindowTableRow = require(script.Parent.WatchWindowTableRow)

type Expression = { expressionColumn: string }

export type WatchRow = Expression & WatchWindowTableRow.WatchWindowTableRow

local function fromExpression(expression): WatchRow
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

local function fromData(data): WatchRow
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

local function fromInstance(instance: DebuggerVariable.DebuggerVariable, expression: string): WatchRow
	-- use VariableId if it exists (table/arrays), expression otherwise
	local pathName = if instance.VariableId ~= 0 then tostring(instance.VariableId) else expression

	return {
		expressionColumn = expression,
		pathColumn = pathName,
		scopeColumn = "",
		valueColumn = instance.Value,
		dataTypeColumn = instance.Type,
		childPaths = {},
		expanded = false,
		textFilteredOut = false,
		scopeFilteredOut = false,
	}
end

local function fromChildInstance(instance: DebuggerVariable.DebuggerVariable, parentPath: string): WatchRow
	local parentPathCopy = parentPath .. Constants.SeparationToken
	-- use VariableId if it exists (table/arrays), expression otherwise
	local pathName = if instance.VariableId ~= 0 then tostring(instance.VariableId) else instance.Name

	return {
		expressionColumn = instance.Name,
		pathColumn = parentPathCopy .. pathName,
		scopeColumn = "",
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
	fromChildInstance = fromChildInstance,
}
