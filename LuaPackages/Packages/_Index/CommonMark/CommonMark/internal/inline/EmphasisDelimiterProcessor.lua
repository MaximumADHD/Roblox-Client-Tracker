-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/internal/inline/EmphasisDelimiterProcessor.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local DelimiterProcessor = require(Root.parser.delimiter.DelimiterProcessor)
local DelimiterRun = require(Root.parser.delimiter.DelimiterRun)
local Nodes = require(Root.node.Nodes)
local SourceSpans = require(Root.node.SourceSpans)

type DelimiterProcessor = DelimiterProcessor.DelimiterProcessor
type DelimiterRun = DelimiterRun.DelimiterRun
type Node = Nodes.Node

export type EmphasisLikeOptions = {
	-- 1 (the default) or 2.
	minLength: number?,
	-- Makes the node for a one-delimiter match; defaults to Emphasis.
	createEmphasis: ((delimiter: string) -> Node)?,
	-- Makes the node for a two-delimiter match; defaults to StrongEmphasis.
	createStrongEmphasis: ((delimiter: string) -> Node)?,
}

-- PORT NOTE: Java's AsteriskDelimiterProcessor and UnderscoreDelimiterProcessor (also ported
-- here, from internal/inline/{Asterisk,Underscore}DelimiterProcessor.java) only pass their
-- character to this abstract class's constructor; they collapse into
-- EmphasisDelimiterProcessor.new(char) (ROACTCHAT-2833), which InlineParserImpl calls with `*`
-- and `_`.
-- PORT NOTE: generalised into a factory, exported as
-- CommonMark.Parser.Delimiter.EmphasisLikeDelimiterProcessor: new also takes an optional
-- EmphasisLikeOptions, so an extension gets Java's process with its own minimum length and nodes
-- instead of copying this class. With no options it is Java's processor.
local EmphasisDelimiterProcessor = {}
EmphasisDelimiterProcessor.__index = EmphasisDelimiterProcessor

type EmphasisDelimiterProcessorFields = {
	_delimiterChar: number,
	_minLength: number,
	_createEmphasis: (delimiter: string) -> Node,
	_createStrongEmphasis: (delimiter: string) -> Node,
	getOpeningCharacter: (self: EmphasisDelimiterProcessor) -> number,
	getClosingCharacter: (self: EmphasisDelimiterProcessor) -> number,
	getMinLength: (self: EmphasisDelimiterProcessor) -> number,
	process: (self: EmphasisDelimiterProcessor, openingRun: DelimiterRun, closingRun: DelimiterRun) -> number,
}

export type EmphasisDelimiterProcessor = typeof(setmetatable(
	{} :: EmphasisDelimiterProcessorFields,
	EmphasisDelimiterProcessor
))

-- PORT NOTE: the minimum length is checked because only 1 and 2 are meaningful: process uses at
-- most two delimiters, and a StaggeredDelimiterProcessor pairs a length-2 processor with a
-- length-1 one for the same character.
-- PORT NOTE: each instance gets the port-internal `_rejectsByMultipleOf3Rule` flag that lets
-- processDelimiters bound its opener search (see the PORT NOTE there): process returns 0 exactly
-- when the "multiple of 3" rule rejects the pair, whatever the options. It is set on the
-- instance, not the class table, so that only what this constructor builds carries it.
function EmphasisDelimiterProcessor.new(delimiterChar: number, options: EmphasisLikeOptions?): DelimiterProcessor
	local minLength = if options ~= nil and options.minLength ~= nil then options.minLength else 1
	if minLength ~= 1 and minLength ~= 2 then
		error(`EmphasisLikeDelimiterProcessor minLength must be 1 or 2, got {minLength}`)
	end
	local self = setmetatable({
		_delimiterChar = delimiterChar,
		_minLength = minLength,
		_createEmphasis = if options ~= nil and options.createEmphasis ~= nil
			then options.createEmphasis
			else Nodes.Emphasis,
		_createStrongEmphasis = if options ~= nil and options.createStrongEmphasis ~= nil
			then options.createStrongEmphasis
			else Nodes.StrongEmphasis,
		_rejectsByMultipleOf3Rule = true,
	}, EmphasisDelimiterProcessor)
	return (self :: any) :: DelimiterProcessor
end

function EmphasisDelimiterProcessor.getOpeningCharacter(self: EmphasisDelimiterProcessor): number
	return self._delimiterChar
end

function EmphasisDelimiterProcessor.getClosingCharacter(self: EmphasisDelimiterProcessor): number
	return self._delimiterChar
end

-- PORT NOTE: the options' minLength, where Java returns 1.
function EmphasisDelimiterProcessor.getMinLength(self: EmphasisDelimiterProcessor): number
	return self._minLength
end

function EmphasisDelimiterProcessor.process(
	self: EmphasisDelimiterProcessor,
	openingRun: DelimiterRun,
	closingRun: DelimiterRun
): number
	-- "multiple of 3" rule for internal delimiter runs
	if
		(openingRun:canClose() or closingRun:canOpen())
		and closingRun:originalLength() % 3 ~= 0
		and (openingRun:originalLength() + closingRun:originalLength()) % 3 == 0
	then
		return 0
	end

	local usedDelimiters: number
	local emphasis: Node
	-- calculate actual number of delimiters used from this closer
	-- PORT NOTE: the nodes come from the options' constructors, which default to StrongEmphasis
	-- and Emphasis as in Java. The choice still depends only on the runs' lengths, so a
	-- minLength-2 processor given a shorter run makes the one-delimiter node.
	if openingRun:length() >= 2 and closingRun:length() >= 2 then
		usedDelimiters = 2
		emphasis = self._createStrongEmphasis(string.char(self._delimiterChar, self._delimiterChar))
	else
		usedDelimiters = 1
		emphasis = self._createEmphasis(string.char(self._delimiterChar))
	end

	-- PORT NOTE: the getOpeners/getClosers arrays are cast for addAllFrom, whose element type is
	-- SourceSpans' structural HasSourceSpans, which the analyzer won't match to an array of Text.
	local sourceSpans = SourceSpans.empty()
	sourceSpans:addAllFrom(openingRun:getOpeners(usedDelimiters) :: any)

	local opener = openingRun:getOpener()
	for node in Nodes.between(opener, closingRun:getCloser()) do
		emphasis:appendChild(node)
		sourceSpans:addAll(node:getSourceSpans())
	end

	sourceSpans:addAllFrom(closingRun:getClosers(usedDelimiters) :: any)

	emphasis:setSourceSpans(sourceSpans:getSourceSpans())
	opener:insertAfter(emphasis)

	return usedDelimiters
end

return EmphasisDelimiterProcessor
