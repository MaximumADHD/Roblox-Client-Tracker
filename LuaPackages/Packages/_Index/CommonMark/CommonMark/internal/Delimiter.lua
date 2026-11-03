-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/internal/Delimiter.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local Text = require(Root.node.Text)

type Text = Text.Text

-- Delimiter (emphasis, strong emphasis or custom emphasis).
local Delimiter = {}
Delimiter.__index = Delimiter

type DelimiterFields = {
	characters: { Text },
	delimiterChar: number,
	_originalLength: number,
	-- Can open emphasis, see spec.
	_canOpen: boolean,
	-- Can close emphasis, see spec.
	_canClose: boolean,
	previous: Delimiter?,
	next: Delimiter?,
	canOpen: (self: Delimiter) -> boolean,
	canClose: (self: Delimiter) -> boolean,
	length: (self: Delimiter) -> number,
	originalLength: (self: Delimiter) -> number,
	getOpener: (self: Delimiter) -> Text,
	getCloser: (self: Delimiter) -> Text,
	getOpeners: (self: Delimiter, length: number) -> { Text },
	getClosers: (self: Delimiter, length: number) -> { Text },
}

export type Delimiter = typeof(setmetatable({} :: DelimiterFields, Delimiter))

function Delimiter.new(
	characters: { Text },
	delimiterChar: number,
	canOpen: boolean,
	canClose: boolean,
	previous: Delimiter?
): Delimiter
	return setmetatable({
		characters = characters,
		delimiterChar = delimiterChar,
		_canOpen = canOpen,
		_canClose = canClose,
		previous = previous,
		next = nil,
		_originalLength = #characters,
	}, Delimiter) :: any
end

function Delimiter.canOpen(self: Delimiter): boolean
	return self._canOpen
end

function Delimiter.canClose(self: Delimiter): boolean
	return self._canClose
end

function Delimiter.length(self: Delimiter): number
	return #self.characters
end

function Delimiter.originalLength(self: Delimiter): number
	return self._originalLength
end

function Delimiter.getOpener(self: Delimiter): Text
	return self.characters[#self.characters]
end

function Delimiter.getCloser(self: Delimiter): Text
	return self.characters[1]
end

-- PORT NOTE: Java's subList is a view of characters; this returns a copy of the same elements
-- (see DelimiterRun). Processors only read the result, and characters isn't changed until
-- process returns.
function Delimiter.getOpeners(self: Delimiter, length: number): { Text }
	if not (length >= 1 and length <= self:length()) then
		error(`length must be between 1 and {self:length()}, was {length}`)
	end

	return table.move(self.characters, #self.characters - length + 1, #self.characters, 1, {})
end

-- PORT NOTE: a copy rather than a subList view, as in getOpeners.
function Delimiter.getClosers(self: Delimiter, length: number): { Text }
	if not (length >= 1 and length <= self:length()) then
		error(`length must be between 1 and {self:length()}, was {length}`)
	end

	return table.move(self.characters, 1, length, 1, {})
end

return Delimiter
