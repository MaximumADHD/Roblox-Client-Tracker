-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/renderer/html/HtmlRenderer.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local AttributeProvider = require(Root.renderer.html.AttributeProvider)
local AttributeProviderContext = require(Root.renderer.html.AttributeProviderContext)
local AttributeProviderFactory = require(Root.renderer.html.AttributeProviderFactory)
local CoreHtmlNodeRenderer = require(Root.renderer.html.CoreHtmlNodeRenderer)
local DefaultUrlSanitizer = require(Root.renderer.html.DefaultUrlSanitizer)
local Escaping = require(Root.internal.util.Escaping)
local Extension = require(Root.Extension)
local HtmlNodeRendererContext = require(Root.renderer.html.HtmlNodeRendererContext)
local HtmlNodeRendererFactory = require(Root.renderer.html.HtmlNodeRendererFactory)
local HtmlWriter = require(Root.renderer.html.HtmlWriter)
local LinkedHashMap = require(Root.internal.port.LinkedHashMap)
local Node = require(Root.node.Node)
local NodeRenderer = require(Root.renderer.NodeRenderer)
local NodeRendererMap = require(Root.internal.renderer.NodeRendererMap)
local UrlSanitizer = require(Root.renderer.html.UrlSanitizer)

type AttributeProvider = AttributeProvider.AttributeProvider
type AttributeProviderContext = AttributeProviderContext.AttributeProviderContext
type AttributeProviderFactory = AttributeProviderFactory.AttributeProviderFactory
type Extension = Extension.Extension
type HtmlNodeRendererContext = HtmlNodeRendererContext.HtmlNodeRendererContext
type HtmlNodeRendererFactory = HtmlNodeRendererFactory.HtmlNodeRendererFactory
type HtmlWriter = HtmlWriter.HtmlWriter
type LinkedHashMap<K, V> = LinkedHashMap.LinkedHashMap<K, V>
type Node = Node.Node
type NodeRenderer = NodeRenderer.NodeRenderer
type NodeRendererMap = NodeRendererMap.NodeRendererMap
type UrlSanitizer = UrlSanitizer.UrlSanitizer

-- Renders a tree of nodes to HTML.
--
-- Start with the builder method to configure the renderer. Example:
--
--     local renderer = HtmlRenderer.builder():escapeHtml(true):build()
--     renderer:render(node)
local HtmlRenderer = {}
HtmlRenderer.__index = HtmlRenderer

-- PORT NOTE: HtmlRenderer and Builder are defined in Extension.lua, because they and Extension
-- name each other (see the note there), and are re-exported here.
export type HtmlRenderer = Extension.HtmlRenderer
export type Builder = Extension.HtmlRendererBuilder

-- PORT NOTE: the private inner class RendererContext is file-local and defined here, above its
-- first use in renderAppendable, rather than at the end of the file. Java's implicit reference to
-- the enclosing HtmlRenderer is the explicit _renderer field, which its methods read the
-- renderer's settings through.
local RendererContext = {}
RendererContext.__index = RendererContext

type RendererContextFields = {
	_renderer: HtmlRenderer,
	_htmlWriter: HtmlWriter,
	_attributeProviders: { AttributeProvider },
	_nodeRendererMap: NodeRendererMap,
	shouldEscapeHtml: (self: RendererContext) -> boolean,
	shouldOmitSingleParagraphP: (self: RendererContext) -> boolean,
	shouldSanitizeUrls: (self: RendererContext) -> boolean,
	urlSanitizer: (self: RendererContext) -> UrlSanitizer,
	encodeUrl: (self: RendererContext, url: string) -> string,
	extendAttributes: (
		self: RendererContext,
		node: Node,
		tagName: string,
		attributes: LinkedHashMap<string, string?>
	) -> LinkedHashMap<string, string?>,
	getWriter: (self: RendererContext) -> HtmlWriter,
	getSoftbreak: (self: RendererContext) -> string,
	render: (self: RendererContext, node: Node) -> (),
	beforeRoot: (self: RendererContext, node: Node) -> (),
	afterRoot: (self: RendererContext, node: Node) -> (),
	setCustomAttributes: (
		self: RendererContext,
		node: Node,
		tagName: string,
		attrs: LinkedHashMap<string, string?>
	) -> (),
}

type RendererContext = typeof(setmetatable({} :: RendererContextFields, RendererContext))

-- PORT NOTE: RendererContext implements HtmlNodeRendererContext and AttributeProviderContext, so
-- it is cast to each where the factories receive it.
function RendererContext.new(renderer: HtmlRenderer, htmlWriter: HtmlWriter): RendererContext
	local self: RendererContext = setmetatable({
		_renderer = renderer,
		_htmlWriter = htmlWriter,
		_attributeProviders = {},
		_nodeRendererMap = NodeRendererMap.new(),
	}, RendererContext) :: any

	local attributeProviderContext: AttributeProviderContext = self :: any
	for _, attributeProviderFactory in ipairs(renderer._attributeProviderFactories) do
		table.insert(self._attributeProviders, attributeProviderFactory:create(attributeProviderContext))
	end

	local context: HtmlNodeRendererContext = self :: any
	for _, factory in ipairs(renderer._nodeRendererFactories) do
		local nodeRenderer = factory:create(context)
		self._nodeRendererMap:add(nodeRenderer)
	end
	return self
end

function RendererContext.shouldEscapeHtml(self: RendererContext): boolean
	return self._renderer._escapeHtml
end

function RendererContext.shouldOmitSingleParagraphP(self: RendererContext): boolean
	return self._renderer._omitSingleParagraphP
end

function RendererContext.shouldSanitizeUrls(self: RendererContext): boolean
	return self._renderer._sanitizeUrls
end

function RendererContext.urlSanitizer(self: RendererContext): UrlSanitizer
	return self._renderer._urlSanitizer
end

function RendererContext.encodeUrl(self: RendererContext, url: string): string
	if self._renderer._percentEncodeUrls then
		return Escaping.percentEncodeUrl(url)
	else
		return url
	end
end

function RendererContext.extendAttributes(
	self: RendererContext,
	node: Node,
	tagName: string,
	attributes: LinkedHashMap<string, string?>
): LinkedHashMap<string, string?>
	local attrs = LinkedHashMap.newMap(attributes)
	self:setCustomAttributes(node, tagName, attrs)
	return attrs
end

function RendererContext.getWriter(self: RendererContext): HtmlWriter
	return self._htmlWriter
end

function RendererContext.getSoftbreak(self: RendererContext): string
	return self._renderer._softbreak
end

function RendererContext.render(self: RendererContext, node: Node)
	self._nodeRendererMap:render(node)
end

function RendererContext.beforeRoot(self: RendererContext, node: Node)
	self._nodeRendererMap:beforeRoot(node)
end

function RendererContext.afterRoot(self: RendererContext, node: Node)
	self._nodeRendererMap:afterRoot(node)
end

function RendererContext.setCustomAttributes(
	self: RendererContext,
	node: Node,
	tagName: string,
	attrs: LinkedHashMap<string, string?>
)
	for _, attributeProvider in ipairs(self._attributeProviders) do
		attributeProvider:setAttributes(node, tagName, attrs)
	end
end

-- PORT NOTE: the method reference CoreHtmlNodeRenderer::new is a table implementing
-- HtmlNodeRendererFactory, shared by every renderer rather than created per constructor call.
local CORE_HTML_NODE_RENDERER_FACTORY: HtmlNodeRendererFactory = {
	create = function(_self: HtmlNodeRendererFactory, context: HtmlNodeRendererContext): NodeRenderer
		local nodeRenderer: NodeRenderer = CoreHtmlNodeRenderer.new(context) :: any
		return nodeRenderer
	end,
}

function HtmlRenderer.new(builder: Builder): HtmlRenderer
	local nodeRendererFactories = table.clone(builder._nodeRendererFactories)
	-- Add as last. This means clients can override the rendering of core nodes if they want.
	table.insert(nodeRendererFactories, CORE_HTML_NODE_RENDERER_FACTORY)

	return setmetatable({
		_softbreak = builder._softbreak,
		_escapeHtml = builder._escapeHtml,
		_percentEncodeUrls = builder._percentEncodeUrls,
		_omitSingleParagraphP = builder._omitSingleParagraphP,
		_sanitizeUrls = builder._sanitizeUrls,
		_urlSanitizer = builder._urlSanitizer,
		_attributeProviderFactories = table.clone(builder._attributeProviderFactories),
		_nodeRendererFactories = nodeRendererFactories,
	}, HtmlRenderer) :: any
end

local Builder = {}
Builder.__index = Builder

-- Create a new builder for configuring an HtmlRenderer.
function HtmlRenderer.builder(): Builder
	return Builder.new()
end

function HtmlRenderer.renderAppendable(self: HtmlRenderer, node: Node, output: { string })
	local context = RendererContext.new(self, HtmlWriter.new(output))
	context:beforeRoot(node)
	context:render(node)
	context:afterRoot(node)
end

function HtmlRenderer.render(self: HtmlRenderer, node: Node): string
	local sb = {}
	self:renderAppendable(node, sb)
	return table.concat(sb)
end

-- Builder for configuring an HtmlRenderer. See methods for default configuration.
function Builder.new(): Builder
	return setmetatable({
		_softbreak = "\n",
		_escapeHtml = false,
		_sanitizeUrls = false,
		_urlSanitizer = DefaultUrlSanitizer.new(),
		_percentEncodeUrls = false,
		_omitSingleParagraphP = false,
		_attributeProviderFactories = {},
		_nodeRendererFactories = {},
	}, Builder) :: any
end

function Builder.build(self: Builder): HtmlRenderer
	return HtmlRenderer.new(self)
end

-- The HTML to use for rendering a softbreak, defaults to "\n" (meaning the rendered result doesn't
-- have a line break).
--
-- Set it to "<br>" (or "<br />") to make them hard breaks.
--
-- Set it to " " to ignore line wrapping in the source.
function Builder.softbreak(self: Builder, softbreak: string): Builder
	self._softbreak = softbreak
	return self
end

-- Whether HtmlInline and HtmlBlock should be escaped, defaults to false.
--
-- Note that HtmlInline is only a tag itself, not the text between an opening tag and a closing
-- tag. So markup in the text will be parsed as normal and is not affected by this option.
function Builder.escapeHtml(self: Builder, escapeHtml: boolean): Builder
	self._escapeHtml = escapeHtml
	return self
end

-- Whether Image src and Link href should be sanitized, defaults to false.
function Builder.sanitizeUrls(self: Builder, sanitizeUrls: boolean): Builder
	self._sanitizeUrls = sanitizeUrls
	return self
end

-- UrlSanitizer used to filter URL's if sanitizeUrls is true.
--
-- PORT NOTE: kept as Java has it, for extensions, but not exposed as a render option
-- (ROACTCHAT-2833).
function Builder.urlSanitizer(self: Builder, urlSanitizer: UrlSanitizer): Builder
	self._urlSanitizer = urlSanitizer
	return self
end

-- Whether URLs of link or images should be percent-encoded, defaults to false.
--
-- If enabled, the following is done:
--
-- * Existing percent-encoded parts are preserved (e.g. "%20" is kept as "%20")
-- * Reserved characters such as "/" are preserved, except for "[" and "]" (see encodeURI in JS)
-- * Unreserved characters such as "a" are preserved
-- * Other characters such umlauts are percent-encoded
function Builder.percentEncodeUrls(self: Builder, percentEncodeUrls: boolean): Builder
	self._percentEncodeUrls = percentEncodeUrls
	return self
end

-- Whether documents that only contain a single paragraph should be rendered without the <p> tag.
-- Set to true to render without the tag; the default of false always renders the tag.
--
-- PORT NOTE: kept as Java has it, for extensions, but not exposed as a render option
-- (ROACTCHAT-2833).
function Builder.omitSingleParagraphP(self: Builder, omitSingleParagraphP: boolean): Builder
	self._omitSingleParagraphP = omitSingleParagraphP
	return self
end

-- Add a factory for an attribute provider for adding/changing HTML attributes to the rendered
-- tags.
function Builder.attributeProviderFactory(self: Builder, attributeProviderFactory: AttributeProviderFactory): Builder
	table.insert(self._attributeProviderFactories, attributeProviderFactory)
	return self
end

-- Add a factory for instantiating a node renderer (done when rendering). This allows to override
-- the rendering of node types or define rendering for custom node types.
--
-- If multiple node renderers for the same node type are created, the one from the factory that
-- was added first "wins". (This is how the rendering for core node types can be overridden; the
-- default rendering comes last.)
function Builder.nodeRendererFactory(self: Builder, nodeRendererFactory: HtmlNodeRendererFactory): Builder
	table.insert(self._nodeRendererFactories, nodeRendererFactory)
	return self
end

-- PORT NOTE: Java's Iterable<? extends Extension> is an array. HtmlRenderer.HtmlRendererExtension
-- is Extension's extendHtmlRenderer field (see Extension.lua), so `instanceof
-- HtmlRendererExtension` is a nil check and the extension is called right here, in list order, as
-- in Java.
function Builder.extensions(self: Builder, extensions: { Extension }): Builder
	for _, extension in ipairs(extensions) do
		local extendHtmlRenderer = extension.extendHtmlRenderer
		if extendHtmlRenderer ~= nil then
			extendHtmlRenderer(self)
		end
	end
	return self
end

HtmlRenderer.Builder = Builder

-- PORT NOTE: the HtmlRendererExtension interface is Extension's extendHtmlRenderer field (see
-- Extension.lua).

return HtmlRenderer
