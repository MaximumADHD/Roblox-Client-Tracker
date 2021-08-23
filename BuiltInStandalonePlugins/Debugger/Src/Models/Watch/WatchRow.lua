local WatchWindowTableRow = require(script.Parent.WatchWindowTableRow)

type Expression = {expression : string}

export type WatchRow = Expression & WatchWindowTableRow.WatchWindowTableRow

local function fromData(data) : WatchRow
	return {
		expressionColumn = data.expression,
		pathColumn = data.path,
		scopeColumn = data.scope,
		valueColumn = data.value,
		dataTypeColumn = data.dataType,
		children = data.children or {},
		textFilteredOut = false,
		scopeFilteredOut = false,
	}
end

return {
	fromData = fromData,
}
