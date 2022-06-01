local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

return Rodux.createReducer({
	editingItem = nil,
	layeredClothingItemsInList = {},
	manuallyHiddenLayeredClothingItems = {},
	editingCage = nil,
	cagesTransparency = {},
	acessoryTypeInfo = nil,
	size = Vector3.new(1,1,1),
	inBounds = false,
	attachmentPoint = {
		ItemCFrame = CFrame.new(),
		AttachmentCFrame = CFrame.new(),
	},
}, {
	SetManuallyHiddenLayeredClothingItems = function(state, action)
		return Cryo.Dictionary.join(state, {
			manuallyHiddenLayeredClothingItems = action.manuallyHiddenLayeredClothingItems,
		})
	end,
	SetEditingCage = function(state, action)
		return Cryo.Dictionary.join(state, {
			editingCage = action.editingCage,
		})
	end,
	SetCagesTransparency = function(state, action)
		return Cryo.Dictionary.join(state, {
			cagesTransparency = action.cagesTransparency,
		})
	end,
	SetAccessoryTypeInfo = function(state, action)
		return Cryo.Dictionary.join(state, {
			accessoryTypeInfo = action.accessoryTypeInfo,
		})
	end,
	SetAttachmentPoint = function(state, action)
		return Cryo.Dictionary.join(state, {
			attachmentPoint = action.attachmentPoint,
		})
	end,
	SetItemSize = function(state, action)
		return Cryo.Dictionary.join(state, {
			size = action.size,
		})
	end,
	SetInBounds = function(state, action)
		return Cryo.Dictionary.join(state, {
			inBounds = action.inBounds,
		})
	end,
})
