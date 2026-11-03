-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/internal/renderer/NodeRendererMap.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local Node = require(Root.node.Node)
local NodeRenderer = require(Root.renderer.NodeRenderer)

type Node = Node.Node
type NodeRenderer = NodeRenderer.NodeRenderer

local NodeRendererMap = {}
NodeRendererMap.__index = NodeRendererMap

type NodeRendererMapFields = {
	_nodeRenderers: { NodeRenderer },
	_renderers: { [string]: NodeRenderer },
	add: (self: NodeRendererMap, nodeRenderer: NodeRenderer) -> (),
	render: (self: NodeRendererMap, node: Node) -> (),
	beforeRoot: (self: NodeRendererMap, node: Node) -> (),
	afterRoot: (self: NodeRendererMap, node: Node) -> (),
}

export type NodeRendererMap = typeof(setmetatable({} :: NodeRendererMapFields, NodeRendererMap))

-- PORT NOTE: the Map<Class<? extends Node>, NodeRenderer> is keyed by kind string, as
-- getNodeTypes returns them (ROACTCHAT-2833), and its HashMap capacity hint is dropped.
function NodeRendererMap.new(): NodeRendererMap
	return setmetatable({ _nodeRenderers = {}, _renderers = {} }, NodeRendererMap) :: any
end

-- Set the renderer for each NodeRenderer.getNodeTypes, unless there was already a renderer set
-- (first wins).
function NodeRendererMap.add(self: NodeRendererMap, nodeRenderer: NodeRenderer)
	table.insert(self._nodeRenderers, nodeRenderer)
	for _, nodeType in ipairs(nodeRenderer:getNodeTypes()) do
		-- The first node renderer for a node type "wins".
		if self._renderers[nodeType] == nil then
			self._renderers[nodeType] = nodeRenderer
		end
	end
end

function NodeRendererMap.render(self: NodeRendererMap, node: Node)
	local nodeRenderer = self._renderers[node.kind]
	if nodeRenderer ~= nil then
		nodeRenderer:render(node)
	end
end

function NodeRendererMap.beforeRoot(self: NodeRendererMap, node: Node)
	for _, r in ipairs(self._nodeRenderers) do
		local beforeRoot = r.beforeRoot
		if beforeRoot ~= nil then
			beforeRoot(r, node)
		end
	end
end

function NodeRendererMap.afterRoot(self: NodeRendererMap, node: Node)
	for _, r in ipairs(self._nodeRenderers) do
		local afterRoot = r.afterRoot
		if afterRoot ~= nil then
			afterRoot(r, node)
		end
	end
end

return NodeRendererMap
