-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/node/Visitor.java @ commonmark-parent-0.30.0
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
type OrderedList = OrderedList.OrderedList
type Paragraph = Paragraph.Paragraph
type SoftLineBreak = SoftLineBreak.SoftLineBreak
type StrongEmphasis = StrongEmphasis.StrongEmphasis
type Text = Text.Text
type ThematicBreak = ThematicBreak.ThematicBreak

-- PORT NOTE: the overloaded visit(...) methods are named visit<Kind> (ROACTCHAT-2833), which is
-- what Node.accept dispatches on. Each takes its kind's type.
export type Visitor = {
	visitBlockQuote: (self: Visitor, blockQuote: BlockQuote) -> (),
	visitBulletList: (self: Visitor, bulletList: BulletList) -> (),
	visitCode: (self: Visitor, code: Code) -> (),
	visitDocument: (self: Visitor, document: Document) -> (),
	visitEmphasis: (self: Visitor, emphasis: Emphasis) -> (),
	visitFencedCodeBlock: (self: Visitor, fencedCodeBlock: FencedCodeBlock) -> (),
	visitHardLineBreak: (self: Visitor, hardLineBreak: HardLineBreak) -> (),
	visitHeading: (self: Visitor, heading: Heading) -> (),
	visitThematicBreak: (self: Visitor, thematicBreak: ThematicBreak) -> (),
	visitHtmlInline: (self: Visitor, htmlInline: HtmlInline) -> (),
	visitHtmlBlock: (self: Visitor, htmlBlock: HtmlBlock) -> (),
	visitImage: (self: Visitor, image: Image) -> (),
	visitIndentedCodeBlock: (self: Visitor, indentedCodeBlock: IndentedCodeBlock) -> (),
	visitLink: (self: Visitor, link: Link) -> (),
	visitListItem: (self: Visitor, listItem: ListItem) -> (),
	visitOrderedList: (self: Visitor, orderedList: OrderedList) -> (),
	visitParagraph: (self: Visitor, paragraph: Paragraph) -> (),
	visitSoftLineBreak: (self: Visitor, softLineBreak: SoftLineBreak) -> (),
	visitStrongEmphasis: (self: Visitor, strongEmphasis: StrongEmphasis) -> (),
	visitText: (self: Visitor, text: Text) -> (),
	visitLinkReferenceDefinition: (self: Visitor, linkReferenceDefinition: LinkReferenceDefinition) -> (),
	visitCustomBlock: (self: Visitor, customBlock: CustomBlock) -> (),
	visitCustomNode: (self: Visitor, customNode: CustomNode) -> (),
}

return {}
