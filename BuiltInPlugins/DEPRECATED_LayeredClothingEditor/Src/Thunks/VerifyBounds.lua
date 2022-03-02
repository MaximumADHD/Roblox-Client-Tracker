--[[
	Every accessory asset type defines an acceptable bounding box size for any item that is its type.
	This thunk checks to make sure it falls within those bounds.
]]

local Plugin = script.Parent.Parent.Parent

local SetInBounds = require(Plugin.Src.Actions.SetInBounds)

local ModelUtil = require(Plugin.Src.Util.ModelUtil)
local ItemCharacteristics = require(Plugin.Src.Util.ItemCharacteristics)

return function(editingItem)
	return function(store)
		if not editingItem then
			return
		end

		if ItemCharacteristics.isAvatar(editingItem) then
			store:dispatch(SetInBounds(true))
			return
		end

		local state = store:getState()

		local accessoryTypeInfo = state.selectItem.accessoryTypeInfo
		if not accessoryTypeInfo then
			return
		end

		local attachment = editingItem:FindFirstChild(accessoryTypeInfo.Name)
		local weld = editingItem:FindFirstChildWhichIsA("WeldConstraint")
		if not attachment or not weld then
			return nil
		end

		local part1 = weld.Part1
		if not part1 then
			return nil
		end

		local matchingAttachment = part1:FindFirstChild(attachment.Name)
		if not matchingAttachment then
			return nil
		end

		local bounds = accessoryTypeInfo.Bounds
		local offset = accessoryTypeInfo.Offset

		local inBounds = ModelUtil:checkAccessoryBounds(matchingAttachment.WorldPosition + offset, bounds, editingItem.CFrame, editingItem.Size)
		store:dispatch(SetInBounds(inBounds))
	end
end