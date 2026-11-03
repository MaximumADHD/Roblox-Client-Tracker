-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/node/AbstractVisitor.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local BlockQuote = require(Root.node.BlockQuote)
local BulletList = require(Root.node.BulletList)
local Code = require(Root.node.Code)
local CustomBlock = require(Root.node.CustomBlock)
local CustomNode = require(Root.node.CustomNode)
local Document = require(Root.node.Document)
local Emphasis = require(Root.node.Emphasis)
local FencedCodeBlock = require(Root.node.FencedCodeBlock)
local HardLineBreak = require(Root.node.HardLineBreak)
local Heading = require(Root.node.Heading)
local HtmlBlock = require(Root.node.HtmlBlock)
local HtmlInline = require(Root.node.HtmlInline)
local Image = require(Root.node.Image)
local IndentedCodeBlock = require(Root.node.IndentedCodeBlock)
local Link = require(Root.node.Link)
local LinkReferenceDefinition = require(Root.node.LinkReferenceDefinition)
local ListItem = require(Root.node.ListItem)
local Node = require(Root.node.Node)
local OrderedList = require(Root.node.OrderedList)
local Paragraph = require(Root.node.Paragraph)
local SoftLineBreak = require(Root.node.SoftLineBreak)
local StrongEmphasis = require(Root.node.StrongEmphasis)
local Text = require(Root.node.Text)
local ThematicBreak = require(Root.node.ThematicBreak)

type BlockQuote = BlockQuote.BlockQuote
type BulletList = BulletList.BulletList
type Code = Code.Code
type CustomBlock = CustomBlock.CustomBlock
type CustomNode = CustomNode.CustomNode
type Document = Document.Document
type Emphasis = Emphasis.Emphasis
type FencedCodeBlock = FencedCodeBlock.FencedCodeBlock
type HardLineBreak = HardLineBreak.HardLineBreak
type Heading = Heading.Heading
type HtmlBlock = HtmlBlock.HtmlBlock
type HtmlInline = HtmlInline.HtmlInline
type Image = Image.Image
type IndentedCodeBlock = IndentedCodeBlock.IndentedCodeBlock
type Link = Link.Link
type LinkReferenceDefinition = LinkReferenceDefinition.LinkReferenceDefinition
type ListItem = ListItem.ListItem
type Node = Node.Node
type OrderedList = OrderedList.OrderedList
type Paragraph = Paragraph.Paragraph
type SoftLineBreak = SoftLineBreak.SoftLineBreak
type StrongEmphasis = StrongEmphasis.StrongEmphasis
type Text = Text.Text
type ThematicBreak = ThematicBreak.ThematicBreak

local AbstractVisitor = {}
AbstractVisitor.__index = AbstractVisitor

type AbstractVisitorFields = {
	visitBlockQuote: (self: AbstractVisitor, blockQuote: BlockQuote) -> (),
	visitBulletList: (self: AbstractVisitor, bulletList: BulletList) -> (),
	visitCode: (self: AbstractVisitor, code: Code) -> (),
	visitDocument: (self: AbstractVisitor, document: Document) -> (),
	visitEmphasis: (self: AbstractVisitor, emphasis: Emphasis) -> (),
	visitFencedCodeBlock: (self: AbstractVisitor, fencedCodeBlock: FencedCodeBlock) -> (),
	visitHardLineBreak: (self: AbstractVisitor, hardLineBreak: HardLineBreak) -> (),
	visitHeading: (self: AbstractVisitor, heading: Heading) -> (),
	visitThematicBreak: (self: AbstractVisitor, thematicBreak: ThematicBreak) -> (),
	visitHtmlInline: (self: AbstractVisitor, htmlInline: HtmlInline) -> (),
	visitHtmlBlock: (self: AbstractVisitor, htmlBlock: HtmlBlock) -> (),
	visitImage: (self: AbstractVisitor, image: Image) -> (),
	visitIndentedCodeBlock: (self: AbstractVisitor, indentedCodeBlock: IndentedCodeBlock) -> (),
	visitLink: (self: AbstractVisitor, link: Link) -> (),
	visitListItem: (self: AbstractVisitor, listItem: ListItem) -> (),
	visitOrderedList: (self: AbstractVisitor, orderedList: OrderedList) -> (),
	visitParagraph: (self: AbstractVisitor, paragraph: Paragraph) -> (),
	visitSoftLineBreak: (self: AbstractVisitor, softLineBreak: SoftLineBreak) -> (),
	visitStrongEmphasis: (self: AbstractVisitor, strongEmphasis: StrongEmphasis) -> (),
	visitText: (self: AbstractVisitor, text: Text) -> (),
	visitLinkReferenceDefinition: (self: AbstractVisitor, linkReferenceDefinition: LinkReferenceDefinition) -> (),
	visitCustomBlock: (self: AbstractVisitor, customBlock: CustomBlock) -> (),
	visitCustomNode: (self: AbstractVisitor, customNode: CustomNode) -> (),
	visitChildren: (self: AbstractVisitor, parent: Node) -> (),
}

export type AbstractVisitor = typeof(setmetatable({} :: AbstractVisitorFields, AbstractVisitor))

-- PORT NOTE: the visit(...) overloads are visit<Kind> methods, as in Visitor.lua (ROACTCHAT-2833).
-- Subclasses inherit with setmetatable(Child, { __index = AbstractVisitor }).

function AbstractVisitor.visitBlockQuote(self: AbstractVisitor, blockQuote: BlockQuote)
	self:visitChildren(blockQuote)
end

function AbstractVisitor.visitBulletList(self: AbstractVisitor, bulletList: BulletList)
	self:visitChildren(bulletList)
end

function AbstractVisitor.visitCode(self: AbstractVisitor, code: Code)
	self:visitChildren(code)
end

function AbstractVisitor.visitDocument(self: AbstractVisitor, document: Document)
	self:visitChildren(document)
end

function AbstractVisitor.visitEmphasis(self: AbstractVisitor, emphasis: Emphasis)
	self:visitChildren(emphasis)
end

function AbstractVisitor.visitFencedCodeBlock(self: AbstractVisitor, fencedCodeBlock: FencedCodeBlock)
	self:visitChildren(fencedCodeBlock)
end

function AbstractVisitor.visitHardLineBreak(self: AbstractVisitor, hardLineBreak: HardLineBreak)
	self:visitChildren(hardLineBreak)
end

function AbstractVisitor.visitHeading(self: AbstractVisitor, heading: Heading)
	self:visitChildren(heading)
end

function AbstractVisitor.visitThematicBreak(self: AbstractVisitor, thematicBreak: ThematicBreak)
	self:visitChildren(thematicBreak)
end

function AbstractVisitor.visitHtmlInline(self: AbstractVisitor, htmlInline: HtmlInline)
	self:visitChildren(htmlInline)
end

function AbstractVisitor.visitHtmlBlock(self: AbstractVisitor, htmlBlock: HtmlBlock)
	self:visitChildren(htmlBlock)
end

function AbstractVisitor.visitImage(self: AbstractVisitor, image: Image)
	self:visitChildren(image)
end

function AbstractVisitor.visitIndentedCodeBlock(self: AbstractVisitor, indentedCodeBlock: IndentedCodeBlock)
	self:visitChildren(indentedCodeBlock)
end

function AbstractVisitor.visitLink(self: AbstractVisitor, link: Link)
	self:visitChildren(link)
end

function AbstractVisitor.visitListItem(self: AbstractVisitor, listItem: ListItem)
	self:visitChildren(listItem)
end

function AbstractVisitor.visitOrderedList(self: AbstractVisitor, orderedList: OrderedList)
	self:visitChildren(orderedList)
end

function AbstractVisitor.visitParagraph(self: AbstractVisitor, paragraph: Paragraph)
	self:visitChildren(paragraph)
end

function AbstractVisitor.visitSoftLineBreak(self: AbstractVisitor, softLineBreak: SoftLineBreak)
	self:visitChildren(softLineBreak)
end

function AbstractVisitor.visitStrongEmphasis(self: AbstractVisitor, strongEmphasis: StrongEmphasis)
	self:visitChildren(strongEmphasis)
end

function AbstractVisitor.visitText(self: AbstractVisitor, text: Text)
	self:visitChildren(text)
end

function AbstractVisitor.visitLinkReferenceDefinition(
	self: AbstractVisitor,
	linkReferenceDefinition: LinkReferenceDefinition
)
	self:visitChildren(linkReferenceDefinition)
end

function AbstractVisitor.visitCustomBlock(self: AbstractVisitor, customBlock: CustomBlock)
	self:visitChildren(customBlock)
end

function AbstractVisitor.visitCustomNode(self: AbstractVisitor, customNode: CustomNode)
	self:visitChildren(customNode)
end

-- PORT NOTE: visitChildren stays recursive, as in Java (ROACTCHAT-2838). The cycle is
-- visitChildren -> Node.accept -> visit<Kind> -> visitChildren, all Lua-to-Lua calls, so no C
-- function is on the recursive path. Its depth is the tree's, which the parser bounds by
-- maxOpenBlockParsers plus maxInlineNesting (100 each by default, 32 in the Roblox profile): a
-- few hundred Lua frames, far below Luau's Lua call limit. As in Java, lifting the caps or
-- building a deeper tree by hand lifts the bound.
function AbstractVisitor.visitChildren(self: AbstractVisitor, parent: Node)
	local node = parent:getFirstChild()
	while node ~= nil do
		-- A subclass of this visitor might modify the node, resulting in getNext returning a
		-- different node or no node after visiting it. So get the next node before visiting.
		local next = node:getNext()
		node:accept(self)
		node = next
	end
end

return AbstractVisitor
