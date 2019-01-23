
--[[
	The Resize module handles resizing objects. It displays a bounding box and resize
	handles when one or more GUI objects are selected.
--]]

-- Modules
local AdornmentModule		= require(script.Parent.AdornmentModule)
local Analytics				= require(script.Parent.Analytics)
local CoreGuiManager		= require(script.Parent.CoreGuiManager)
local Convert				= require(script.Parent.Convert)
local Direction				= require(script.Parent.Enum.Direction)
local Extents2D				= require(script.Parent.Extents2D)
local FFlag					= require(script.Parent.FFlag)
local GlobalValues			= require(script.Parent.GlobalValues)
local MouseIconManager		= require(script.Parent.MouseIconManager)
local SelectionManager		= require(script.Parent.SelectionManager)
local SnappingPointManager	= require(script.Parent.SnappingPointManager)
local Utility				= require(script.Parent.Utility)

local SnappingType			= require(script.Parent.Enum.SnappingType)

-- Services
local ChangeHistoryService = game:GetService("ChangeHistoryService")
local UserInputService = game:GetService("UserInputService")

-- Constants
local MINIMUM_SIZE = 1
local HANDLE_POSITION_OFFSET = 3

local HOVER_COLOR = Color3.fromRGB(255, 255, 255) 
local BASE_COLOR = Color3.fromRGB(255, 255, 255) 
local HANDLE_BORDER_COLOR = Color3.fromRGB(136, 136, 136)
local BOUNDING_BOX_COLOR = Color3.fromRGB(222, 222, 222)
local HANDLE_OFFSET = Vector2.new(1, 1)
local HANDLE_SIZE = 7

local BOUNDING_BOX_WIDTH = 1

local HANDLE_NOTSET = Direction.NOT_SET
local HANDLE_NW =  Direction.NW 
local HANDLE_N  = Direction.N  
local HANDLE_NE = Direction.NE 
local HANDLE_W  = Direction.W  
local HANDLE_E  = Direction.E  
local HANDLE_SW = Direction.SW 
local HANDLE_S  = Direction.S  
local HANDLE_SE = Direction.SE 

local DATA_INSTANCE = 1
local DATA_ABSPOSITION = 2
local DATA_POSITION = 3
local DATA_ABSSIZE = 4
local DATA_SIZE = 5

-- Variables
local m_actionMediator = nil

local m_debugMode = false -- Shows m_handleParent so you can check its transformation
local m_selectionManagerEvent = nil

local m_screenGui = nil

local m_draggingHandle = nil

local m_handleParent = nil
local m_handles = {}
local m_boundingBox = {}

local m_filteredSelection = {}

local m_originalAspectRatio = nil

local m_originalMousePosition = nil
local m_originalExtents = nil
local m_originalSelectionData = {}

local m_currentlyDragging = false

local m_isHidden = true

local m_mouseOverHandle = HANDLE_NOTSET

-- Functions

-- Callback for when the mouse enters a resize handle. 
--
-- void onHandleMouseEnter(Direction handleDirection)
local function onHandleMouseEnter(handleDirection)
	m_mouseOverHandle = handleDirection
end

-- Callback for when the mouse leaves a resize handle.
--
-- void onHandleMouseLeave(Direction handleDirection)
local function onHandleMouseLeave(handleDirection)
	--[[
		Check if left handle is the same as entered handle. Avoids the issue:
		enter Handle A, enter Handle B, leave Handle A -> m_mouseOverHandle = HANDLE_NOTSET
	--]]
	if handleDirection == m_mouseOverHandle then  
		m_mouseOverHandle = HANDLE_NOTSET
	end
end

-- Creates the m_handleParent. It is an invisible frame that is transformed like the
-- selected object. The resize handles and the bounding box frames are parented
-- to it and are transformed with it. That way there is no need for manually transforming
-- the resize handle and bounding box frame.
--
-- void createHandleParent()
local function createHandleParent()
	m_handleParent = Instance.new("Frame")
	m_handleParent.Name = "UIEditorResizeHandleParent"
	
	-- Handle parent should only show in debug mode
	m_handleParent.AnchorPoint = Vector2.new(0, 0)
	m_handleParent.BackgroundTransparency = m_debugMode and 0.5 or 1	
	m_handleParent.BackgroundColor3 = Color3.new(0, 0, 255)
	m_handleParent.BorderSizePixel = 0
end

-- void createResizeHandles()
local function createResizeHandles()	
	--[[
		Then handles should appear at the corners and the middle of the sides. Using
		the anchors points simplifies this, as we can just use those positions directly. 
	--]]
	local anchorPoints = {
		[Direction.E]  = Vector2.new(0, 0.5),
		[Direction.SE] = Vector2.new(0, 0),
		[Direction.S]  = Vector2.new(0.5, 0),
		[Direction.SW] = Vector2.new(1, 0),
		[Direction.W]  = Vector2.new(1, 0.5),
		[Direction.NW] = Vector2.new(1, 1),
		[Direction.N]  = Vector2.new(0.5, 1),
		[Direction.NE] = Vector2.new(0, 1)
	}
	
	--[[
		The handles are positioned using Scale relative to the m_handleParent. That way
		their position will be updated automatically as the parent is resized.
	--]]
	local offset = 2
	local positions = {
		[Direction.E]  = UDim2.new(1, -offset, 0.5, 0),
		[Direction.SE] = UDim2.new(1, -offset, 1, -offset),
		[Direction.S]  = UDim2.new(0.5, 0, 1, -offset),
		[Direction.SW] = UDim2.new(0, offset, 1, -offset),
		[Direction.W]  = UDim2.new(0, offset, 0.5, 0),
		[Direction.NW] = UDim2.new(0, offset, 0, offset),
		[Direction.N]  = UDim2.new(0.5, 0, 0, offset),
		[Direction.NE] = UDim2.new(1, -offset, 0, offset)
	}
	
	-- Create each resize handle
	for i = Direction.FIRST, Direction.LAST do
		local handle = Instance.new("Frame")
		handle.Name = "ResizeHandle_" .. Direction:toShortName(i)
		handle.AnchorPoint = anchorPoints[i]
		handle.Size = UDim2.new(0, HANDLE_SIZE, 0, HANDLE_SIZE)
		handle.Position = positions[i]
		handle.BackgroundColor3 = BASE_COLOR
		handle.BorderColor3 = HANDLE_BORDER_COLOR
		handle.ZIndex = 3
		
		-- Create drop shadow
		local dropShadow = Instance.new("ImageLabel")
		dropShadow.Image = "rbxasset://textures/StudioUIEditor/resizeHandleDropShadow.png"
		dropShadow.Name = "ResizeHandleDropShadow_" .. Direction:toShortName(i)
		-- We want to show four pixels of drop shadow on each side of the resize handle, 
		-- which is why we add 8 to the size.
		dropShadow.Size = UDim2.new(0, HANDLE_SIZE + 8, 0, HANDLE_SIZE + 8)
		-- The image's first four pixels is the blured edge, so move it over by 4 pixels. We want
		-- more to show at the bottom than top, so move it by a little less in y.  
		dropShadow.Position = UDim2.new(0, -4, 0, -3)
		dropShadow.BackgroundTransparency = 1
		dropShadow.BorderSizePixel = 0
		dropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
		dropShadow.ImageTransparency = 0.6
		dropShadow.ScaleType = Enum.ScaleType.Slice
		-- The image was created so four pixels around the border is the blurred edge. We
		-- want those edges and corners to not be stretched in the 9-patch.
		dropShadow.SliceCenter = Rect.new(4, 4, 12, 12)
		dropShadow.ZIndex = 2
		dropShadow.Parent = handle
		
		-- Callbacks for when the handle is hovered		
		handle.MouseEnter:connect(function(x, y)
			onHandleMouseEnter(i)
		end)
		handle.MouseLeave:connect(function(x, y)
			onHandleMouseLeave(i)
		end)
		
		-- Add resize handle
		handle.Parent = m_handleParent
		m_handles[i] = handle
	end
end

-- void createBoundingBox()
local function createBoundingBox()
	-- The winding order is East and clockwise.
	local anchors = {
		Vector2.new(0, 0.5),
		Vector2.new(0.5, 0),
		Vector2.new(1, 0.5),
		Vector2.new(0.5, 1)
	}	
	
	-- the selection box is on top of the gui object border
	local positions = {
		UDim2.new(1, 0, 0.5, 0),
		UDim2.new(0.5, 0, 1, 0),
		UDim2.new(0, 0, 0.5, 0),
		UDim2.new(0.5, 0, 0, 0)
	}	
	
	--[[		
		The frames in the bounding box is equivalent to the selected
		objects because they're displayed on top of it. We need to add
		the bounding box width at both ends, hence the multiplication by
		two. 
	--]]
	local extraBoundingBoxSize = 2 * BOUNDING_BOX_WIDTH
	local sizes = {
		UDim2.new(0, BOUNDING_BOX_WIDTH, 1, extraBoundingBoxSize),
		UDim2.new(1, extraBoundingBoxSize, 0, BOUNDING_BOX_WIDTH), 		
		UDim2.new(0, BOUNDING_BOX_WIDTH, 1, extraBoundingBoxSize),				
		UDim2.new(1, extraBoundingBoxSize, 0, BOUNDING_BOX_WIDTH)	
	}	
	
	for i = 1, 4 do
		local frame = Instance.new("Frame")
		frame.AnchorPoint = anchors[i]
		frame.BackgroundColor3 = BOUNDING_BOX_COLOR
		frame.BorderSizePixel = 0
		frame.Position = positions[i]
		frame.Size = sizes[i]
		
		-- Add bounding box frame
		m_boundingBox[i] = frame
		m_boundingBox[i].Parent = m_handleParent
	end
end

-- bool handleExist()
local function handlesExist()
	return #m_handles > 0
end

--Vector2 getPositionFromHandle(table(mt Extents2D), num handle)
local function getPositionFromHandle(extents, handle)
	if (handle == HANDLE_NW) then
		return extents.TopLeft
	elseif (handle == HANDLE_N) then
		return Vector2.new(extents.Center.X, extents.Top)
	elseif (handle == HANDLE_NE) then
		return extents.TopRight
	elseif (handle == HANDLE_W) then
		return Vector2.new(extents.Left, extents.Center.Y)
	elseif (handle == HANDLE_E) then
		return Vector2.new(extents.Right, extents.Center.Y)
	elseif (handle == HANDLE_SW) then
		return extents.BottomLeft
	elseif (handle == HANDLE_S) then
		return Vector2.new(extents.Center.X, extents.Bottom)
	elseif (handle == HANDLE_SE) then
		return extents.BottomRight
	end
	return extents.Center
end

-- num getSnappingTypeFromHandle(num handle)
local function getSnappingTypeFromHandle(handle)
	
	if (handle == HANDLE_NW) then
		return SnappingType.ResizeXnYn
	elseif (handle == HANDLE_N) then
		return SnappingType.ResizeYn
	elseif (handle == HANDLE_NE) then
		return SnappingType.ResizeXpYn
	elseif (handle == HANDLE_W) then
		return SnappingType.ResizeXn
	elseif (handle == HANDLE_E) then
		return SnappingType.ResizeXp
	elseif (handle == HANDLE_SW) then
		return SnappingType.ResizeXnYp
	elseif (handle == HANDLE_S) then
		return SnappingType.ResizeYp
	elseif (handle == HANDLE_SE) then
		return SnappingType.ResizeXpYp
	end
	
	--assert
	return nil
end

-- void updateHandlePositionFromExtents(table(mt Extents2D) extents)
local function updateHandlePositionFromExtents(extents)
	local size = extents.Size
	local position = extents.TopLeft

	--[[
		Update the m_handleParent so the resize handles and bounding box
		frames are transformed.
	--]] 
	m_handleParent.Position = UDim2.new(0, position.X, 0, position.Y)
	m_handleParent.Size = UDim2.new(0, size.X, 0, size.Y)
	if (#m_filteredSelection == 1) then
		-- Only one object is selected so we can rotate the bounding box and resize handles
		m_handleParent.Rotation = m_filteredSelection[1].AbsoluteRotation	
	else
		m_handleParent.Rotation = 0
	end
end

local function createResizeAdorns()
	if (handlesExist()) then return end

	local container = CoreGuiManager:findOrCreateFolder("m_handles")
	
	if not m_screenGui then
		m_screenGui = Instance.new("ScreenGui", container)
		m_screenGui.Enabled = false
	end

	createHandleParent()
	m_handleParent.Parent = m_screenGui
	createResizeHandles()
	createBoundingBox()
end

local function deleteResizeAdorns()
	for i = 1, #m_handles do
		m_handles[i]:Destroy()
	end
	
	for i = 1, #m_boundingBox do
		m_boundingBox[i]:Destroy()
	end

	m_handles = {}
	m_boundingBox = {}
	
	m_mouseOverHandle = HANDLE_NOTSET
	
	if m_handleParent then
		m_handleParent:Destroy()
		m_handleParent = nil
	end

	if m_screenGui then
		m_screenGui:Destroy()
		m_screenGui = nil
	end		
end

-- Returns true if one or more instances of the type GuiObject is selected.
--
-- bool hasSelection()
function hasSelection()
	return #m_filteredSelection > 0
end

-- Encapsulation
local Resize = {}

function Resize:onSelectionChanged()
	m_filteredSelection = SelectionManager:getFilteredSelection()
	if (not SelectionManager:hasFilteredSelection()) then
		Resize:hide()
	else
		Resize:updatePosition()
		Resize:show()
	end
end

-- void Resize:updatePosition()
function Resize:updatePosition()
	if #m_filteredSelection == 0 then
		return
	end
	
	updateHandlePositionFromExtents(Extents2D:getExtentsFromGuis(m_filteredSelection))
end

-- Returns true if the mouse is currently over one of the resize handles.
--
-- bool Resize:isOverAHandle()
function Resize:isOverAHandle()
	if not hasSelection() then
		return false
	end

	return m_mouseOverHandle ~= HANDLE_NOTSET 
end

-- Updates the handle highlight. The previously hovered handles highlight will be
-- cleared.  If a handle is hovered, then it will be highlighted. The hovered
-- handle will not be highlighted if noHighlight is true. That's used when the 
-- mouse is over the handle, but it should not be highlighted, e.g when rotating.
--
-- Resize:updateHandleHighlight(bool noHighlight)
function Resize:updateHandleHighlight(noHighlight)
	if not hasSelection() then
		return
	end
	
	for i = Direction.FIRST, Direction.LAST do
		if not noHighlight and m_mouseOverHandle == i then
			m_handles[i].BackgroundColor3 = HOVER_COLOR		
		else
			m_handles[i].BackgroundColor3 = BASE_COLOR
		end
	end	
end

function Resize:isDragInProgress()
	return m_currentlyDragging
end

-- Updates the resize mouse icon.
--
-- void Resize:updateMouseIcon()
function Resize:updateMouseIcon()
	if m_mouseOverHandle ~= Direction.NOT_SET then
		if #m_filteredSelection == 1 then
			local absoluteRotation = m_filteredSelection[1].AbsoluteRotation
			local mouseIconDirection = MouseIconManager:calcMouseIconDirection(m_mouseOverHandle, absoluteRotation)
			MouseIconManager:setToResizeIcon(mouseIconDirection)
		else				
			-- If there's more than one object selected, then the bounding box is axis aligned
			MouseIconManager:setToResizeIcon(m_mouseOverHandle)
		end
	end
end

-- Hides all handles except for one, which is set to visible.
--
-- void onlyShowHandle(Direction handleToShow)
function onlyShowHandle(handleToShow)
	for i = 1, #m_handles do
		if i == handleToShow then
			m_handles[i].Visible = true
		else
			m_handles[i].Visible = false
		end
	end
end

function Resize:startDrag(location)
	if not hasSelection() then
		return
	end
	
	if m_currentlyDragging then return end
	
	m_currentlyDragging = true
			
	m_draggingHandle = m_mouseOverHandle
	onlyShowHandle(m_draggingHandle)
			
	for i = 1, #m_filteredSelection do
		table.insert(m_originalSelectionData,
					{
						m_filteredSelection[i], 
						m_filteredSelection[i].AbsolutePosition,
						m_filteredSelection[i].Position,
						m_filteredSelection[i].AbsoluteSize,
						m_filteredSelection[i].Size
					})
	end

	m_originalExtents = Extents2D:getExtentsFromGuis(m_filteredSelection)
	m_originalAspectRatio = m_originalExtents.Width / m_originalExtents.Height
	
	m_originalMousePosition = location
	
	m_actionMediator:onResizeBegan(location)
end

--void retainAspectRatio(table(mt Extents2D)& extents, Vector2 mouseLocation, bool hasSnappedX, bool hasSnappedY)
local function retainAspectRatio(extents, mouseLocation, hasSnappedX, hasSnappedY)
		
	local snapXOnly = hasSnappedX and not hasSnappedY
	local snapYOnly = hasSnappedY and not hasSnappedX
			
	if (m_draggingHandle == HANDLE_E or
		m_draggingHandle == HANDLE_W) then
		
		local height = extents.Width / m_originalAspectRatio
		extents:expandFromCenter(Vector2.new(0, height - extents.Height))
		
	elseif (m_draggingHandle == HANDLE_N or
			m_draggingHandle == HANDLE_S) then
		
		local width = m_originalAspectRatio * extents.Height
		extents:expandFromCenter(Vector2.new(width - extents.Width, 0))
		
	elseif (m_draggingHandle == HANDLE_SE) then
		
		local mouseDelta = mouseLocation - m_originalExtents.TopLeft
		local mouseAspectRatio = mouseDelta.X / mouseDelta.Y
		local isCloserX = mouseDelta.Y <= 0 or mouseAspectRatio > m_originalAspectRatio
				
		if ((isCloserX or snapXOnly) and (not snapYOnly)) then
			extents.BottomRight = extents.TopLeft + Vector2.new(extents.Width, extents.Width / m_originalAspectRatio)
		else
			extents.BottomRight = extents.TopLeft + Vector2.new(m_originalAspectRatio * extents.Height, extents.Height)
		end
		
	elseif (m_draggingHandle == HANDLE_NE) then
	
		local multiplier = Vector2.new(1, -1)	
		
		local mouseDelta = (mouseLocation - m_originalExtents.BottomLeft) * multiplier
		local mouseAspectRatio = mouseDelta.X / mouseDelta.Y
		local isCloserX = mouseDelta.y <= 0 or mouseAspectRatio > m_originalAspectRatio
		
		if (isCloserX) then
			extents.TopRight = extents.BottomLeft + (Vector2.new(extents.Width, extents.Width / m_originalAspectRatio) * multiplier)
		else
			extents.TopRight = extents.BottomLeft + (Vector2.new(m_originalAspectRatio * extents.Height, extents.Height) * multiplier)
		end
	elseif (m_draggingHandle == HANDLE_SW) then
		local multiplier = Vector2.new(-1, 1)	
		
		local mouseDelta = (mouseLocation - m_originalExtents.TopRight) * multiplier
		local mouseAspectRatio = mouseDelta.X / mouseDelta.Y
		local isCloserX = mouseDelta.y <= 0 or mouseAspectRatio > m_originalAspectRatio
		
		if (isCloserX) then
			extents.BottomLeft = extents.TopRight + (Vector2.new(extents.Width, extents.Width / m_originalAspectRatio) * multiplier)
		else
			extents.BottomLeft = extents.TopRight + (Vector2.new(m_originalAspectRatio * extents.Height, extents.Height) * multiplier)
		end
	elseif (m_draggingHandle == HANDLE_NW) then
		
		local multiplier = Vector2.new(-1, -1)
		
		local mouseDelta = (mouseLocation - m_originalExtents.BottomRight) * multiplier
		local mouseAspectRatio = mouseDelta.X / mouseDelta.Y
		local isCloserX = mouseDelta.y <= 0 or mouseAspectRatio > m_originalAspectRatio
		
		if ((isCloserX or snapXOnly) and (not snapYOnly)) then
			extents.TopLeft = extents.BottomRight + (Vector2.new(extents.Width, extents.Width / m_originalAspectRatio) * multiplier)
		else
			extents.TopLeft = extents.BottomRight + (Vector2.new(m_originalAspectRatio * extents.Height, extents.Height) * multiplier)
		end		
	end
	
end

-- void Resize:updateDrag(Vector2 location)
function Resize:updateDrag(location)

	if not m_currentlyDragging then return end
		
	local selection = SelectionManager:getFilteredSelection()
	local newExtents = Utility:cloneTable(m_originalExtents)
	
	AdornmentModule:hideSnappingLines()
	
	-----------------------
	--Contextual Snapping--
	-----------------------
	
	local delta = location - m_originalMousePosition
		
	if (m_draggingHandle == HANDLE_NW or
		m_draggingHandle == HANDLE_W or
		m_draggingHandle == HANDLE_SW) then
	
		newExtents:translate(Vector2.new(delta.X, 0))
		newExtents:resize(newExtents.Size - Vector2.new(delta.X, 0))
				
	elseif (m_draggingHandle == HANDLE_NE or
			m_draggingHandle == HANDLE_E or
			m_draggingHandle == HANDLE_SE) then
	
		newExtents:resize(newExtents.Size + Vector2.new(delta.X, 0))
	end
	
	if (m_draggingHandle == HANDLE_NW or
		m_draggingHandle == HANDLE_N or
		m_draggingHandle == HANDLE_NE) then
	
		newExtents:translate(Vector2.new(0, delta.Y))
		newExtents:resize(newExtents.Size - Vector2.new(0, delta.Y))

	elseif (m_draggingHandle == HANDLE_SW or
			m_draggingHandle == HANDLE_S or
			m_draggingHandle == HANDLE_SE) then
	
		newExtents:resize(newExtents.Size + Vector2.new(0, delta.Y))
	end
	
	if (UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) or UserInputService:IsKeyDown(Enum.KeyCode.RightShift)) then
		retainAspectRatio(newExtents, location, false, false)
	end
	
	local snappingLines, hasSnappedX, hasSnappedY
	newExtents, snappingLines, hasSnappedX, hasSnappedY = SnappingPointManager:snapExtents(newExtents, getSnappingTypeFromHandle(m_draggingHandle))
			
	for i = 1, #snappingLines do
		AdornmentModule:showSnappingLine(snappingLines[i])
	end
	
	if (UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) or UserInputService:IsKeyDown(Enum.KeyCode.RightShift)) then
		retainAspectRatio(newExtents, location, hasSnappedX, hasSnappedY)
	end
	
	local intendedPosition = {}
	local intendedSize = {}	
	
	--calculate intended position and size
	
	for i = 1, #m_originalSelectionData do
		
		local data = m_originalSelectionData[i]
		local guiObject = data[DATA_INSTANCE]
			
		local percentPosition = (data[DATA_ABSPOSITION] - m_originalExtents.TopLeft) / m_originalExtents.Size
		local newAbsolutePosition = (percentPosition * newExtents.Size) + newExtents.TopLeft
		
		local newAbsoluteSize = (data[DATA_ABSSIZE] / m_originalExtents.Size) * newExtents.Size
		
		--adjust for anchor point
		newAbsolutePosition = newAbsolutePosition + (newAbsoluteSize * guiObject.AnchorPoint)
		
		if (newAbsoluteSize.X <= 0 or newAbsoluteSize.Y <= 0) then return end

		local shouldUseScalePosition = Utility:isOnlyScaleUDim2(data[DATA_POSITION]) or 
									(not Utility:isOnlyOffsetUDim2(data[DATA_POSITION]) and
									GlobalValues:isScale())
									
		local shouldUseScaleSize = Utility:isOnlyScaleUDim2(data[DATA_SIZE]) or 
									(not Utility:isOnlyOffsetUDim2(data[DATA_SIZE]) and
									GlobalValues:isScale())

		intendedPosition[guiObject], intendedSize[guiObject] = Convert:convertAbsoluteToScaleOrOffset(
											shouldUseScalePosition, shouldUseScaleSize,
											newAbsolutePosition, newAbsoluteSize, 
											data[DATA_POSITION], data[DATA_SIZE],
											guiObject.Parent)
	end
	
	
	for i = 1, #m_originalSelectionData do
		local guiObject = m_originalSelectionData[i][DATA_INSTANCE]
		
		guiObject.Position = intendedPosition[guiObject]
		guiObject.Size = intendedSize[guiObject]
		
		
	end
	
	updateHandlePositionFromExtents(newExtents)

	m_actionMediator:onResizeChanged(location)
end

--void Resize:finishDrag(Vector2 location)
function Resize:finishDrag(location)
	if not m_currentlyDragging then return end
	
	AdornmentModule:hideSnappingLines()
	
	if m_originalMousePosition ~= location then
		Analytics:reportEvent("Resize")
		ChangeHistoryService:SetWaypoint("Resize")
	end
	
	m_currentlyDragging = false
	
	AdornmentModule:hideXSnappingLine()
	AdornmentModule:hideYSnappingLine()
	
	m_originalSelectionData = {}
	m_originalMousePosition = nil
	m_originalExtents = nil
	m_draggingHandle = nil
	for i = 1, #m_handles do
		m_handles[i].Visible = true
	end
	
	m_actionMediator:onResizeEnded(location)
end

-- void Resize:hide()
function Resize:hide()
	if m_isHidden then return end
	m_isHidden = true
	if m_screenGui then
		m_screenGui.Enabled = false
	end
end

-- void Resize:show()
function Resize:show()
	if not m_isHidden or #m_filteredSelection == 0 then
		return
	end
	m_isHidden = false
	if m_screenGui then
		m_screenGui.Enabled = true
	end
end

function Resize:setActionMediator(actionMediator)
	m_actionMediator = actionMediator
end

-- Turns the Resize on and performs initialization. Called when the plugin is turned on.
function Resize:On()
	createResizeAdorns()
end

-- Turns the Resize off and performs de-initialization. Called when the plugin is turned off.
function Resize:Off()
	Resize:hide()
	deleteResizeAdorns()
end

return Resize
