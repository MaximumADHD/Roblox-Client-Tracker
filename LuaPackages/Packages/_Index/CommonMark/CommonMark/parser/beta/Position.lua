-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/parser/beta/Position.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

-- Position within a Scanner. This is intentionally kept opaque so as not to expose the internal
-- structure of the Scanner.
local Position = {}
Position.__index = Position

type PositionFields = {
	lineIndex: number,
	index: number,
	equals: (self: Position, o: Position?) -> boolean,
	compareTo: (self: Position, that: Position) -> number,
}

export type Position = typeof(setmetatable({} :: PositionFields, Position))

function Position.new(lineIndex: number, index: number): Position
	return setmetatable({
		lineIndex = lineIndex,
		index = index,
	}, Position) :: any
end

-- PORT NOTE: equals(Object) takes a Position? (the only class it can match), so the instanceof
-- check reduces to the nil check. hashCode is not ported: Luau tables can't key on it, and nothing
-- hashes positions (BackticksInlineParser keys its map by length and stores positions as values;
-- InlineParserImpl's DelimiterSearchKey holds no position). Nothing in commonmark-java calls
-- equals either; it is kept because it is public API.
function Position.equals(self: Position, o: Position?): boolean
	if self == o then
		return true
	end
	if o == nil then
		return false
	end
	local position = o
	return self.lineIndex == position.lineIndex and self.index == position.index
end

-- PORT NOTE: Integer.compare becomes this local, with the same -1/0/1 results.
local function compare(x: number, y: number): number
	return if x < y then -1 elseif x == y then 0 else 1
end

function Position.compareTo(self: Position, that: Position): number
	local lineCmp = compare(self.lineIndex, that.lineIndex)
	if lineCmp ~= 0 then
		return lineCmp
	end
	return compare(self.index, that.index)
end

return Position
