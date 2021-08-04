local WatchWindowTableRow = require(script.Parent.WatchWindowTableRow)

type VarName = {name : string}

export type VariableRow = VarName & WatchWindowTableRow.WatchWindowTableRow

local function fromData(data) : VariableRow
	return { 
		name = data.name,
		path = data.path,
		scope = data.scope,
		value = data.value,
		dataType = data.dataType,
		children = {},
		textFilteredOut = false,
		scopeFilteredOut = false,
	}
end

return {
	fromData = fromData,
}
