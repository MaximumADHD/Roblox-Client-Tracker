-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/node/FencedCodeBlock.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local Node = require(Root.node.Node)

type Node = Node.Node

-- PORT NOTE: the opening and closing fence lengths keep Java's private fields and accessors, as
-- methods the constructor attaches to the node, because their setters validate; a plain field
-- would let a write skip the checks. The other accessors are pure data and become fields, per
-- porting-from-java.md.
-- PORT NOTE: fenceCharacter stays the String Java stores ("`" or "~"), not a byte number: Java
-- exposes it as a String, and only the dropped deprecated getFenceChar is a char view.
export type FencedCodeBlock = Node & {
	fenceCharacter: string?,
	_openingFenceLength: number?,
	_closingFenceLength: number?,
	fenceIndent: number,
	info: string?,
	literal: string?,
	getOpeningFenceLength: (self: FencedCodeBlock) -> number?,
	setOpeningFenceLength: (self: FencedCodeBlock, openingFenceLength: number?) -> (),
	getClosingFenceLength: (self: FencedCodeBlock) -> number?,
	setClosingFenceLength: (self: FencedCodeBlock, closingFenceLength: number?) -> (),
}

local function checkFenceLengths(openingFenceLength: number?, closingFenceLength: number?)
	if openingFenceLength ~= nil and closingFenceLength ~= nil then
		if closingFenceLength < openingFenceLength then
			error("fence lengths required to be: closingFenceLength >= openingFenceLength")
		end
	end
end

local function getOpeningFenceLength(self: FencedCodeBlock): number?
	return self._openingFenceLength
end

local function setOpeningFenceLength(self: FencedCodeBlock, openingFenceLength: number?)
	if openingFenceLength ~= nil and openingFenceLength < 3 then
		error("openingFenceLength needs to be >= 3")
	end
	checkFenceLengths(openingFenceLength, self._closingFenceLength)
	self._openingFenceLength = openingFenceLength
end

local function getClosingFenceLength(self: FencedCodeBlock): number?
	return self._closingFenceLength
end

local function setClosingFenceLength(self: FencedCodeBlock, closingFenceLength: number?)
	if closingFenceLength ~= nil and closingFenceLength < 3 then
		error("closingFenceLength needs to be >= 3")
	end
	checkFenceLengths(self._openingFenceLength, closingFenceLength)
	self._closingFenceLength = closingFenceLength
end

-- PORT NOTE: the deprecated getFenceChar/setFenceChar and getFenceLength/setFenceLength are
-- dropped. They are char and int views of fenceCharacter and the opening fence length ('\0' and
-- 0 standing for nil) that nothing in commonmark-java calls, so the field and the opening fence
-- length accessors keep everything they read or write.
-- PORT NOTE: accept is Node's kind dispatch (ROACTCHAT-2833), which calls visitFencedCodeBlock.
local function FencedCodeBlock(): FencedCodeBlock
	local fencedCodeBlock: FencedCodeBlock = Node.new("FencedCodeBlock", true) :: any
	fencedCodeBlock.fenceCharacter = nil
	fencedCodeBlock._openingFenceLength = nil
	fencedCodeBlock._closingFenceLength = nil
	fencedCodeBlock.fenceIndent = 0
	fencedCodeBlock.info = nil
	fencedCodeBlock.literal = nil
	fencedCodeBlock.getOpeningFenceLength = getOpeningFenceLength
	fencedCodeBlock.setOpeningFenceLength = setOpeningFenceLength
	fencedCodeBlock.getClosingFenceLength = getClosingFenceLength
	fencedCodeBlock.setClosingFenceLength = setClosingFenceLength
	return fencedCodeBlock
end

return FencedCodeBlock
