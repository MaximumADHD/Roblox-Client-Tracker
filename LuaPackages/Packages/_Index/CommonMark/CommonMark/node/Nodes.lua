-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/node/Nodes.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local BlockQuote = require(Root.node.BlockQuote)
local BulletList = require(Root.node.BulletList)
local Code = require(Root.node.Code)
local CustomBlock = require(Root.node.CustomBlock)
local CustomNode = require(Root.node.CustomNode)
local Delimited = require(Root.node.Delimited)
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
local ListBlock = require(Root.node.ListBlock)
local ListItem = require(Root.node.ListItem)
local Node = require(Root.node.Node)
local OrderedList = require(Root.node.OrderedList)
local Paragraph = require(Root.node.Paragraph)
local SoftLineBreak = require(Root.node.SoftLineBreak)
local StrongEmphasis = require(Root.node.StrongEmphasis)
local Text = require(Root.node.Text)
local ThematicBreak = require(Root.node.ThematicBreak)

export type BlockQuote = BlockQuote.BlockQuote
export type BulletList = BulletList.BulletList
export type Code = Code.Code
export type CustomBlock = CustomBlock.CustomBlock
export type CustomNode = CustomNode.CustomNode
export type Delimited = Delimited.Delimited
export type Document = Document.Document
export type Emphasis = Emphasis.Emphasis
export type FencedCodeBlock = FencedCodeBlock.FencedCodeBlock
export type HardLineBreak = HardLineBreak.HardLineBreak
export type Heading = Heading.Heading
export type HtmlBlock = HtmlBlock.HtmlBlock
export type HtmlInline = HtmlInline.HtmlInline
export type Image = Image.Image
export type IndentedCodeBlock = IndentedCodeBlock.IndentedCodeBlock
export type Link = Link.Link
export type LinkReferenceDefinition = LinkReferenceDefinition.LinkReferenceDefinition
export type ListBlock = ListBlock.ListBlock
export type ListItem = ListItem.ListItem
export type Node = Node.Node
export type OrderedList = OrderedList.OrderedList
export type Paragraph = Paragraph.Paragraph
export type SoftLineBreak = SoftLineBreak.SoftLineBreak
export type StrongEmphasis = StrongEmphasis.StrongEmphasis
export type Text = Text.Text
export type ThematicBreak = ThematicBreak.ThematicBreak

local Nodes = {}

-- PORT NOTE: Nodes is also where the kind constructors live (ROACTCHAT-2833): `new Heading()` is
-- `Nodes.Heading()`. Each kind's module returns its constructor and exports its type, and is
-- re-exported here with one require, one type line and one field.
Nodes.BlockQuote = BlockQuote
Nodes.BulletList = BulletList
Nodes.Code = Code
Nodes.Document = Document
Nodes.Emphasis = Emphasis
Nodes.FencedCodeBlock = FencedCodeBlock
Nodes.HardLineBreak = HardLineBreak
Nodes.Heading = Heading
Nodes.HtmlBlock = HtmlBlock
Nodes.HtmlInline = HtmlInline
Nodes.Image = Image
Nodes.IndentedCodeBlock = IndentedCodeBlock
Nodes.Link = Link
Nodes.LinkReferenceDefinition = LinkReferenceDefinition
Nodes.ListItem = ListItem
Nodes.OrderedList = OrderedList
Nodes.Paragraph = Paragraph
Nodes.SoftLineBreak = SoftLineBreak
Nodes.StrongEmphasis = StrongEmphasis
Nodes.Text = Text
Nodes.ThematicBreak = ThematicBreak

-- PORT NOTE: NodeIterable and NodeIterator become one stateful iterator (porting-from-java.md,
-- Nodes). Like Java's next(), it reads the following node before the loop body runs, so the body
-- may move or unlink the node it was given.
function Nodes.between(start: Node, finish: Node?): () -> Node
	local node = start:getNext()
	return function(): Node
		if node ~= nil and node ~= finish then
			local result = node
			node = result:getNext()
			return result
		end
		-- Typed Node rather than Node? so loop bodies get a non-optional node; nil ends the loop
		return nil :: any
	end
end

return Nodes
