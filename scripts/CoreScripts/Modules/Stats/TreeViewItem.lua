--[[
  Filename: TreeViewItem.lua
  Written by: dbanks
  Description: Generic tree view data stucture.
--]]


--[[ Globals ]]--

--[[ Helper functions ]]--

--[[ Classes ]]--

local TreeViewItem = {}
TreeViewItem.__index = TreeViewItem


function TreeViewItem.new(id, parent) 
	local self = {}
	setmetatable(self, TreeViewItem)

	self._id = id
	self._parent = parent
	self._children = {}
	return self
end  

function TreeViewItem:getValue()
	return self._value
end

function TreeViewItem:getLabel()
	return self._label
end

function TreeViewItem:getChildren()
	return self._children
end

function TreeViewItem:getId()
	return self._id
end

function TreeViewItem:getStackDepth()
	if (self._parent == nil) then
		return 0
	else
		return 1 + self._parent:getStackDepth()
	end
end

function TreeViewItem:setLabelAndValue(label, value) 
	self._label = label
	self._value = value
end

function TreeViewItem:getOrMakeChildById(id) 
	for i, childTreeViewItem in ipairs(self._children) do
		if (childTreeViewItem:getId() == id) then 
			return childTreeViewItem
		end
	end
	
	local newChild = TreeViewItem.new(id, self)
	table.insert(self._children, newChild)
	return newChild
end

return TreeViewItem