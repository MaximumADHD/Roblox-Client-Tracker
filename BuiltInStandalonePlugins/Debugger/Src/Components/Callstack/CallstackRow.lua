export type CallstackRow = {
	ArrowColumn: string,
	FrameColumn: string,
	WhatColumn: string,
	FunctionNameColumn: string,
	LineNumberColumn: string,
	SourceColumn: string,
}

local function new() : CallstackRow
	return {
		ArrowColumn = "",
		FrameColumn = "",
		WhatColumn = "",
		FunctionNameColumn = "",
		LineNumberColumn = "",
		SourceColumn = "",
	}
end

local function fromData(data) : CallstackRow
	return {
		ArrowColumn = data.ArrowColumn,
		FrameColumn = data.FrameColumn,
		WhatColumn = data.WhatColumn,
		FunctionNameColumn = data.FunctionNameColumn,
		LineNumberColumn = data.LineNumberColumn,
		SourceColumn = data.SourceColumn,
	}
end

return {
	new = new,
	fromData = fromData,
}
