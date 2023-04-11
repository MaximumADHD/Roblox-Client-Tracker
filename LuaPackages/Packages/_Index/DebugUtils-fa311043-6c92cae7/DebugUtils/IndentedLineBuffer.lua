--[[
	A buffer for gathering indented lines of text.

	It tracks the current indentation level which can be increased or decreased
	by the indent and unindent methods, respectively. All added lines will be
	prepended with spaces for the current indentation level.

	This makes it convenient for dumping hierarchical data.
]]

local TAB = "   "

local IndentedLineBuffer = {}
IndentedLineBuffer.__index = IndentedLineBuffer

IndentedLineBuffer.new = function()
	local self = {
		linePrefix = "",
		lines = {},
	}
	setmetatable(self, IndentedLineBuffer)
	return self
end

function IndentedLineBuffer:addLine(line)
	table.insert(self.lines, self.linePrefix .. (line or ""))
end

function IndentedLineBuffer:indent()
	self.linePrefix = self.linePrefix .. TAB
end

function IndentedLineBuffer:unindent()
	self.linePrefix = self.linePrefix:sub(1 + TAB:len())
end

function IndentedLineBuffer:__tostring()
	return table.concat(self.lines, "\n") .. "\n"
end

return IndentedLineBuffer
