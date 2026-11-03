-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/parser/beta/LinkProcessor.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local DelimiterProcessor = require(Root.parser.delimiter.DelimiterProcessor)
local InlineContentParserFactory = require(Root.parser.beta.InlineContentParserFactory)
local LinkInfo = require(Root.parser.beta.LinkInfo)
local LinkReferenceDefinition = require(Root.node.LinkReferenceDefinition)
local LinkResult = require(Root.parser.beta.LinkResult)
local Scanner = require(Root.parser.beta.Scanner)

type DelimiterProcessor = DelimiterProcessor.DelimiterProcessor
type InlineContentParserFactory = InlineContentParserFactory.InlineContentParserFactory
type LinkInfo = LinkInfo.LinkInfo
type LinkReferenceDefinition = LinkReferenceDefinition.LinkReferenceDefinition
type LinkResult = LinkResult.LinkResult
type Scanner = Scanner.Scanner

-- An interface to decide how links/images are handled.
--
-- Implementations need to be registered with a parser via Parser.Builder.linkProcessor. Then, when
-- inline parsing is run, each parsed link/image is passed to the processor. This includes links
-- like these:
--
--     [text](destination)
--     [text]
--     [text][]
--     [text][label]
--
-- And images:
--
--     ![text](destination)
--     ![text]
--     ![text][]
--     ![text][label]
--
-- See LinkInfo for accessing various parts of the parsed link/image.
--
-- The processor can then inspect the link/image and decide what to do with it by returning the
-- appropriate LinkResult. If it returns LinkResult.none, the next registered processor is tried.
-- If none of them apply, the link is handled as it normally would.
export type LinkProcessor = {
	-- linkInfo: information about the parsed link/image
	-- scanner: the scanner at the current position after the parsed link/image
	-- context: context for inline parsing
	-- Returns what to do with the link/image, e.g. do nothing (try the next processor), wrap the
	-- text in a node, or replace the link/image with a node.
	process: (
		self: LinkProcessor,
		linkInfo: LinkInfo,
		scanner: Scanner,
		context: InlineParserContext
	) -> LinkResult?,
}

-- Context for inline parsing.
--
-- This interface is not intended to be implemented by clients.
--
-- PORT NOTE: parser/InlineParserContext.java's interface is defined here and re-exported by
-- InlineParserContext.lua. LinkProcessor and InlineParserContext name each other, and Luau types
-- can't be imported from a module that requires the importer, so the pair lives in one module.
-- PORT NOTE: Java's Set<Character> of link markers is a set table of byte values. getDefinition's
-- Class<D> type token becomes the definition type's name, the node kind for node definitions
-- ("LinkReferenceDefinition"), matching DefinitionMap's type string.
export type InlineParserContext = {
	-- Custom inline content parsers configured with Parser.Builder.customInlineContentParserFactory.
	getCustomInlineContentParserFactories: (self: InlineParserContext) -> { InlineContentParserFactory },
	-- Custom delimiter processors configured with Parser.Builder.customDelimiterProcessor.
	getCustomDelimiterProcessors: (self: InlineParserContext) -> { DelimiterProcessor },
	-- Custom link processors configured with Parser.Builder.linkProcessor.
	getCustomLinkProcessors: (self: InlineParserContext) -> { LinkProcessor },
	-- Custom link markers configured with Parser.Builder.linkMarker.
	getCustomLinkMarkers: (self: InlineParserContext) -> { [number]: true },
	-- The limit configured with Parser.Builder.maxInlineNesting.
	getMaxInlineNesting: (self: InlineParserContext) -> number,
	-- The core inline types configured with Parser.Builder.enabledInlineTypes; nil means all.
	-- PORT NOTE: not in commonmark-java (see Parser.Builder.enabledInlineTypes). Optional, so
	-- contexts written against Java's interface still type-check and enable every type.
	getEnabledInlineTypes: ((self: InlineParserContext) -> { string }?)?,
	-- Look up a LinkReferenceDefinition for a given label.
	--
	-- Note that the passed in label does not need to be normalized; implementations are
	-- responsible for doing the normalization before lookup.
	--
	-- Deprecated: use getDefinition with "LinkReferenceDefinition" instead.
	getLinkReferenceDefinition: (self: InlineParserContext, label: string) -> LinkReferenceDefinition?,
	-- Look up a definition of a type for a given label.
	--
	-- Note that the passed in label does not need to be normalized; implementations are
	-- responsible for doing the normalization before lookup.
	getDefinition: <D>(self: InlineParserContext, type: string, label: string) -> D?,
}

return {}
