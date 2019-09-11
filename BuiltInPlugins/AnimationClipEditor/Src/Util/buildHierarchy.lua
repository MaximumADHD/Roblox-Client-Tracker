--[[
	Builds a table hierarchy for the Editor.
	Parameters:
		variant node = A node of the hierarchy
		function getChildren(node) = A function that, given a node, returns
			the node's children as a list.
]]

local function buildHierarchy(node, getChildren)
	local tree = {}
	local children = getChildren(node)

	if children then
		for _, child in ipairs(children) do
			tree[child] = buildHierarchy(child, getChildren)
		end
	end
	return tree
end

return buildHierarchy