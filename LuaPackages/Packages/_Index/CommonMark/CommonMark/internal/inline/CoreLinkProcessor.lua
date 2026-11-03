-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/internal/inline/CoreLinkProcessor.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local InlineParserContext = require(Root.parser.InlineParserContext)
local LinkInfo = require(Root.parser.beta.LinkInfo)
local LinkProcessor = require(Root.parser.beta.LinkProcessor)
local LinkResult = require(Root.parser.beta.LinkResult)
local Nodes = require(Root.node.Nodes)
local Scanner = require(Root.parser.beta.Scanner)

type InlineParserContext = InlineParserContext.InlineParserContext
type LinkInfo = LinkInfo.LinkInfo
type LinkProcessor = LinkProcessor.LinkProcessor
type LinkReferenceDefinition = Nodes.LinkReferenceDefinition
type LinkResult = LinkResult.LinkResult
type Scanner = Scanner.Scanner

local CoreLinkProcessor = {}
CoreLinkProcessor.__index = CoreLinkProcessor

type CoreLinkProcessorFields = {
	_linkEnabled: boolean,
	_imageEnabled: boolean,
}

-- PORT NOTE: not in commonmark-java, linkEnabled and imageEnabled (default true) back
-- Parser.Builder.enabledInlineTypes' Link and Image. With images off, a `!` marker no longer makes
-- an Image, so the brackets become a Link if links are on.
function CoreLinkProcessor.new(linkEnabled: boolean?, imageEnabled: boolean?): LinkProcessor
	return setmetatable({
		_linkEnabled = linkEnabled ~= false,
		_imageEnabled = imageEnabled ~= false,
	}, CoreLinkProcessor) :: any
end

-- PORT NOTE: the private static process(linkInfo, scanner, destination, title) overload keeps its
-- name as a local function, where it can't collide with the process method. It also takes the
-- processor, for its enabled flags. The marker is read once into a local so the analyzer narrows
-- it.
local function process(
	self: CoreLinkProcessorFields,
	linkInfo: LinkInfo,
	scanner: Scanner,
	destination: string?,
	title: string?
): LinkResult?
	local marker = linkInfo:marker()
	if marker ~= nil and marker.literal == "!" and self._imageEnabled then
		return LinkResult.wrapTextIn(Nodes.Image(destination, title), scanner:position()):includeMarker()
	end
	if not self._linkEnabled then
		return LinkResult.none()
	end
	return LinkResult.wrapTextIn(Nodes.Link(destination, title), scanner:position())
end

function CoreLinkProcessor.process(
	processor: LinkProcessor,
	linkInfo: LinkInfo,
	scanner: Scanner,
	context: InlineParserContext
): LinkResult?
	local self: CoreLinkProcessorFields = processor :: any
	if linkInfo:destination() ~= nil then
		-- Inline link
		return process(self, linkInfo, scanner, linkInfo:destination(), linkInfo:title())
	end

	local label = linkInfo:label()
	local ref = if label ~= nil and label ~= "" then label else linkInfo:text()
	local def: LinkReferenceDefinition? = context:getDefinition("LinkReferenceDefinition", ref)
	if def ~= nil then
		-- Reference link
		return process(self, linkInfo, scanner, def.destination, def.title)
	end
	return LinkResult.none()
end

return CoreLinkProcessor
