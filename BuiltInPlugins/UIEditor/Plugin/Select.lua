

local Utility = require(script.Parent.Utility)
local SelectionManager = require(script.Parent.SelectionManager)
local InstanceInfo = require(script.Parent.InstanceInfo)
local Analytics		= require(script.Parent.Analytics)

local UserInputService = game:GetService("UserInputService")

local FFlagFixStarterGuiErrors = game:DefineFastFlag("FixStarterGuiErrors", false)

local paintOrder = {} --array of paintOrder
local paintOrderMap = {} --map of child to position in order

local BUFFER_SIZE_MINIMUM = 5

local function calculateVisibleBounds(instance)
	if instance.AbsoluteRotation ~= 0 then
		return instance.AbsolutePosition, instance.AbsoluteSize
	end

	local upperLeft = instance.AbsolutePosition
	local lowerRight = instance.AbsoluteSize + upperLeft

	local clipper = instance:FindFirstAncestorWhichIsA("GuiObject")

	while clipper do
		if clipper.ClipsDescendants then
			-- ASIDE: How does this work if clipper is rotated?
			local clipperUpperLeft = clipper.AbsolutePosition
			local clipperLowerRight = clipper.AbsoluteSize + clipperUpperLeft
			upperLeft = Vector2.new(math.max(upperLeft.X, clipperUpperLeft.X), math.max(upperLeft.Y, clipperUpperLeft.Y))
			lowerRight = Vector2.new(math.min(lowerRight.X, clipperLowerRight.X), math.min(lowerRight.Y, clipperLowerRight.Y))
		end
		clipper = clipper:FindFirstAncestorWhichIsA("GuiObject")
	end

	return upperLeft, lowerRight - upperLeft
end


local function doesPointExistInInstance(point, instance)
	if not instance or not instance:IsA("GuiBase2d") then return false end
	
	local visiblePosition, visibleSize = calculateVisibleBounds(instance)
	
	local sizeBuffer = visibleSize
	sizeBuffer = Vector2.new(math.max(BUFFER_SIZE_MINIMUM, sizeBuffer.X), math.max(BUFFER_SIZE_MINIMUM, sizeBuffer.Y))
	
	local upperLeft = visiblePosition + (visibleSize * 0.5) - (sizeBuffer * 0.5)
	
	return point.x >= upperLeft.x and
		point.x <= upperLeft.x + sizeBuffer.x and
		point.y >= upperLeft.y and
		point.y <= upperLeft.y + sizeBuffer.y
	
end



local function collectVisibleGuiObjectsUnder(instance)
	local children = instance:GetChildren()
	
	local allItems = {}
	for i = 1, #children do
		if (children[i]:IsA("GuiObject")) then
			
			local ancestors = collectVisibleGuiObjectsUnder(children[i])
			
			if (InstanceInfo:isVisible(children[i])) then
				table.insert(allItems, children[i])
			end
						
			for j = 1, #ancestors do
				table.insert(allItems, ancestors[j])
			end
		end
	end
	return allItems
end


local function guessScreenGui(sg)
	local anc = collectVisibleGuiObjectsUnder(sg)
	
	local orderMap = {}
	
	for i = 1, #anc do
		orderMap[anc[i]] = i;
	end
		
	local function guiSort(a, b)
		if (a.ZIndex == b.ZIndex) then
			return orderMap[a] < orderMap[b]
		end
		return a.ZIndex < b.ZIndex
	end
	
	table.sort(anc, guiSort)
	
	return anc
end

local function refreshPaintOrder()
	local starterGui = nil
	if FFlagFixStarterGuiErrors then
		starterGui = game:GetService("StarterGui")
	else
		starterGui = game.StarterGui
	end
	
	local children = starterGui:GetChildren()
	
	paintOrder = {}
	
	for i = 1, #children do
		if (children[i]:IsA("ScreenGui")) then
			
			local guiAncestors = guessScreenGui(children[i])
			
			for i = 1, #guiAncestors do
				table.insert(paintOrder, guiAncestors[i])
				paintOrderMap[guiAncestors[i]] = #paintOrder
			end
		end
	end	
end

local function getGuiObjectsAtPoint(point)
	local objectsAtPoint = {}
	
	for i = #paintOrder, 1, -1 do
		if (doesPointExistInInstance(point, paintOrder[i])) then
			table.insert(objectsAtPoint, paintOrder[i])
		end
	end
	return objectsAtPoint
end


local function getTopLevelItemAtPoint(point)
	refreshPaintOrder()
	
	local objectsAtPoint = getGuiObjectsAtPoint(point)
	local objectToSelect = objectsAtPoint[1]
	
	if (UserInputService:IsKeyDown(Enum.KeyCode.LeftAlt) or UserInputService:IsKeyDown(Enum.KeyCode.RightAlt)) then
		local location = Utility:findItemInTable(lastSelectedElement, objectsAtPoint)
		if (location ~= 0 and location ~= #objectsAtPoint) then
			objectToSelect = objectsAtPoint[location + 1]
		end
	end
	
	return objectToSelect
end

--return true if added, false if removed
local function toggleItemsExistenceInTable(item, t)

	local itemLocation = Utility:findItemInTable(item, t)
	
	if (itemLocation > 0) then
		table.remove(t, itemLocation)
		return false
	end
	
	table.insert(t, item)
	return true
end

local Select = {}

function Select:getGuiObjects()
	return {unpack(paintOrder)}
end

function Select:getGuiObjectsAtPoint(point)
	return getGuiObjectsAtPoint(point)
end

function Select:refreshPaintOrder()
	refreshPaintOrder()
end

function Select:selectTopLevelItemAtPoint(point)
	
	local objectToSelect = getTopLevelItemAtPoint(point)
	
	local selection = SelectionManager:getRawSelection()

	local newSelection = {unpack(selection)}
	
	local analyticsSelectionReported = false
	
	if (objectToSelect) then
		if (UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) or
			UserInputService:IsKeyDown(Enum.KeyCode.RightControl) or
			UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) or 
			UserInputService:IsKeyDown(Enum.KeyCode.RightShift)) then
			
			if (toggleItemsExistenceInTable(objectToSelect, newSelection)) then
				Analytics:reportEvent("AddToSelection")
			else
				Analytics:reportEvent("RemoveFromSelection")
			end
			analyticsSelectionReported = true
		elseif (Utility:findItemInTable(objectToSelect, newSelection) == 0) then
			newSelection = {objectToSelect}			
		end
	else
		if (UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) or 
			UserInputService:IsKeyDown(Enum.KeyCode.RightShift)) then
			return nil
		elseif (Utility:findItemInTable(objectToSelect, newSelection) == 0) then
			newSelection = {objectToSelect}			
		end
	end
			
	lastSelectedElement = objectToSelect
	if (SelectionManager:setSelection(newSelection) and not analyticsSelectionReported) then
		if (SelectionManager:hasFilteredSelection()) then
			Analytics:reportEvent("Select")
		else
			Analytics:reportEvent("Deselect")
		end
	end
	
	return lastSelectedElement
end



function Select:selectAllObjectsInBounds(point1, point2)
	local min = Vector2.new(math.min(point1.X, point2.X), math.min(point1.Y, point2.Y))
	local max = Vector2.new(math.max(point1.X, point2.X), math.max(point1.Y, point2.Y))
	
	local totalSelected = {}
	for i = 1, #paintOrder do
		if (paintOrder[i].AbsolutePosition.X >= min.X and
			paintOrder[i].AbsolutePosition.Y >= min.Y and
			paintOrder[i].AbsolutePosition.X + paintOrder[i].AbsoluteSize.X <= max.X and
			paintOrder[i].AbsolutePosition.Y + paintOrder[i].AbsoluteSize.Y <= max.Y) then
		
			table.insert(totalSelected, paintOrder[i])
		end
	end
	
	SelectionManager:setSelection(totalSelected)	
end

function Select:toggleSelectionOfAllObjectsInBounds(previousSelection, point1, point2)
	local min = Vector2.new(math.min(point1.X, point2.X), math.min(point1.Y, point2.Y))
	local max = Vector2.new(math.max(point1.X, point2.X), math.max(point1.Y, point2.Y))
	
	local totalSelected = {}
	for i = 1, #paintOrder do
		if (paintOrder[i].AbsolutePosition.X >= min.X and
			paintOrder[i].AbsolutePosition.Y >= min.Y and
			paintOrder[i].AbsolutePosition.X + paintOrder[i].AbsoluteSize.X <= max.X and
			paintOrder[i].AbsolutePosition.Y + paintOrder[i].AbsoluteSize.Y <= max.Y) then
		
			table.insert(totalSelected, paintOrder[i])
		end
	end
	
	for i = 1, #previousSelection do
		local location = Utility:findItemInTable(previousSelection[i], totalSelected)
		
		if (location ~= 0) then
			table.remove(totalSelected, location)
		else
			table.insert(totalSelected, previousSelection[i])
		end
	end
	
	SelectionManager:setSelection(totalSelected)
end

return Select
