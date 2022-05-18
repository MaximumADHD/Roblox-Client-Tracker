--[[
	Provides a global EditingItem object to context.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local DraggerFramework = Plugin.Packages.DraggerFramework
local Signal = require(DraggerFramework.Utility.Signal)

local Framework = require(Plugin.Packages.Framework)
local ContextItem = Framework.ContextServices.ContextItem

local EditingItemContext = ContextItem:extend("EditingItemContext")

function EditingItemContext.new()
	local self = {}

	setmetatable(self, EditingItemContext)

	self.sourceItemChangedSignal = Signal.new()
	self.editingItemChangedSignal = Signal.new()

	return self
end

function EditingItemContext:setSourceItem(item)
	self.item = item
	self.sourceItemChangedSignal:Fire(item)
end

function EditingItemContext:setSourceItemWithUniqueDeformerNames(item)
	self.sourceItemWithUniqueDeformerNames = item
end

function EditingItemContext:setEditingItem(item)
	self.editingItem = item
	self.editingItemChangedSignal:Fire(item)
end

function EditingItemContext:clear()
	self.item = nil
	self:setEditingItem(nil)
end

function EditingItemContext:getItem()
	return self.editingItem
end

function EditingItemContext:getSourceItem()
	return self.item
end

function EditingItemContext:getSourceItemWithUniqueDeformerNames()
	return self.sourceItemWithUniqueDeformerNames
end

function EditingItemContext:getSourceItemChangedSignal()
	return self.sourceItemChangedSignal
end

function EditingItemContext:getEditingItemChangedSignal()
	return self.editingItemChangedSignal
end

return EditingItemContext