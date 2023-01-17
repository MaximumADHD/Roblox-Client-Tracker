--[[
	A buffer for gathering indented lines of text.

	It tracks the current indentation level which can be increased or decreased
	by the indent and unindent methods, respectively. All added lines will be
	prepended with spaces for the current indentation level.

	This makes it convenient for dumping hierarchical data.
]]

local TAB: string = "   "

local IndentedLineBuffer = {}
IndentedLineBuffer.__index = IndentedLineBuffer

IndentedLineBuffer.new = function()
	local self: {
		linePrefix: string,
		lines: { [number]: string },
	} = {
		linePrefix = "",
		lines = {},
	}
	setmetatable(self, IndentedLineBuffer)
	return self
end

function IndentedLineBuffer:addLine(line: string?)
	table.insert(self.lines, self.linePrefix :: string .. (line or ""))
end

function IndentedLineBuffer:indent()
	self.linePrefix = self.linePrefix :: string .. TAB
end

function IndentedLineBuffer:unindent()
	self.linePrefix = self.linePrefix:sub(1 + TAB:len())
end

function IndentedLineBuffer:__tostring()
	return table.concat(self.lines, "\n") .. "\n"
end

return IndentedLineBuffer
