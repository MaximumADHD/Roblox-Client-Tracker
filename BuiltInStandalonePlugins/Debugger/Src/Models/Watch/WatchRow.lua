local WatchWindowTableRow = require(script.Parent.WatchWindowTableRow)

type Expression = {expression : string}

export type WatchRow = Expression & WatchWindowTableRow.WatchWindowTableRow

local function fromData(data) : WatchRow
	return {
		expression = data.expression,
		path = data.Path,
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
