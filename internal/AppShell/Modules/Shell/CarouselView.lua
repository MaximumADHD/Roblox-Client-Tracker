--[[
				// CarouselView.lua

				// View for a carousel. Used for GameGenre screen
				// TODO: Support Vertical?
				//
				// Current this supports a focus that is aligned to the left (0, 0), in the future we
				// could do other alignments if we need them
]]
local CoreGui = Game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")

local UserInputService = game:GetService('UserInputService')

local Utility = require(ShellModules:FindFirstChild('Utility'))
local GameData = require(ShellModules:FindFirstChild('GameData'))


local function createCarouselView()
	local this = {}

	local itemInfos = {}
	local padding = 0
	local itemSizePercentOfContainer = 1
	local focusItem = nil

	local BASE_TWEEN_TIME = 0.2

	local isViewFocused = false

	local overrideSelectionImage = nil
	local incomingSelectableValue = true;
	local incomingImageColor = Color3.new(1,1,1);

	local DISABLED_COLOR = Color3.new(0.4, 0.4, 0.4)
	local ENABLED_COLOR = Color3.new(1, 1, 1)

	local container = Utility.Create'ScrollingFrame'
	{
		Name = "CarouselContainer";
		BackgroundTransparency = 1;
		ClipsDescendants = false;
		ScrollingEnabled = false;
		Selectable = false;
		ScrollBarThickness = 0;
	}

	local function isVisible(item)
		return item.AbsolutePosition.x + item.AbsoluteSize.x >= 0 and
			item.AbsolutePosition.x < GuiRoot.AbsoluteSize.x
	end

	local function getFocusSize()
		local scaling = itemSizePercentOfContainer

		if isViewFocused then
			scaling = 1
		end

		local size = container.Size.Y.Offset * scaling
		return UDim2.new(0, size, 0, size)
	end

	local function getNonFocusSize()
		local size = container.Size.Y.Offset * itemSizePercentOfContainer
		return UDim2.new(0, size, 0, size)
	end

	local function getItemSize(item)
		if item == focusItem then
			return getFocusSize()
		else
			return getNonFocusSize()
		end
	end

	local function getItemLayoutPosition(index)
		local focusIndex = this:GetItemIndex(focusItem)
		local offsetFromFocus = index - focusIndex
		local x, y = 0, 0

		if index > focusIndex then
			-- items to the right of focus need additional buffer due to focus size being larger
			x = getFocusSize().X.Offset + offsetFromFocus * padding + (offsetFromFocus - 1) * getNonFocusSize().X.Offset
		else
			x = offsetFromFocus * padding + offsetFromFocus * getNonFocusSize().X.Offset
		end

		local size = (focusIndex == index) and getFocusSize() or getNonFocusSize()

		y = (container.Size.Y.Offset - size.Y.Offset) / 2

		return UDim2.new(0, x, 0, y)
	end

	local function recalcLayout(duration)
		duration = duration or 0

		for i = 1, #itemInfos do
			local item = itemInfos[i].item
			local size = getItemSize(item)
			local position = getItemLayoutPosition(i)

			if item:IsDescendantOf(game) then
				item:TweenSizeAndPosition(size, position, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, duration, true)
			else
				item.Size = size
				item.Position = position
			end
		end
	end

	--[[ Public API ]]--
	function this:ChangeFocus(newFocus, tweenTime)
		-- We don't use SetFocus() as that function will do a recalc. We want to get the next position
		-- from current position, not recalcd postion for each item

		if self:ContainsItem(newFocus) then
			focusItem = newFocus
			recalcLayout(tweenTime or BASE_TWEEN_TIME)
		end
	end

	function this:SetSize(newSize)
		if newSize ~= container.Size then
			container.Size = newSize
			container.CanvasSize = UDim2.new(0, container.Size.X.Offset * 2, 1, 0)
			recalcLayout()
		end
	end

	function this:SetPosition(newPosition)
		container.Position = newPosition
	end

	function this:SetPadding(newPadding)
		if newPadding ~= padding then
			padding = newPadding
			recalcLayout()
		end
	end

	function this:SetItemSizePercentOfContainer(value)
		if value ~= itemSizePercentOfContainer then
			itemSizePercentOfContainer = value
			recalcLayout()
		end
	end

	function this:SetParent(newParent)
		container.Parent = newParent
	end

	function this:SetFocus(newFocusItem)
		if self:ContainsItem(newFocusItem) and newFocusItem ~= focusItem then
			focusItem = newFocusItem
			recalcLayout()
		end
	end

	function this:SetClipsDescendants(value)
		container.ClipsDescendants = value
	end

	local DEFAULT_FADE_DURATION = 0.2
	local targetTransparency = 0

	function this:SetTransparency(value, duration, refresh)
		if not refresh and value == targetTransparency then return end

		if duration then
			targetTransparency = Utility.Clamp(0, 1, targetTransparency)
			if not refresh and value == targetTransparency then return end
		else
			duration = DEFAULT_FADE_DURATION
		end

		for _, itemInfo in pairs(itemInfos) do
			itemInfo:AnimateTransparency(targetTransparency, value, duration)
		end

		targetTransparency = value
	end

	function this:GetTransparency()
		return targetTransparency
	end

	function this:SetSelectable(value)
		incomingImageColor = ENABLED_COLOR
		if not value then
			incomingImageColor = DISABLED_COLOR
		end

		incomingSelectableValue = value

		for _, itemInfo in pairs(itemInfos) do
			itemInfo.item.Selectable = incomingSelectableValue
			itemInfo.item.ImageColor3 = incomingImageColor
		end
	end

	function this:GetAvailableItem()
		if focusItem and focusItem.Parent then
			return focusItem
		end
		return self:GetFront()
	end

	function this:GetFocusItem()
		return focusItem
	end

	function this:GetItemAt(index)
		return itemInfos[index] and itemInfos[index].item
	end

	function this:GetFront()
		return itemInfos[1] and itemInfos[1].item
	end

	function this:GetBack()
		return itemInfos[#itemInfos] and itemInfos[#itemInfos].item
	end

	function this:GetItemIndex(item)
		for i = 1, #itemInfos do
			if itemInfos[i].item == item then
				return i
			end
		end

		return 0
	end

	function this:GetCount()
		return #itemInfos
	end

	function this:GetVisibleCount()
		local visibleItemCount = 0
		for i = 1, #itemInfos do
			if isVisible(itemInfos[i].item) then
				visibleItemCount = visibleItemCount + 1
			end
		end

		return visibleItemCount
	end

	function this:GetFirstVisibleItemIndex()
		for i = 1, #itemInfos do
			if isVisible(itemInfos[i].item) then
				return i
			end
		end
	end

	function this:GetLastVisibleItemIndex()
		for i = #itemInfos, 1, -1 do
			if isVisible(itemInfos[i].item) then
				return i
			end
		end
	end

	function this:GetFullVisibleItemCount()
		local containerSizeX = container.AbsoluteSize.x
		-- remove focus from the size, and figure out how many other items can fit
		local fittingSize = containerSizeX - getFocusSize().X.Offset
		if fittingSize <= 0 then
			return 0
		end

		local itemSize = getNonFocusSize().X.Offset + padding
		local count = math.floor(fittingSize/itemSize) + 1
		return count
	end


	function this:InsertCollectionFront(collection)
		for i = #collection, 1, -1 do
			local itemInfo = collection[i]
			local item = itemInfo.item
			item.Selectable = incomingSelectableValue
			item.ImageColor3 = incomingImageColor
			item.ImageTransparency = targetTransparency
			item.BackgroundTransparency = targetTransparency

			-- set item position in front of front item
			item.Position = getItemLayoutPosition(0)
			item.Size = getItemSize(item)

			table.insert(itemInfos, 1, itemInfo)
			item.Parent = container
			GameData:AddRelatedGuiObject(itemInfo.PlaceId, item)
		end
	end

	function this:InsertCollectionBack(collection)
		for i = 1, #collection do
			local itemInfo = collection[i]
			local item = itemInfo.item
			item.Selectable = incomingSelectableValue
			item.ImageColor3 = incomingImageColor
			item.ImageTransparency = targetTransparency
			item.BackgroundTransparency = targetTransparency

			-- set item position behind last item
			item.Position = getItemLayoutPosition(#itemInfos + 1)
			item.Size = getItemSize(item)

			table.insert(itemInfos, itemInfo)
			item.Parent = container
			GameData:AddRelatedGuiObject(itemInfo.PlaceId, item)
		end
	end

	function this:RemoveAmountFromFront(amount)
		for i = 1, amount do
			local item = table.remove(itemInfos, 1).item
			item.Parent = nil
		end
		recalcLayout()
	end

	function this:RemoveAmountFromBack(amount)
		for i = 1, amount do
			local item = table.remove(itemInfos).item
			item.Parent = nil
		end
		recalcLayout()
	end

	function this:RemoveItem(item)
		for i = 1, #itemInfos do
			if itemInfos[i].item == item then
				local removedItem = table.remove(itemInfos, i).item
				removedItem.Parent = nil
				break
			end
		end
		recalcLayout()
	end

	function this:RemoveAllItems()
		for i = #itemInfos, 1, -1 do
			local item = table.remove(itemInfos, #itemInfos).item
			item.Parent = nil
		end
	end

	function this:ContainsItem(item)
		if not item then
			return false
		end
		return item.Parent == container
	end

	local function onFocusChanged()
		this:ChangeFocus(focusItem)
	end

	function this:Focus()
		if isViewFocused then return end

		isViewFocused = true
		onFocusChanged()
	end

	function this:GetContainer()
		return container
	end


	function this:RemoveFocus()
		if not isViewFocused then return end

		isViewFocused = false
		onFocusChanged()
	end

	function this:SetSelectionImageObject(guiObject)
		overrideSelectionImage = guiObject
	end

	function this:GetSelectionImageObject()
		return overrideSelectionImage
	end

	return this
end

return createCarouselView
