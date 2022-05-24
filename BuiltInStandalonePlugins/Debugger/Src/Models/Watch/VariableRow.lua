local WatchWindowTableRow = require(script.Parent.WatchWindowTableRow)

local Src = script.Parent.Parent.Parent
local DebuggerVariable = require(Src.Mocks.DebuggerVariable)
local Constants = require(Src.Util.Constants)
local WatchHelperFunctions = require(Src.Util.WatchHelperFunctions)

type VarName = { nameColumn: string }

export type VariableRow = VarName & WatchWindowTableRow.WatchWindowTableRow

local function fromData(data): VariableRow
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

local function fromInstance(
	instance: DebuggerVariable.DebuggerVariable,
	parent: VariableRow?,
	scope: string?,
	filterText: string,
	enabledScopes: { string }
): VariableRow
	local parentPath = if parent then (parent.pathColumn .. Constants.SeparationToken) else ""
	-- use VariableId if it exists (table/arrays), variable name otherwise
	local pathName = if instance.VariableId ~= 0 then tostring(instance.VariableId) else instance.Name

	local toReturn = {
		nameColumn = instance.Name,
		pathColumn = parentPath .. pathName,
		scopeColumn = (parent and parent.scopeColumn) or scope,
		valueColumn = instance.Value,
		dataTypeColumn = instance.Type,
		childPaths = {},
		expanded = false,
		textFilteredOut = false,
		scopeFilteredOut = false,
	}

	toReturn.textFilteredOut = not WatchHelperFunctions.textMatchRow(filterText, toReturn)
	toReturn.scopeFilteredOut = WatchHelperFunctions.isScopeFiltered(enabledScopes, toReturn)
	return toReturn
end

return {
	fromData = fromData,
	fromInstance = fromInstance,
}
