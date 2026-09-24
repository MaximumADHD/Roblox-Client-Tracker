--!strict

--[[
	Helper for traversing and manipulating the state of a TreeTable component.

	function EditTree.new(config: EditTreeInterfaceConfig) -> EditTree:
		Creates a new EditTree editor object. The config params passed in to this constructor should match those

		Optional
			config.getChildren: This should return a list of children for a given row - getChildren(row: Item) -> Item[]
				(NOT implemented yet!)
				(Should match the `GetChildren` prop used for your TreeTable.)

			config.getId: This should return a unique ID for a given row - getId(row: Item) -> any
				(Should match the `GetItemId` prop used for your TreeTable.)
]]

local Framework = script:FindFirstAncestor("Util").Parent
local Dash = require(Framework.Parent.Dash)
local append = Dash.append
local copy = Dash.copy
local forEach = Dash.forEach
local join = Dash.join
local reduce = Dash.reduce
local slice = Dash.slice

local insert = table.insert
local remove = table.remove

export type TreeItemId = any
export type TreeItem = {
	Children: { TreeItem }?,
	Path: { number }?,
}
export type TreeColumn = {
	Name: string,
	Key: string,
}
export type TreeItemSet = { [TreeItemId]: boolean }
export type TreeState = {
	Columns: { TreeColumn },
	Expansion: TreeItemSet,
	Hidden: TreeItemSet,
	Selection: TreeItemSet,
	Items: { TreeItem },
}

export type PartialTreeState = {
	Columns: { TreeColumn }?,
	Expansion: TreeItemSet?,
	Hidden: TreeItemSet?,
	Selection: TreeItemSet?,
	Items: { TreeItem }?,
}

type EditTreeInterfaceConfig = {
	getChildren: ((item: TreeItem) -> { TreeItem })?,
	getId: ((item: TreeItem) -> TreeItemId)?,
}

type EditTreeInterface = {
	-- TODO: getChildren is not used below yet - this currently assumes that all items have a `Children` key
	getChildren: (item: TreeItem) -> { TreeItem },
	getId: (item: TreeItem) -> TreeItemId,
}

type _EditTreeData = {
	_interface: EditTreeInterface,
}

type _EditTreeImpl = {
	__index: _EditTreeImpl,
	new: (interface: EditTreeInterfaceConfig) -> EditTree,

	getParent: (self: EditTree, items: { TreeItem }, item: TreeItem) -> TreeItem?,
	getChild: (self: EditTree, items: { TreeItem }, path: { number }) -> TreeItem?,
	insertRow: (self: EditTree, state: TreeState, path: { number }, item: TreeItem, index: number?) -> { TreeItem },
	modifyChildren: (
		self: EditTree,
		state: TreeState,
		path: { number },
		fn: ({ TreeItem }, TreeState, { number }) -> ()
	) -> TreeState,
	removeItem: (self: EditTree, state: TreeState, path: { number }) -> TreeState,
	migrateItemState: (self: EditTree, state: TreeState, prevItem: TreeItem, nextItem: TreeItem) -> (),
	togglePath: (self: EditTree, state: TreeState, path: { number }, expand: boolean?) -> TreeState,
	expandAll: (self: EditTree, items: { TreeItem }?, expansion: { [TreeItem]: boolean }) -> (),
	updateCell: (self: EditTree, state: TreeState, cellDelta: any, path: { number }, columnIndex: number) -> TreeState,
	updatePaths: (self: EditTree, items: { TreeItem }, path: { number }?) -> { TreeItem },
	getStateAdaptor: (self: EditTree, component: any, stateKey: string) -> TreeAdaptor,
	getCallbacks: (self: EditTree, adaptor: TreeAdaptor) -> any,
	expandAncestors: (self: EditTree, items: { TreeItem }, path: { number }) -> TreeItemSet,
	findItemById: (self: EditTree, items: { TreeItem }, itemId: string) -> TreeItem?,
}

type EditTree = typeof(setmetatable({} :: _EditTreeData, {} :: _EditTreeImpl))

local DEFAULT_INTERFACE: EditTreeInterface = {
	getChildren = function(item: any): { TreeItem }
		return item.Children or {}
	end,
	getId = function(item: any): any
		return item
	end,
}

local EditTree: _EditTreeImpl = {} :: _EditTreeImpl
EditTree.__index = EditTree

function EditTree.new(interface: EditTreeInterfaceConfig): EditTree
	local self: _EditTreeData = {
		_interface = join(DEFAULT_INTERFACE, interface),
	}

	return setmetatable(self, EditTree)
end

function EditTree:getParent(items: { TreeItem }, item: TreeItem): TreeItem?
	return self:getChild(items, slice(item.Path, 1, -1))
end

-- Walk a tree by the path provided
function EditTree:getChild(items: { TreeItem }, path: { number }): TreeItem?
	return reduce(path, function(current: TreeItem, key: number): TreeItem?
		if current and current.Children then
			return current.Children[key]
		else
			return nil
		end
	end, { Children = items })
end

function EditTree:insertRow(state: TreeState, path: { number }, item: TreeItem, index: number?): { TreeItem }
	return self:modifyChildren(state, path, function(children): ()
		insert(children, if index then index else #children + 1, item)
		self:updatePaths(children, path)
	end)
end

function EditTree:removeItem(state: TreeState, path: { number }): TreeState
	local parentPath: { number } = copy(path)
	local lastIndex = remove(parentPath)

	return self:modifyChildren(state, parentPath, function(children: { TreeItem }, state: TreeState): ()
		assert(typeof(lastIndex) == "number", "expected last entry in path array to be number")
		local item = children[lastIndex]
		local itemId = self._interface.getChildren(item)
		state.Expansion[itemId] = nil
		state.Selection[itemId] = nil
		remove(children, lastIndex)
		self:updatePaths(children, parentPath)
	end)
end

function EditTree:togglePath(state: TreeState, path: { number }, expand: boolean?): TreeState
	local item = self:getChild(state.Items, path)
	assert(item ~= nil, "expecting item to exist at given path")

	local itemId = self._interface.getId(item)
	local nextExpansion = copy(state.Expansion)
	nextExpansion[itemId] = if expand == nil then not nextExpansion[itemId] else expand
	return join(state, {
		Expansion = nextExpansion,
	})
end

function EditTree:updateCell(state: TreeState, cellDelta: any, path: { number }, columnIndex: number): TreeState
	local parentPath: { number } = copy(path)
	local lastIndex = remove(parentPath)
	local columnKey = state.Columns[columnIndex].Key
	return self:modifyChildren(state, parentPath, function(children: { TreeItem }, state: TreeState): ()
		assert(typeof(lastIndex) == "number", "expected last entry in path array to be number")
		local prevItem = children[lastIndex]
		if not prevItem then
			return
		end
		local nextItem = copy(prevItem)
		self:migrateItemState(state, prevItem, nextItem)
		children[lastIndex] = nextItem
		local nextValue = join(nextItem[columnKey], cellDelta)
		nextItem[columnKey] = nextValue
	end)
end

function EditTree:migrateItemState(state: TreeState, prevItem: TreeItem, nextItem: TreeItem): ()
	local prevItemId = self._interface.getId(prevItem)
	local nextItemId = self._interface.getId(nextItem)

	-- If the item id does not change, then state should not be migrated
	if prevItemId == nextItemId then
		return
	end

	if state.Expansion[prevItemId] ~= nil then
		state.Expansion[nextItemId] = state.Expansion[prevItemId]
		state.Expansion[prevItemId] = nil
	end
	if state.Selection[prevItemId] ~= nil then
		state.Selection[nextItemId] = state.Selection[prevItemId]
		state.Selection[prevItemId] = nil
	end
end

function EditTree:modifyChildren(
	state: TreeState,
	path: { number },
	fn: ({ TreeItem }, TreeState, { number }) -> ()
): TreeState
	local expansion = copy(state.Expansion)
	local selection = copy(state.Selection)
	local nextState = join(state, {
		Items = state.Items,
		Expansion = expansion,
		Selection = selection,
	})
	if #path == 0 then
		nextState.Items = copy(nextState.Items)
		fn(nextState.Items, nextState, path)
	else
		-- We only need recreate nodes which are direct ancestors of the updated item.
		local root = { Children = nextState.Items } :: TreeItem
		local item: TreeItem? = root
		forEach(path, function(key: number)
			-- We ignore sub-trees which we don't have a mount point for.
			if item == nil or item.Children == nil then
				return
			end
			assert(item ~= nil and item.Children ~= nil, "expecting item and children to be valid")
			local prevChild = item.Children[key]
			if prevChild then
				local nextChild = copy(prevChild)
				self:migrateItemState(nextState, prevChild, nextChild)
				item.Children[key] = nextChild
				item = nextChild
			else
				item = nil
			end
		end)
		if item then
			item.Children = copy(item.Children or {})
			fn(item.Children :: { TreeItem }, nextState, path)
		end
		nextState.Items = root.Children
	end
	return nextState
end

function EditTree:updatePaths(items: { TreeItem }, path: { number }?): { TreeItem }
	path = path or {}
	forEach(items, function(item: TreeItem, index: number)
		local childPath = append({}, path, { index })
		item.Path = childPath
		if item.Children then
			self:updatePaths(item.Children, childPath)
		end
	end)
	return items
end

type TreeReducer = (TreeState) -> PartialTreeState
type TreeAdaptor = (TreeReducer) -> ()

function EditTree:getStateAdaptor(component, stateKey: string): TreeAdaptor
	return function(fn)
		component:setState(function(prevState)
			return {
				[stateKey] = join(prevState[stateKey], fn(prevState[stateKey])),
			}
		end)
	end
end

function EditTree:getCallbacks(adaptor: TreeAdaptor)
	return {
		OnExpansionChange = function(expansion)
			adaptor(function(prevState)
				return {
					Expansion = join(prevState.Expansion, expansion),
				}
			end)
		end,
		OnSelectionChange = function(selection)
			adaptor(function()
				return {
					Selection = selection,
				}
			end)
		end,
		OnColumnSizesChange = function(sizes: { UDim })
			adaptor(function()
				return {
					Sizes = sizes,
				}
			end)
		end,
	}
end

function EditTree:findItemById(items: { TreeItem }, itemId: string): TreeItem?
	for _, item in items do
		if self._interface.getId(item) == itemId then
			return item
		end

		local children = self._interface.getChildren(item)
		if children then
			local result = self:findItemById(children, itemId)
			if result then
				return result
			end
		end
	end

	return nil
end

function EditTree:expandAll(items: { TreeItem }?, expansion: { [TreeItem]: boolean }): ()
	if items then
		for _, item in items do
			local itemId = self._interface.getId(item)
			expansion[itemId] = true
			self:expandAll(item.Children, expansion)
		end
	end
end

function EditTree:expandAncestors(items: { TreeItem }, path: { number }): TreeItemSet
	if not path or #path <= 0 then
		return {}
	end

	local expanded: TreeItemSet = {}
	local rootItem: TreeItem = { Children = items }
	local item = rootItem

	for _index, pathValue in path do
		local itemId = self._interface.getId(item)
		if item ~= rootItem then
			expanded[itemId] = true
		end

		if not item.Children then
			break
		end

		assert(item ~= nil and item.Children ~= nil, "expecting item and children to be valid")
		item = item.Children[pathValue]
	end

	return expanded
end

return EditTree
