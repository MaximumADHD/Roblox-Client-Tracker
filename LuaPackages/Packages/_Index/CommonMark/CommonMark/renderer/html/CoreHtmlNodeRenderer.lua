-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/renderer/html/CoreHtmlNodeRenderer.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local AbstractVisitor = require(Root.node.AbstractVisitor)
local HtmlNodeRendererContext = require(Root.renderer.html.HtmlNodeRendererContext)
local HtmlWriter = require(Root.renderer.html.HtmlWriter)
local LinkedHashMap = require(Root.internal.port.LinkedHashMap)
local Nodes = require(Root.node.Nodes)

type AbstractVisitor = AbstractVisitor.AbstractVisitor
type BlockQuote = Nodes.BlockQuote
type BulletList = Nodes.BulletList
type Code = Nodes.Code
type Document = Nodes.Document
type Emphasis = Nodes.Emphasis
type FencedCodeBlock = Nodes.FencedCodeBlock
type HardLineBreak = Nodes.HardLineBreak
type Heading = Nodes.Heading
type HtmlBlock = Nodes.HtmlBlock
type HtmlInline = Nodes.HtmlInline
type HtmlNodeRendererContext = HtmlNodeRendererContext.HtmlNodeRendererContext
type HtmlWriter = HtmlWriter.HtmlWriter
type Image = Nodes.Image
type IndentedCodeBlock = Nodes.IndentedCodeBlock
type Link = Nodes.Link
type LinkedHashMap<K, V> = LinkedHashMap.LinkedHashMap<K, V>
type ListBlock = Nodes.ListBlock
type ListItem = Nodes.ListItem
type Node = Nodes.Node
type OrderedList = Nodes.OrderedList
type Paragraph = Nodes.Paragraph
type SoftLineBreak = Nodes.SoftLineBreak
type StrongEmphasis = Nodes.StrongEmphasis
type Text = Nodes.Text
type ThematicBreak = Nodes.ThematicBreak

local find, sub = string.find, string.sub

-- PORT NOTE: the private nested AltTextVisitor is hoisted above its first use, in visitImage.
local AltTextVisitor = setmetatable({}, { __index = AbstractVisitor })
AltTextVisitor.__index = AltTextVisitor

type AltTextVisitorFields = {
	_sb: { string },
	_n: number,
	getAltText: (self: AltTextVisitor) -> string,
}

type AltTextVisitor = AbstractVisitor & AltTextVisitorFields

function AltTextVisitor.new(): AltTextVisitor
	return setmetatable({ _sb = {}, _n = 0 }, AltTextVisitor) :: any
end

function AltTextVisitor.getAltText(self: AltTextVisitor): string
	return table.concat(self._sb)
end

-- PORT NOTE: a nil literal appends "null", as StringBuilder.append does with a null String.
local function orNull(s: string?): string
	return if s ~= nil then s else "null"
end

function AltTextVisitor.visitText(self: AltTextVisitor, text: Text)
	self._n += 1
	self._sb[self._n] = orNull(text.literal)
end

function AltTextVisitor.visitCode(self: AltTextVisitor, code: Code)
	self._n += 1
	self._sb[self._n] = orNull(code.literal)
end

function AltTextVisitor.visitSoftLineBreak(self: AltTextVisitor, _softLineBreak: SoftLineBreak)
	self._n += 1
	self._sb[self._n] = "\n"
end

function AltTextVisitor.visitHardLineBreak(self: AltTextVisitor, _hardLineBreak: HardLineBreak)
	self._n += 1
	self._sb[self._n] = "\n"
end

-- The node renderer that renders all the core nodes (comes last in the order of node renderers).
local CoreHtmlNodeRenderer = setmetatable({}, { __index = AbstractVisitor })
CoreHtmlNodeRenderer.__index = CoreHtmlNodeRenderer

type CoreHtmlNodeRendererFields = {
	context: HtmlNodeRendererContext,
	_html: HtmlWriter,
	getNodeTypes: (self: CoreHtmlNodeRenderer) -> { string },
	render: (self: CoreHtmlNodeRenderer, node: Node) -> (),
	renderCodeBlock: (
		self: CoreHtmlNodeRenderer,
		literal: string,
		node: Node,
		attributes: LinkedHashMap<string, string?>
	) -> (),
	renderListBlock: (
		self: CoreHtmlNodeRenderer,
		listBlock: ListBlock,
		tagName: string,
		attributes: LinkedHashMap<string, string?>
	) -> (),
	isInTightList: (self: CoreHtmlNodeRenderer, paragraph: Paragraph) -> boolean,
	getAttrs: (
		self: CoreHtmlNodeRenderer,
		node: Node,
		tagName: string,
		defaultAttributes: LinkedHashMap<string, string?>?
	) -> LinkedHashMap<string, string?>,
}

export type CoreHtmlNodeRenderer = AbstractVisitor & CoreHtmlNodeRendererFields

-- PORT NOTE: `extends AbstractVisitor implements NodeRenderer`: the class inherits from
-- AbstractVisitor (porting-from-java.md Inheritance), and is cast where it's passed as a
-- NodeRenderer. Map.of() is LinkedHashMap.of() and new LinkedHashMap<>() is LinkedHashMap.new().
function CoreHtmlNodeRenderer.new(context: HtmlNodeRendererContext): CoreHtmlNodeRenderer
	return setmetatable({ context = context, _html = context:getWriter() }, CoreHtmlNodeRenderer) :: any
end

-- PORT NOTE: Set.of(Document.class, ...) is a frozen array of the same kinds in the same order.
local NODE_TYPES: { string } = table.freeze({
	"Document",
	"Heading",
	"Paragraph",
	"BlockQuote",
	"BulletList",
	"FencedCodeBlock",
	"HtmlBlock",
	"ThematicBreak",
	"IndentedCodeBlock",
	"Link",
	"ListItem",
	"OrderedList",
	"Image",
	"Emphasis",
	"StrongEmphasis",
	"Text",
	"Code",
	"HtmlInline",
	"SoftLineBreak",
	"HardLineBreak",
})

function CoreHtmlNodeRenderer.getNodeTypes(_self: CoreHtmlNodeRenderer): { string }
	return NODE_TYPES
end

function CoreHtmlNodeRenderer.render(self: CoreHtmlNodeRenderer, node: Node)
	node:accept(self)
end

function CoreHtmlNodeRenderer.visitDocument(self: CoreHtmlNodeRenderer, document: Document)
	-- No rendering itself
	self:visitChildren(document)
end

function CoreHtmlNodeRenderer.visitHeading(self: CoreHtmlNodeRenderer, heading: Heading)
	local htag = `h{heading.level}`
	self._html:line()
	self._html:tag(htag, self:getAttrs(heading, htag))
	self:visitChildren(heading)
	self._html:tag("/" .. htag)
	self._html:line()
end

function CoreHtmlNodeRenderer.visitParagraph(self: CoreHtmlNodeRenderer, paragraph: Paragraph)
	local parent = paragraph:getParent()
	local omitP = self:isInTightList(paragraph)
		or (
			self.context:shouldOmitSingleParagraphP()
			and parent ~= nil
			and parent.kind == "Document"
			and paragraph:getPrevious() == nil
			and paragraph:getNext() == nil
		)
	if not omitP then
		self._html:line()
		self._html:tag("p", self:getAttrs(paragraph, "p"))
	end
	self:visitChildren(paragraph)
	if not omitP then
		self._html:tag("/p")
		self._html:line()
	end
end

function CoreHtmlNodeRenderer.visitBlockQuote(self: CoreHtmlNodeRenderer, blockQuote: BlockQuote)
	self._html:line()
	self._html:tag("blockquote", self:getAttrs(blockQuote, "blockquote"))
	self._html:line()
	self:visitChildren(blockQuote)
	self._html:line()
	self._html:tag("/blockquote")
	self._html:line()
end

function CoreHtmlNodeRenderer.visitBulletList(self: CoreHtmlNodeRenderer, bulletList: BulletList)
	self:renderListBlock(bulletList, "ul", self:getAttrs(bulletList, "ul"))
end

function CoreHtmlNodeRenderer.visitFencedCodeBlock(self: CoreHtmlNodeRenderer, fencedCodeBlock: FencedCodeBlock)
	local literal = fencedCodeBlock.literal :: string
	local attributes: LinkedHashMap<string, string?> = LinkedHashMap.new()
	local info = fencedCodeBlock.info
	if info ~= nil and info ~= "" then
		local space = (find(info, " ", 1, true) or 0) - 1
		local language
		if space == -1 then
			language = info
		else
			language = sub(info, 1, space)
		end
		attributes:put("class", "language-" .. language)
	end
	self:renderCodeBlock(literal, fencedCodeBlock, attributes)
end

function CoreHtmlNodeRenderer.visitHtmlBlock(self: CoreHtmlNodeRenderer, htmlBlock: HtmlBlock)
	self._html:line()
	if self.context:shouldEscapeHtml() then
		self._html:tag("p", self:getAttrs(htmlBlock, "p"))
		self._html:text(htmlBlock.literal :: string)
		self._html:tag("/p")
	else
		self._html:raw(htmlBlock.literal :: string)
	end
	self._html:line()
end

function CoreHtmlNodeRenderer.visitThematicBreak(self: CoreHtmlNodeRenderer, thematicBreak: ThematicBreak)
	self._html:line()
	self._html:tag("hr", self:getAttrs(thematicBreak, "hr"), true)
	self._html:line()
end

function CoreHtmlNodeRenderer.visitIndentedCodeBlock(self: CoreHtmlNodeRenderer, indentedCodeBlock: IndentedCodeBlock)
	self:renderCodeBlock(indentedCodeBlock.literal :: string, indentedCodeBlock, LinkedHashMap.of())
end

function CoreHtmlNodeRenderer.visitLink(self: CoreHtmlNodeRenderer, link: Link)
	local attrs: LinkedHashMap<string, string?> = LinkedHashMap.new()
	local url = link.destination :: string

	if self.context:shouldSanitizeUrls() then
		url = self.context:urlSanitizer():sanitizeLinkUrl(url)
		attrs:put("rel", "nofollow")
	end

	url = self.context:encodeUrl(url)
	attrs:put("href", url)
	if link.title ~= nil then
		attrs:put("title", link.title)
	end
	self._html:tag("a", self:getAttrs(link, "a", attrs))
	self:visitChildren(link)
	self._html:tag("/a")
end

function CoreHtmlNodeRenderer.visitListItem(self: CoreHtmlNodeRenderer, listItem: ListItem)
	self._html:tag("li", self:getAttrs(listItem, "li"))
	self:visitChildren(listItem)
	self._html:tag("/li")
	self._html:line()
end

function CoreHtmlNodeRenderer.visitOrderedList(self: CoreHtmlNodeRenderer, orderedList: OrderedList)
	local start = if orderedList.markerStartNumber ~= nil then orderedList.markerStartNumber else 1
	local attrs: LinkedHashMap<string, string?> = LinkedHashMap.new()
	if start ~= 1 then
		attrs:put("start", tostring(start))
	end
	self:renderListBlock(orderedList, "ol", self:getAttrs(orderedList, "ol", attrs))
end

function CoreHtmlNodeRenderer.visitImage(self: CoreHtmlNodeRenderer, image: Image)
	local url = image.destination :: string

	local altTextVisitor = AltTextVisitor.new()
	image:accept(altTextVisitor)
	local altText = altTextVisitor:getAltText()

	local attrs: LinkedHashMap<string, string?> = LinkedHashMap.new()
	if self.context:shouldSanitizeUrls() then
		url = self.context:urlSanitizer():sanitizeImageUrl(url)
	end

	attrs:put("src", self.context:encodeUrl(url))
	attrs:put("alt", altText)
	if image.title ~= nil then
		attrs:put("title", image.title)
	end

	self._html:tag("img", self:getAttrs(image, "img", attrs), true)
end

function CoreHtmlNodeRenderer.visitEmphasis(self: CoreHtmlNodeRenderer, emphasis: Emphasis)
	self._html:tag("em", self:getAttrs(emphasis, "em"))
	self:visitChildren(emphasis)
	self._html:tag("/em")
end

function CoreHtmlNodeRenderer.visitStrongEmphasis(self: CoreHtmlNodeRenderer, strongEmphasis: StrongEmphasis)
	self._html:tag("strong", self:getAttrs(strongEmphasis, "strong"))
	self:visitChildren(strongEmphasis)
	self._html:tag("/strong")
end

function CoreHtmlNodeRenderer.visitText(self: CoreHtmlNodeRenderer, text: Text)
	self._html:text(text.literal :: string)
end

function CoreHtmlNodeRenderer.visitCode(self: CoreHtmlNodeRenderer, code: Code)
	self._html:tag("code", self:getAttrs(code, "code"))
	self._html:text(code.literal :: string)
	self._html:tag("/code")
end

function CoreHtmlNodeRenderer.visitHtmlInline(self: CoreHtmlNodeRenderer, htmlInline: HtmlInline)
	if self.context:shouldEscapeHtml() then
		self._html:text(htmlInline.literal :: string)
	else
		self._html:raw(htmlInline.literal :: string)
	end
end

function CoreHtmlNodeRenderer.visitSoftLineBreak(self: CoreHtmlNodeRenderer, _softLineBreak: SoftLineBreak)
	self._html:raw(self.context:getSoftbreak())
end

function CoreHtmlNodeRenderer.visitHardLineBreak(self: CoreHtmlNodeRenderer, hardLineBreak: HardLineBreak)
	self._html:tag("br", self:getAttrs(hardLineBreak, "br"), true)
	self._html:line()
end

-- PORT NOTE: rendering recurses as in Java (ROACTCHAT-2838): visitChildren -> context:render ->
-- the registered renderer's render -> Node.accept -> visit<Kind> -> visitChildren. Every call on
-- that cycle is Lua-to-Lua, so no C function is on the recursive path, and its depth is the
-- tree's, which the parser bounds by maxOpenBlockParsers plus maxInlineNesting, as in
-- AbstractVisitor.visitChildren. AltTextVisitor walks an image's children with AbstractVisitor's
-- visitChildren under the same bound.
function CoreHtmlNodeRenderer.visitChildren(self: CoreHtmlNodeRenderer, parent: Node)
	local node = parent:getFirstChild()
	while node ~= nil do
		local next = node:getNext()
		self.context:render(node)
		node = next
	end
end

function CoreHtmlNodeRenderer.renderCodeBlock(
	self: CoreHtmlNodeRenderer,
	literal: string,
	node: Node,
	attributes: LinkedHashMap<string, string?>
)
	self._html:line()
	self._html:tag("pre", self:getAttrs(node, "pre"))
	self._html:tag("code", self:getAttrs(node, "code", attributes))
	self._html:text(literal)
	self._html:tag("/code")
	self._html:tag("/pre")
	self._html:line()
end

function CoreHtmlNodeRenderer.renderListBlock(
	self: CoreHtmlNodeRenderer,
	listBlock: ListBlock,
	tagName: string,
	attributes: LinkedHashMap<string, string?>
)
	self._html:line()
	self._html:tag(tagName, attributes)
	self._html:line()
	self:visitChildren(listBlock)
	self._html:line()
	self._html:tag("/" .. tagName)
	self._html:line()
end

-- PORT NOTE: `gramps instanceof ListBlock` is the two-kind check (see ListBlock.lua).
function CoreHtmlNodeRenderer.isInTightList(_self: CoreHtmlNodeRenderer, paragraph: Paragraph): boolean
	local parent = paragraph:getParent()
	if parent ~= nil then
		local gramps = parent:getParent()
		if gramps ~= nil and (gramps.kind == "BulletList" or gramps.kind == "OrderedList") then
			local list = gramps :: ListBlock
			return list.tight
		end
	end
	return false
end

-- PORT NOTE: the getAttrs(node, tagName) and getAttrs(node, tagName, defaultAttributes) overloads
-- are one method with an optional trailing parameter; an omitted one is Map.of(), as in Java.
function CoreHtmlNodeRenderer.getAttrs(
	self: CoreHtmlNodeRenderer,
	node: Node,
	tagName: string,
	defaultAttributes: LinkedHashMap<string, string?>?
): LinkedHashMap<string, string?>
	return self.context:extendAttributes(
		node,
		tagName,
		if defaultAttributes ~= nil then defaultAttributes else LinkedHashMap.of()
	)
end

return CoreHtmlNodeRenderer
