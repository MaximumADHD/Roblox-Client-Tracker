-- Builds renderer AST nodes (Types.Node). Each node's type comes from DefaultParserOptions'
-- nodeConfiguration, as the existing parsers' getNodeType gives it, and its index and offset are
-- set as it is appended. Index is what IndexTree assigns. The renderer pads every block whose
-- offset isn't 0 (MarkdownRenderer's shouldUseTopPadding), so only the first top-level block gets
-- 0, and inlines get 0. Source offsets aren't used: the profile parses without source spans.

local Root = script:FindFirstAncestor("Markdown")
local DefaultParserOptions = require(Root.Parsers.DefaultParserOptions)
local NodeType = require(Root.Enums.NodeType)
local Types = require(Root.Types)

type RendererNode = Types.Node

local nodeConfiguration: { [string]: { type: NodeType.NodeType } } = DefaultParserOptions.nodeConfiguration :: any

local INLINE_TYPES = table.freeze({
	[NodeType.InlineSpan] = true,
	[NodeType.InlineLeaf] = true,
})

local BLOCK_HOLDING_TYPES = table.freeze({
	[NodeType.Root] = true,
	[NodeType.Block] = true,
})

local RendererNodes = {}

function RendererNodes.create(name: string): RendererNode
	local config = nodeConfiguration[name]
	if config == nil then
		error(`{name} isn't a renderer node`)
	end
	return {
		name = name,
		type = config.type,
		children = {},
		offset = 0,
	}
end

function RendererNodes.offsetAt(parent: RendererNode, node: RendererNode, index: number): number
	return if INLINE_TYPES[node.type] or (parent.type == NodeType.Root and index == 1) then 0 else 1
end

function RendererNodes.append(parent: RendererNode, name: string, attributes: { [string]: any }?): RendererNode
	local node = RendererNodes.create(name)
	node.attributes = attributes :: any
	local children = parent.children
	local index = #children + 1
	children[index] = node
	node.index = index
	node.offset = RendererNodes.offsetAt(parent, node, index)
	return node
end

function RendererNodes.appendText(parent: RendererNode, text: string): RendererNode
	local node = RendererNodes.append(parent, "TEXT")
	node.text = text
	return node
end

function RendererNodes.isInline(node: RendererNode): boolean
	return INLINE_TYPES[node.type] == true
end

-- Whether the node holds blocks (ROOT, LIST, ...) rather than inlines (PARAGRAPH, QUOTE, spans)
function RendererNodes.holdsBlocks(node: RendererNode): boolean
	return BLOCK_HOLDING_TYPES[node.type] == true
end

return RendererNodes
