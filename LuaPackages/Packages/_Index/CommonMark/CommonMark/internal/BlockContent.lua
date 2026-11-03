-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/internal/BlockContent.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local BlockContent = {}
BlockContent.__index = BlockContent

-- PORT NOTE: the sb StringBuilder is a parts array kept on the instance, so it is appended with
-- table.insert rather than a local `n`.
type BlockContentFields = {
	_sb: { string },
	_lineCount: number,
	add: (self: BlockContent, line: string) -> (),
	getString: (self: BlockContent) -> string,
}

export type BlockContent = typeof(setmetatable({} :: BlockContentFields, BlockContent))

function BlockContent.new(): BlockContent
	return setmetatable({ _sb = {}, _lineCount = 0 }, BlockContent) :: any
end

function BlockContent.newString(content: string): BlockContent
	return setmetatable({ _sb = { content }, _lineCount = 0 }, BlockContent) :: any
end

function BlockContent.add(self: BlockContent, line: string)
	if self._lineCount ~= 0 then
		table.insert(self._sb, "\n")
	end
	table.insert(self._sb, line)
	self._lineCount += 1
end

function BlockContent.getString(self: BlockContent): string
	return table.concat(self._sb)
end

return BlockContent
