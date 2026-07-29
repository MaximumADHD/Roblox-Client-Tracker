--!strict
local Types = require(script.Parent.Types)
type Node = Types.Node

local function assignIndex(node: Node, index: number)
	node.index = index
	if node.children then
		for i, child in node.children do
			assignIndex(child, i)
		end
	end
end

local function indexTree(rootNode: Node)
	assignIndex(rootNode, 1)
	return rootNode
end

return indexTree
