-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/renderer/html/HtmlNodeRendererContext.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local HtmlWriter = require(Root.renderer.html.HtmlWriter)
local LinkedHashMap = require(Root.internal.port.LinkedHashMap)
local Node = require(Root.node.Node)
local UrlSanitizer = require(Root.renderer.html.UrlSanitizer)

type HtmlWriter = HtmlWriter.HtmlWriter
type LinkedHashMap<K, V> = LinkedHashMap.LinkedHashMap<K, V>
type Node = Node.Node
type UrlSanitizer = UrlSanitizer.UrlSanitizer

-- PORT NOTE: Map<String, String> is LinkedHashMap<string, string?> (internal/port/LinkedHashMap),
-- the insertion-ordered map commonmark-java builds attributes in; a nil value is a bare attribute.
-- PORT NOTE: shouldOmitSingleParagraphP and urlSanitizer stay on the interface, because
-- CoreHtmlNodeRenderer calls them, though renderHtml doesn't expose omitSingleParagraphP or
-- urlSanitizer as options (ROACTCHAT-2833).
export type HtmlNodeRendererContext = {
	-- Returns an encoded URL (depending on the configuration).
	encodeUrl: (self: HtmlNodeRendererContext, url: string) -> string,
	-- Let extensions modify the HTML tag attributes.
	--
	-- node: the node for which the attributes are applied
	-- tagName: the HTML tag name that these attributes are for (e.g. h1, pre, code).
	-- attributes: the attributes that were calculated by the renderer
	-- Returns the extended attributes with added/updated/removed entries.
	extendAttributes: (
		self: HtmlNodeRendererContext,
		node: Node,
		tagName: string,
		attributes: LinkedHashMap<string, string?>
	) -> LinkedHashMap<string, string?>,
	-- Returns the HTML writer to use.
	getWriter: (self: HtmlNodeRendererContext) -> HtmlWriter,
	-- Returns HTML that should be rendered for a soft line break.
	getSoftbreak: (self: HtmlNodeRendererContext) -> string,
	-- Render the specified node and its children using the configured renderers. This should be
	-- used to render child nodes; be careful not to pass the node that is being rendered, that
	-- would result in an endless loop.
	render: (self: HtmlNodeRendererContext, node: Node) -> (),
	-- Returns whether HTML blocks and tags should be escaped or not.
	shouldEscapeHtml: (self: HtmlNodeRendererContext) -> boolean,
	-- Returns whether documents that only contain a single paragraph should be rendered without
	-- the <p> tag.
	shouldOmitSingleParagraphP: (self: HtmlNodeRendererContext) -> boolean,
	-- Returns true if the UrlSanitizer should be used.
	shouldSanitizeUrls: (self: HtmlNodeRendererContext) -> boolean,
	-- Returns the sanitizer to use for securing Link href and Image src if shouldSanitizeUrls()
	-- is true.
	urlSanitizer: (self: HtmlNodeRendererContext) -> UrlSanitizer,
}

return {}
