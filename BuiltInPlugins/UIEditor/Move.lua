

-----------------------------------
--------------MODULES--------------
-----------------------------------
local AdornmentModule		= require(script.Parent.AdornmentModule)
local Analytics				= require(script.Parent.Analytics)
local Convert				= require(script.Parent.Convert)
local Extents2D				= require(script.Parent.Extents2D)
local FFlag					= require(script.Parent.FFlag)
local GlobalValues			= require(script.Parent.GlobalValues)
local MouseIconManager		= require(script.Parent.MouseIconManager)
local RotateUtility			= require(script.Parent.RotateUtility)
local Select 				= require(script.Parent.Select)
local SelectionManager		= require(script.Parent.SelectionManager)
local SnappingPointManager	= require(script.Parent.SnappingPointManager)
local Utility				= require(script.Parent.Utility)

local SnappingType 			= require(script.Parent.Enum.SnappingType)

-----------------------------------
--------------SERVICES-------------
-----------------------------------
local UserInputService = game:GetService("UserInputService")
local ChangeHistoryService = game:GetService("ChangeHistoryService")


-----------------------------------
-------------VARIABLES-------------
-----------------------------------

local m_actionMediator = nil

local m_originalMousePosition = nil

local m_draggingStarted = false
local m_currentlyDragging = false

local UP = 1
local DOWN = 2
local LEFT = 3
local RIGHT = 4

local DATA_INSTANCE = 1
local DATA_ABSPOSITION = 2
local DATA_POSITION = 3

local MANHATTAN_DRAG_START_DELTA = 3

local m_originalSelectionData = {}

local m_originalExtents = nil

-----------------------------------
-------------FUNCTIONS-------------
-----------------------------------

local function dragElementsBy(vector)
	for i = 1, #m_originalSelectionData do
		local element = m_originalSelectionData[i][DATA_INSTANCE]
		
		if (element.Parent and element.Parent:IsA("GuiBase2d")) then
			
			local shouldUseScalePosition = Utility:isOnlyScaleUDim2(m_originalSelectionData[i][DATA_POSITION]) or 
									(not Utility:isOnlyOffsetUDim2(m_originalSelectionData[i][DATA_POSITION]) and
									GlobalValues:isScale())
										
			if (shouldUseScalePosition) then
				local scale = vector / element.Parent.AbsoluteSize
				-- divide by AbsoluteWindowSize to get Frame without scrollbars and further divide
				-- scale by CanvasSize scale since that represents the entire area of ScrollFrame
				-- to get accurate scale for position when dragging
				if (element.Parent:IsA("ScrollingFrame")) then
					-- bug in quantum gui, should use scrolling frame's parent size
					if (element.Parent.CanvasSize.X.Scale >= 1) then
						scale = Vector2.new(vector.X / (element.Parent.Parent.AbsoluteSize.X * element.Parent.CanvasSize.X.Scale), scale.Y)
					end
					if (element.Parent.CanvasSize.Y.Scale >= 1) then
						scale = Vector2.new(scale.X , vector.Y / (element.Parent.Parent.AbsoluteSize.Y * element.Parent.CanvasSize.Y.Scale))
					end
				end
				element.Position = m_originalSelectionData[i][DATA_POSITION] + UDim2.new(scale.X, 0, scale.Y, 0)
			else
				element.Position = m_originalSelectionData[i][DATA_POSITION] + UDim2.new(0, vector.X, 0, vector.Y)
			end
		end
		
		
	end
	
end

local function dragElements(location)
    dragElementsBy(location - m_originalMousePosition)
end

local function directionToDirectionVector(direction)
	if (direction == UP) then
		return Vector2.new(0, -1)
	elseif (direction == DOWN) then
		return Vector2.new(0, 1)
	elseif (direction == LEFT) then
		return Vector2.new(-1, 0)
	elseif (direction == RIGHT) then
		return Vector2.new(1, 0)
	end
	
	--assert	
	return Vector2.new(0, -1)
end

local function getFirstAncestorOfType(instance, objectType)
	if not instance or not instance.Parent then
		return nil
	end
	
	if (instance.Parent:IsA(objectType)) then
		return instance.Parent
	end
	
	return getFirstAncestorOfType(instance.Parent, objectType)
end

--[[ Commenting out reparenting functionality until we have better flow
local function offerReparent(instance, offeredParent)
	
	if not instance then
		return
	end
	
	
	if not offeredParent then
		offeredParent = getFirstAncestorOfType(instance, "ScreenGui")

		if not offeredParent then
			AdornmentModule:hideOfferReparent()
			return
		end
	end
	
	if (offeredParent == instance.Parent) then
		AdornmentModule:hideOfferReparent()
	else
		AdornmentModule:showOfferReparentAdornments(instance,offeredParent)
	end
	
end
--]]

local function isDescendantOf(item, potentialAncestor)
	while (item and item.Parent) do
		if (item.Parent == potentialAncestor) then 
			return true
		end
		item = item.Parent
	end
	return false
end


function getHighestZIndexOfSelfAndDescendants(instance, original)
	
	if instance == original then return 0 end
	
	local zIndex = 0
	
	if (instance:IsA("GuiObject")) then
		
		zIndex = instance.ZIndex		
	end
	
	local children = instance:GetChildren()
	
	for i = 1, #children do
		zIndex = math.max(zIndex, getHighestZIndexOfSelfAndDescendants(children[i], original))
	end
	
	return zIndex
end

function incrementZIndexOfSelfAndDescendantsBy(instance, number)

	if (instance:IsA("GuiObject")) then
		instance.ZIndex = instance.zIndex + number	
	end
	
	local children = instance:GetChildren()
	
	for i = 1, #children do
		incrementZIndexOfSelfAndDescendantsBy(children[i], number)
	end
end

local Move = {}

function Move:isDragInProgress()
	return m_draggingStarted
end


--void Move:startDrag(Vector2 location)
function Move:startDrag(location)
	m_originalSelectionData = {}
	local draggableElements = SelectionManager:getFilteredSelectionCommonAncestors()
	
	for i = 1, #draggableElements do
		table.insert(m_originalSelectionData, {draggableElements[i], draggableElements[i].AbsolutePosition, draggableElements[i].Position})
	end
	
	if (#m_originalSelectionData == 0) then return end	
	
	m_originalMousePosition = location
	m_draggingStarted = true
	m_currentlyDragging = false
	
	m_originalExtents = Extents2D:getExtentsFromGuis(draggableElements)
	MouseIconManager:setToMoveIcon()
	AdornmentModule:createSelectionAdorns()
	m_actionMediator:onMoveBegan(location)
end

--void Move:finishDrag(Vector2 location)
function Move:finishDrag(location)
	if (m_currentlyDragging) then
		Analytics:reportEvent("Move")
		ChangeHistoryService:SetWaypoint("Translate Objects (better tt needed)")
	end
	
	m_draggingStarted = false
	
	m_originalMousePosition = nil
	
	AdornmentModule:hideSnappingLines()
	
	--[[ Commenting out reparenting functionality until we have better flow
	if (#m_originalSelectionData == 1 and m_currentlyDragging) then
		local guiObject = m_originalSelectionData[1][DATA_INSTANCE]
		local guiObjectsAtPoint = Select:getGuiObjectsAtPoint(location)
		Utility:removeItemFromTable(guiObject, guiObjectsAtPoint)
				
		acceptReparent(guiObject, guiObjectsAtPoint[1])
	end
	--]]
	
	m_currentlyDragging = false
	
	MouseIconManager:setToDefaultIcon()
	AdornmentModule:deleteSelectionAdorns()
	m_actionMediator:onMoveEnded(location)
end

-- void Move:updateDrag(Vector2 location)
function Move:updateDrag(location)
	if not m_currentlyDragging and Utility:manhattanDistance(location - m_originalMousePosition) <= MANHATTAN_DRAG_START_DELTA then
		return
	end

	m_currentlyDragging = true
	
	AdornmentModule:hideSnappingLines()
	
	local snapType = SnappingType.MoveXY
	
	if (UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) or UserInputService:IsKeyDown(Enum.KeyCode.RightShift)) then
		local distanceToXAxis = math.abs(location.Y - m_originalMousePosition.Y)
		local distanceToYAxis = math.abs(location.X - m_originalMousePosition.X)
		
		if (distanceToXAxis < distanceToYAxis) then
			location = Vector2.new(location.X, m_originalMousePosition.Y)
		else
			location = Vector2.new(m_originalMousePosition.X, location.Y)
		end
	end
	
	local extents = Extents2D:translate(m_originalExtents, location - m_originalMousePosition)
	local snappingLines
	
	extents, snappingLines = SnappingPointManager:snapExtents(extents, SnappingType.MoveXY)
	
	
	for i = 1, #snappingLines do
		AdornmentModule:showSnappingLine(snappingLines[i])
	end
	
	local positionOffset
	-- The extents centers can be non-integers. Floor them so we always have a consistent
	-- center. We had an issue with frames with an odd size would snap on different sides
	-- of the "middle" of the screen depending on how you moved the mouse. See CLISTUDIO-14120
	positionOffset = Utility:floorVector2(extents.TopLeft - m_originalExtents.TopLeft)
	dragElements(m_originalMousePosition + positionOffset)
	--[[ Commenting out reparenting functionality until we have better flow
	if (#m_originalSelectionData == 1) then
			
		local guiObject = m_originalSelectionData[1][DATA_INSTANCE]
		local guiObjectsAtPoint = Select:getGuiObjectsAtPoint(location)
		Utility:removeItemFromTable(guiObject, guiObjectsAtPoint)
		
		offerReparent(guiObject, guiObjectsAtPoint[1])			
	end
	--]]
	
	AdornmentModule:updateSelectionAdorns(extents)
	m_actionMediator:onMoveChanged(location)
end

-- void Move:onSelectionChanged()
--[[
	This would happen when drag gui object from toolbar and then
	move the cursor out of 3D view.
--]]
function Move:onSelectionChanged()

	if (not SelectionManager:hasFilteredSelection()) then
		AdornmentModule:hideSelection()
		MouseIconManager:setToDefaultIcon()
	else
		AdornmentModule:updateSelectionPosition()
		AdornmentModule:showSelection()
		MouseIconManager:setToMoveIcon()
	end
end

function Move:bump(direction)
	Move:startDrag(Vector2.new(0,0))
    dragElementsBy(directionToDirectionVector(direction))
	Move:finishDrag(direction)
end

function Move:setActionMediator(actionMediator)
	m_actionMediator = actionMediator
end

Move.UP = UP
Move.DOWN = DOWN
Move.LEFT = LEFT
Move.RIGHT = RIGHT

return Move
