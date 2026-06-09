local Root = script:FindFirstAncestor("Markdown")
local Types = require(Root.Types)

local function assignIndex(node: Types.Node, index: number)
	node.index = index
	if node.children then
		for i, child in node.children do
			assignIndex(child, i)
		end
	end
end

local function indexTree(rootNode: Types.Node)
	assignIndex(rootNode, 1)
	return rootNode
end

return indexTree
