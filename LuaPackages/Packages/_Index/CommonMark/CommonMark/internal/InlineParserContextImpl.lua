-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/internal/InlineParserContextImpl.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local Definitions = require(Root.internal.Definitions)
local DelimiterProcessor = require(Root.parser.delimiter.DelimiterProcessor)
local InlineContentParserFactory = require(Root.parser.beta.InlineContentParserFactory)
local InlineParserContext = require(Root.parser.InlineParserContext)
local LinkProcessor = require(Root.parser.beta.LinkProcessor)
local LinkReferenceDefinition = require(Root.node.LinkReferenceDefinition)

type Definitions = Definitions.Definitions
type DelimiterProcessor = DelimiterProcessor.DelimiterProcessor
type InlineContentParserFactory = InlineContentParserFactory.InlineContentParserFactory
type InlineParserContext = InlineParserContext.InlineParserContext
type LinkProcessor = LinkProcessor.LinkProcessor
type LinkReferenceDefinition = LinkReferenceDefinition.LinkReferenceDefinition

local InlineParserContextImpl = {}
InlineParserContextImpl.__index = InlineParserContextImpl

type InlineParserContextImplFields = {
	_inlineContentParserFactories: { InlineContentParserFactory },
	_delimiterProcessors: { DelimiterProcessor },
	_linkProcessors: { LinkProcessor },
	_linkMarkers: { [number]: true },
	_maxInlineNesting: number,
	_definitions: Definitions,
	_enabledInlineTypes: { string }?,
	getCustomInlineContentParserFactories: (self: InlineParserContextImpl) -> { InlineContentParserFactory },
	getCustomDelimiterProcessors: (self: InlineParserContextImpl) -> { DelimiterProcessor },
	getCustomLinkProcessors: (self: InlineParserContextImpl) -> { LinkProcessor },
	getCustomLinkMarkers: (self: InlineParserContextImpl) -> { [number]: true },
	getMaxInlineNesting: (self: InlineParserContextImpl) -> number,
	getEnabledInlineTypes: (self: InlineParserContextImpl) -> { string }?,
	getLinkReferenceDefinition: (self: InlineParserContextImpl, label: string) -> LinkReferenceDefinition?,
	getDefinition: <D>(self: InlineParserContextImpl, type: string, label: string) -> D?,
}

type InlineParserContextImpl = typeof(setmetatable({} :: InlineParserContextImplFields, InlineParserContextImpl))

-- PORT NOTE: Java's Set<Character> of link markers is a set table of byte values, as the
-- InlineParserContext interface declares.
-- PORT NOTE: enabledInlineTypes isn't in commonmark-java (see Parser.Builder.enabledInlineTypes);
-- nil enables every core inline type.
function InlineParserContextImpl.new(
	inlineContentParserFactories: { InlineContentParserFactory },
	delimiterProcessors: { DelimiterProcessor },
	linkProcessors: { LinkProcessor },
	linkMarkers: { [number]: true },
	maxInlineNesting: number,
	definitions: Definitions,
	enabledInlineTypes: { string }?
): InlineParserContext
	local self = setmetatable({
		_inlineContentParserFactories = inlineContentParserFactories,
		_delimiterProcessors = delimiterProcessors,
		_linkProcessors = linkProcessors,
		_linkMarkers = linkMarkers,
		_maxInlineNesting = maxInlineNesting,
		_definitions = definitions,
		_enabledInlineTypes = enabledInlineTypes,
	}, InlineParserContextImpl)
	return (self :: any) :: InlineParserContext
end

function InlineParserContextImpl.getCustomInlineContentParserFactories(
	self: InlineParserContextImpl
): { InlineContentParserFactory }
	return self._inlineContentParserFactories
end

function InlineParserContextImpl.getCustomDelimiterProcessors(self: InlineParserContextImpl): { DelimiterProcessor }
	return self._delimiterProcessors
end

function InlineParserContextImpl.getCustomLinkProcessors(self: InlineParserContextImpl): { LinkProcessor }
	return self._linkProcessors
end

function InlineParserContextImpl.getCustomLinkMarkers(self: InlineParserContextImpl): { [number]: true }
	return self._linkMarkers
end

function InlineParserContextImpl.getMaxInlineNesting(self: InlineParserContextImpl): number
	return self._maxInlineNesting
end

function InlineParserContextImpl.getEnabledInlineTypes(self: InlineParserContextImpl): { string }?
	return self._enabledInlineTypes
end

-- PORT NOTE: LinkReferenceDefinition.class is the kind string "LinkReferenceDefinition".
function InlineParserContextImpl.getLinkReferenceDefinition(
	self: InlineParserContextImpl,
	label: string
): LinkReferenceDefinition?
	return self._definitions:getDefinition("LinkReferenceDefinition", label)
end

function InlineParserContextImpl.getDefinition<D>(self: InlineParserContextImpl, type: string, label: string): D?
	return self._definitions:getDefinition(type, label)
end

return InlineParserContextImpl
