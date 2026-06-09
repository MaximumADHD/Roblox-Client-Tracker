local Root = script:FindFirstAncestor("Markdown")
local NodeType = require(Root.Enums.NodeType)
local Types = require(Root.Types)

local function isNodeBlock(node: Types.Node): boolean
	return node.name ~= "TAG" and (node.type == NodeType.Block or node.type == NodeType.TextBlock)
end

return isNodeBlock
