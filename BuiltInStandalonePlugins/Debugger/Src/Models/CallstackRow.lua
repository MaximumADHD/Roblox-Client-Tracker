export type CallstackRow = {
	arrowColumn: table,
	frameColumn: string,
	whatColumn: string,
	functionNameColumn: string,
	lineNumberColumn: string,
	sourceColumn: string,
}

local function new() : CallstackRow
	return {
		arrowColumn = {},
		frameColumn = "",
		whatColumn = "",
		functionNameColumn = "",
		lineNumberColumn = "",
		sourceColumn = "",
	}
end

local function fromData(data) : CallstackRow
	return {
		arrowColumn = data.arrowColumn,
		frameColumn = data.frameColumn,
		whatColumn = data.whatColumn,
		functionNameColumn = data.functionNameColumn,
		lineNumberColumn = data.lineNumberColumn,
		sourceColumn = data.sourceColumn,
	}
end

return {
	new = new,
	fromData = fromData,
}
