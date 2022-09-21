export type LineWriter = {
	write: (LineWriter, string, ...any) -> LineWriter,
	toString: (LineWriter) -> string,
	verticalSpace: (LineWriter) -> LineWriter,
}

local LineWriter = {}
local LineWriterMetatable = { __index = LineWriter }

function LineWriter.new(): LineWriter
	local writer = setmetatable({
		_lines = {},
	}, LineWriterMetatable)
	return writer :: any
end

function LineWriter:write(content: string, ...: any): LineWriter
	if select("#", ...) == 0 then
		table.insert(self._lines, content)
	else
		table.insert(self._lines, content:format(...))
	end
	return self
end

function LineWriter:verticalSpace(): LineWriter
	if #self._lines ~= 0 then
		table.insert(self._lines, "")
	end
	return self
end

function LineWriter:toString(): string
	return table.concat(self._lines, "\n")
end

return LineWriter
