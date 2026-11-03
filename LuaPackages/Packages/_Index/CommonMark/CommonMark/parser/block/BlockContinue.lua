-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/parser/block/BlockContinue.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

-- Result object for continuing parsing of a block, see static methods for constructors.
--
-- PORT NOTE: BlockContinue and its only subclass, internal/BlockContinueImpl.java, are one class
-- (ROACTCHAT-2833). The Impl's constructor is the local `new` and its getters are methods here,
-- so DocumentParser reads them without Java's instanceof check and cast.
local BlockContinue = {}
BlockContinue.__index = BlockContinue

type BlockContinueFields = {
	_newIndex: number,
	_newColumn: number,
	_finalize: boolean,
	getNewIndex: (self: BlockContinue) -> number,
	getNewColumn: (self: BlockContinue) -> number,
	isFinalize: (self: BlockContinue) -> boolean,
}

export type BlockContinue = typeof(setmetatable({} :: BlockContinueFields, BlockContinue))

local function new(newIndex: number, newColumn: number, finalize: boolean): BlockContinue
	return setmetatable({
		_newIndex = newIndex,
		_newColumn = newColumn,
		_finalize = finalize,
	}, BlockContinue) :: any
end

function BlockContinue.none(): BlockContinue?
	return nil
end

function BlockContinue.atIndex(newIndex: number): BlockContinue
	return new(newIndex, -1, false)
end

function BlockContinue.atColumn(newColumn: number): BlockContinue
	return new(-1, newColumn, false)
end

function BlockContinue.finished(): BlockContinue
	return new(-1, -1, true)
end

function BlockContinue.getNewIndex(self: BlockContinue): number
	return self._newIndex
end

function BlockContinue.getNewColumn(self: BlockContinue): number
	return self._newColumn
end

function BlockContinue.isFinalize(self: BlockContinue): boolean
	return self._finalize
end

return BlockContinue
