-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/parser/delimiter/DelimiterProcessor.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local DelimiterRun = require(Root.parser.delimiter.DelimiterRun)

type DelimiterRun = DelimiterRun.DelimiterRun

-- Custom delimiter processor for additional delimiters besides `_` and `*`.
--
-- Note that implementations of this need to be thread-safe, the same instance may be used by
-- multiple parsers.
export type DelimiterProcessor = {
	-- The character that marks the beginning of a delimited node, must not clash with any built-in
	-- special characters.
	getOpeningCharacter: (self: DelimiterProcessor) -> number,
	-- The character that marks the the ending of a delimited node, must not clash with any
	-- built-in special characters. Note that for a symmetric delimiter such as "*", this is the
	-- same as the opening.
	getClosingCharacter: (self: DelimiterProcessor) -> number,
	-- Minimum number of delimiter characters that are needed to activate this. Must be at least 1.
	getMinLength: (self: DelimiterProcessor) -> number,
	-- Process the delimiter runs.
	--
	-- The processor can examine the runs and the nodes and decide if it wants to process or not.
	-- If not, it should not change any nodes and return 0. If yes, it should do the processing
	-- (wrapping nodes, etc) and then return how many delimiters were used.
	--
	-- Note that removal (unlinking) of the used delimiter Text nodes is done by the caller.
	--
	-- When a node is created, it is expected to be inserted directly after
	-- DelimiterRun.getOpener, which is what Text.insertAfter on that node does. The parser looks
	-- for the created node there to know how deeply nested it is, so that
	-- Parser.Builder.maxInlineNesting can limit it (without this, input such as a long run of
	-- delimiters around a single character nests deeply enough to break recursive consumers of
	-- the tree, e.g. renderers). A processor that inserts the node elsewhere still works, but its
	-- nodes are not counted towards that limit.
	--
	-- Returns how many delimiters were used; must not be greater than length of either opener or
	-- closer.
	process: (self: DelimiterProcessor, openingRun: DelimiterRun, closingRun: DelimiterRun) -> number,
}

return {}
