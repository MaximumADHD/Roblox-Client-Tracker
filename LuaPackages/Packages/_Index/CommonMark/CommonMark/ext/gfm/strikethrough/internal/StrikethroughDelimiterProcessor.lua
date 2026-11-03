-- Ported from commonmark-java commonmark-ext-gfm-strikethrough/src/main/java/org/commonmark/ext/gfm/strikethrough/internal/StrikethroughDelimiterProcessor.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local DelimiterProcessor = require(Root.parser.delimiter.DelimiterProcessor)
local DelimiterRun = require(Root.parser.delimiter.DelimiterRun)
local Nodes = require(Root.node.Nodes)
local SourceSpans = require(Root.node.SourceSpans)
local Strikethrough = require(Root.ext.gfm.strikethrough.Strikethrough)

type DelimiterProcessor = DelimiterProcessor.DelimiterProcessor
type DelimiterRun = DelimiterRun.DelimiterRun
type Node = Nodes.Node

local TILDE = string.byte("~")

local StrikethroughDelimiterProcessor = {}
StrikethroughDelimiterProcessor.__index = StrikethroughDelimiterProcessor

type StrikethroughDelimiterProcessorFields = {
	_requireTwoTildes: boolean,
	getOpeningCharacter: (self: StrikethroughDelimiterProcessor) -> number,
	getClosingCharacter: (self: StrikethroughDelimiterProcessor) -> number,
	getMinLength: (self: StrikethroughDelimiterProcessor) -> number,
	process: (self: StrikethroughDelimiterProcessor, openingRun: DelimiterRun, closingRun: DelimiterRun) -> number,
}

export type StrikethroughDelimiterProcessor = typeof(setmetatable(
	{} :: StrikethroughDelimiterProcessorFields,
	StrikethroughDelimiterProcessor
))

-- PORT NOTE: the no-argument and (requireTwoTildes) constructors are one function. An omitted
-- requireTwoTildes is false, which is what the no-argument constructor passes.
function StrikethroughDelimiterProcessor.new(requireTwoTildes: boolean?): DelimiterProcessor
	local self = setmetatable({ _requireTwoTildes = requireTwoTildes == true }, StrikethroughDelimiterProcessor)
	return (self :: any) :: DelimiterProcessor
end

function StrikethroughDelimiterProcessor.getOpeningCharacter(_self: StrikethroughDelimiterProcessor): number
	return TILDE
end

function StrikethroughDelimiterProcessor.getClosingCharacter(_self: StrikethroughDelimiterProcessor): number
	return TILDE
end

function StrikethroughDelimiterProcessor.getMinLength(self: StrikethroughDelimiterProcessor): number
	return if self._requireTwoTildes then 2 else 1
end

function StrikethroughDelimiterProcessor.process(
	_self: StrikethroughDelimiterProcessor,
	openingRun: DelimiterRun,
	closingRun: DelimiterRun
): number
	if openingRun:length() == closingRun:length() and openingRun:length() <= 2 then
		-- GitHub only accepts either one or two delimiters, but not a mix or more than that.

		local opener = openingRun:getOpener()

		-- Wrap nodes between delimiters in strikethrough.
		local literal = opener.literal :: string
		local delimiter = if openingRun:length() == 1 then literal else literal .. literal
		local strikethrough: Node = Strikethrough(delimiter)

		-- PORT NOTE: the getOpeners/getClosers arrays are cast for addAllFrom, as in
		-- EmphasisDelimiterProcessor: its element type is SourceSpans' structural HasSourceSpans.
		local sourceSpans = SourceSpans.new()
		sourceSpans:addAllFrom(openingRun:getOpeners(openingRun:length()) :: any)

		for node in Nodes.between(opener, closingRun:getCloser()) do
			strikethrough:appendChild(node)
			sourceSpans:addAll(node:getSourceSpans())
		end

		sourceSpans:addAllFrom(closingRun:getClosers(closingRun:length()) :: any)
		strikethrough:setSourceSpans(sourceSpans:getSourceSpans())

		opener:insertAfter(strikethrough)

		return openingRun:length()
	else
		return 0
	end
end

return StrikethroughDelimiterProcessor
