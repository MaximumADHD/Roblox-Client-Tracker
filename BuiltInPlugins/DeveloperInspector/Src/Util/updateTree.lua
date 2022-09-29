local Plugin = script.Parent.Parent.Parent
local Dash = require(Plugin.Packages.Dash)
local collectArray = Dash.collectArray
local collectSet = Dash.collectSet
local copy = Dash.copy
local forEach = Dash.forEach
local reduce = Dash.reduce

-- Walk a node tree by the path provided
local function walk(node, path)
	return reduce(path, function(current, key)
		if current and current.Children then
			return current.Children[key]
		else
			return nil
		end
	end, node)
end

-- During update we receive a truncated tree of children from the target, so we need to merge
-- back into the new table any surviving nested descendants from the current state.
local function mergeChildren(currentChildren, newChildren)
	if currentChildren then
		-- Iterate through new children and incorperate any current ones if truncated.
		forEach(newChildren, function(newChild, key)
			local currentChild = currentChildren[key]
			if not currentChild then
				-- We don't have a record for this child, so no merge required.
				return
			end
			if newChild.Children then
				-- Merge the children recusively
				newChild.Children = mergeChildren(currentChild.Children, newChild.Children)
			else
				-- The new child has been truncated, so incorperate the current children.
				newChild.Children = currentChild.Children
			end
		end)
	end
	return newChildren
end

type UpdateTreeProps = {
	-- Current expanded row map
	expanded: Types.Map<any, boolean>,
	-- Current expanded row map
	selected: Types.Map<any, boolean>,
	-- Current root
	root: Types.Array<any>,
	-- New children
	children: Types.Map<string, any>,
	-- Path to insert new children at
	path: string,
}

local function updateTree(options)
	-- Get the paths of expanded and selected items
	local expandedPaths = collectArray(options.expanded, function(item, isExpanded)
		return isExpanded and item.Path or nil
	end)
	local selectedPaths = collectArray(options.selected, function(item, isSelected)
		return isSelected and item.Path or nil
	end)
	local root
	if #options.path == 0 then
		root = {Children = options.children}
	else
		-- Build a new tree with the new children inserted at the path provided.
		root = copy(options.root)
		-- We only need recreate nodes which are direct ancestors of the updated node.
		local currentNode = root
		forEach(options.path, function(key)
			-- We ignore sub-trees which we don't have a mount point for.
			if currentNode == nil or currentNode.Children == nil then
				return
			end
			local currentChild = currentNode.Children[key]
			if currentChild then
				local child = copy(currentNode.Children[key])
				currentNode.Children[key] = child
				currentNode = child
			else
				currentNode = nil
			end
		end)
		if currentNode then
			-- Merge the new children into the tree
			currentNode.Children = mergeChildren(currentNode.Children, options.children)
		end
	end

	-- Map the toggled & selected paths to any new item tables created.
	local selected = collectSet(selectedPaths, function(_index, path)
		return walk(root, path)
	end)
	local expanded = collectSet(expandedPaths, function(_index, path)
		return walk(root, path)
	end)
	-- Return the updated values
	return {
		root = root,
		selected = selected,
		expanded = expanded
	}
end

return updateTree