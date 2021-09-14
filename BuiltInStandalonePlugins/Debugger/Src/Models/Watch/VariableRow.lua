local WatchWindowTableRow = require(script.Parent.WatchWindowTableRow)

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

return {
	fromData = fromData,
}
