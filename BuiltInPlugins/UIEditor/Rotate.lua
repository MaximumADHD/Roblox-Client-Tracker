--[[
	The Rotate module handles rotating a selected object. It changes the mouse cursor
	when you hover outside the corners or the mid-points of the selected object. On
	mouse down it starts the rotation. The rotation is changed as the mouse is
	moved. The rotation stops on mouse up.
--]]

local Rotate = {}

-- Modules
local CoreGuiManager = require(script.Parent.CoreGuiManager)
local Direction = require(script.Parent.Enum.Direction)
local MouseIconManager = require(script.Parent.MouseIconManager)
local SelectionManager = require(script.Parent.SelectionManager)
local Utility = require(script.Parent.Utility)

-- Services
local ChangeHistoryService = game:GetService("ChangeHistoryService")

-- Constants
local ROTATION_HANDLE_SIZE = 20

-- Variables
local m_actionMediator = nil
local m_selectedObject = nil
local m_rotationHandles = {}
local m_isMouseOverHandle = {}
local m_isRotating = false
local m_originalRotation = 0
local m_referenceRotation = 0
local m_accumulatedAngle = 0
local m_debugMode = false -- Show handles in debug mode

local m_center = nil -- The center of the selected object in absolute coordinates
local m_previousMouseVec = nil -- The vector from the center to where the mouse was previously 

local m_originalMousePosition = nil

local m_handleParent = nil -- The rotation handles are positioned relative to the m_handleParent
local m_handles = {}

-- Functions

-- A frame is used as a parent for all the rotation handles. The rotation
-- handles are positioned relative to the handle parent.  The handle parent's
-- position, size and rotation is made to match the selected object. That
-- ensures that the rotation handles show up in the right place. All the
-- frames are transparent so the user can't see them.
--
-- void createHandleParent()
local function createHandleParent()
	m_handleParent = Instance.new("Frame")
	m_handleParent.Name = "UIEditorRotationHandleParent"
	
	-- Handle parent should only show in debug mode
	m_handleParent.BackgroundTransparency = m_debugMode and 0 or 1
	m_handleParent.BackgroundColor3 = Color3.new(0, 0, 255)
	m_handleParent.BorderSizePixel = m_debugMode and 1 or 0
	
	-- Add to core ScreenGui
	m_handleParent.Parent = CoreGuiManager:findOrCreateScreenGui("RotationHandles")
end

-- Destroys the frame that all rotation the handles are parented to. It
-- also automatically destroys all the rotation handles since Destroy
-- will also call Destroy on all the children.
--
-- void destroyHandleParentAndRotationHandles(void)
local function destroyHandleParentAndRotationHandles()
	if m_handleParent then
		m_handleParent:Destroy()
	end
end

local function onHandleMouseEnter(handleDirection)
	m_isMouseOverHandle[handleDirection] = true
end

local function onHandleMouseLeave(handleDirection)
	m_isMouseOverHandle[handleDirection] = false
end

-- Returns the index of the rotate handle that the mouse is over. It returns
-- the lowest index if the mouse is over multiple rotate handles. 
--
-- Returns Direction.NOT_SET if the mouse was not over any handles.
--
-- int getMouseOverHandleIndex()
local function getMouseOverHandleIndex()
	local mouseOverIndex = Direction.NOT_SET
	for i = Direction.FIRST, Direction.LAST do
		if m_isMouseOverHandle[i] then
			mouseOverIndex = i
			break
		end	
	end
	
	return mouseOverIndex
end

-- Sets all the values in m_isMouseOverHandle to false.
--
-- void resetIsMouseOverHandle()
local function resetIsMouseOverHandle()
	for i = Direction.FIRST, Direction.LAST do
		m_isMouseOverHandle[i] = false		
	end
end

-- Creates the rotation handles. Called when the plugin is turned on and off.
local function createRotationHandles()
	if not m_handleParent then
		error("Could not create the rotation handles because the parent was nil.")
	end

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
		The rotation handles are positioned using Scale relative to the m_handleParent.
		That way their position will be updated automatically as the parent is resized.
	--]]
	local positions = {
		[Direction.E]  = UDim2.new(1, 0, 0.5, 0),
		[Direction.SE] = UDim2.new(1, 0, 1, 0),
		[Direction.S]  = UDim2.new(0.5, 0, 1, 0),
		[Direction.SW] = UDim2.new(0, 0, 1, 0),
		[Direction.W]  = UDim2.new(0, 0, 0.5, 0),
		[Direction.NW] = UDim2.new(0, 0, 0, 0),
		[Direction.N]  = UDim2.new(0.5, 0, 0, 0),
		[Direction.NE] = UDim2.new(1, 0, 0, 0)
	}	
	
	-- Create each rotation handle
	for i = Direction.FIRST, Direction.LAST do
		local rotationHandle = Instance.new("Frame")
		rotationHandle.Name = "RotationHandle_" .. Direction:toShortName(i)
		rotationHandle.AnchorPoint = anchorPoints[i]
		rotationHandle.Size = UDim2.new(0, ROTATION_HANDLE_SIZE, 0, ROTATION_HANDLE_SIZE)
		rotationHandle.Position = positions[i]
		-- Rotation handle only shows in debug mode
		rotationHandle.BackgroundColor3 = Color3.new(0, 255, 0)
		rotationHandle.BackgroundTransparency = m_debugMode and 0 or 1
		rotationHandle.BorderSizePixel = m_debugMode and 1 or 0
		
		-- Callbacks for when the handle is hovered		
		rotationHandle.MouseEnter:connect(function(x, y)
			onHandleMouseEnter(i)
		end)
		rotationHandle.MouseLeave:connect(function(x, y)
			onHandleMouseLeave(i)
		end)
		
		-- Add rotation handle
		rotationHandle.Parent = m_handleParent
		m_handles[i] = rotationHandle
	end
end

-- Creates the handle parent and the rotation handles
local function createHandles()
	createHandleParent()
	createRotationHandles()
end

function Rotate:getRotation()
	if not m_selectedObject then
		return 0.0
	end
	
	return m_selectedObject.AbsoluteRotation
end

-- Changes the mouse cursor to the relevant rotate cursor.
--
-- bool Rotate:updateMouseIcon()
function Rotate:updateMouseIcon()	
	if m_isRotating then
		return
	end	
	
	local handle = getMouseOverHandleIndex()
	if handle ~= Direction.NOT_SET then
		local absoluteRotation = m_selectedObject.AbsoluteRotation
		local mouseIconDirection = MouseIconManager:calcMouseIconDirection(handle, absoluteRotation)
		MouseIconManager:setToRotateIcon(mouseIconDirection)
	end
end

-- Returns true if the mouse cursor is over one of the rotation handles.
--
-- bool Rotate:isOverAHandle()
function Rotate:isOverAHandle()
	return getMouseOverHandleIndex() ~= Direction.NOT_SET
end

-- Returns the center in absolute pixels of a GuiObject, e.g. frame.
--
-- Vector2 calcCenter(GuiObject guiObject)
local function calcCenter(guiObject)
	local x = guiObject.AbsolutePosition.X + math.floor(guiObject.AbsoluteSize.X/2.0)
	local y = guiObject.AbsolutePosition.Y + math.floor(guiObject.AbsoluteSize.Y/2.0)
	
	return Vector2.new(x, y)
end

-- Starts rotating the selected object if the mouse is over a rotate handle.
--
-- void Rotate:onMouseDown(Vector2 location)
function Rotate:onMouseDown(location)
	if not m_selectedObject then
		return
	end	
	
	local mouseOverHandleIndex = getMouseOverHandleIndex()
	-- Don't start a rotation if the mouse is not over a rotation handle
	if not Direction:isValid(mouseOverHandleIndex) then
		return
	end
	
	m_isRotating = true
	m_originalRotation = m_selectedObject.Rotation
	m_referenceRotation = m_selectedObject.Rotation
	m_center = calcCenter(m_selectedObject)
	m_accumulatedAngle = 0
	-- Calculate the where the mouse is so that it can be used when the mouse is moved.
	m_previousMouseVec = location - m_center

	m_actionMediator:onRotateBegan(location)
end

-- Rounds the rotation angle to one degree.
-- 
-- double roundRotationAngle(double angle)
local function roundRotationAngle(angle)	
	return math.floor(angle + 0.5)
end

-- Constrains the rotation angle to between -360 and 360 degrees.
-- 
-- double constrainRotationAngle(double angle)
local function constrainRotationAngle(angle)
	local maxRotation = 360
	if angle >= 0 then
		return angle % maxRotation
	else
		return -(-angle % maxRotation)
	end
end

-- Rotates the selected object if rotation has been started.
--
-- void Rotate:onMouseMove(Vector2 location)
function Rotate:onMouseMove(location)
	if not m_isRotating then
		return
	end
			
	local mouseMoveVec = location - m_center -- From center to new mouse location
	local angleRadians = Utility:angleVector2(m_previousMouseVec, mouseMoveVec)
	local angle = math.deg(angleRadians)
	
	-- We want the user to be able to rotate the object counter-clockwise
	-- and get negative values all the way up to -360. Then it should roll
	-- over back to 0. When rotating clock-wise we want the user to get
	-- positive values all the way up to 360, and then roll over to 0. We
	-- ran into an issue where when the rotation became sufficiently large
	-- we could not know if the user had rotated one way or the other way.
	-- If we "reset" the vectors we meassure the angles between every so
	-- often, e.g. every 90 degrees, then we'll always get a small enough
	-- angle so the rotation remains positive or negative.
	m_accumulatedAngle = m_accumulatedAngle + angle
	local roundedRotation = roundRotationAngle(m_referenceRotation + m_accumulatedAngle)
	m_selectedObject.Rotation = constrainRotationAngle(roundedRotation)
	m_previousMouseVec = mouseMoveVec
	
	if math.abs(m_accumulatedAngle) > 90 then
		-- Make the current angle the reference angle, so we never have a
		-- large angle between the vectors. The 90 degrees was chosen 
		-- arbitrarily as something less than 180 degrees.
		m_referenceRotation = m_selectedObject.Rotation
		m_accumulatedAngle = 0
	end
	
	Rotate:update()
	
	m_actionMediator:onRotateChanged(location)
end

-- Ends rotating the selected object if rotation was started.
--
-- void Rotate:onMouseUp(Vector2 location)
function Rotate:onMouseUp(location)
	if not m_isRotating then
		return
	end

	-- Add undo point if the selected object was rotated
	if m_selectedObject.Rotation ~= m_originalRotation then 	
		ChangeHistoryService:SetWaypoint("Rotate object")
	end
	
	m_isRotating = false
	m_center = nil
	m_previousMouseVec = nil
	Rotate:update()

	m_actionMediator:onRotateEnded(location)
end

-- Returns true is the selected object is being rotated.
--
-- bool Rotate:isRotating()
function Rotate:isRotating()
	return m_isRotating
end

-- Updates the position of the rotate handles when the selected object's position,
-- anchor point, size or rotation changes. It can be either from from Properties
-- widget or by using the tools. 
function Rotate:update()
	if not m_selectedObject then
		return
	end
	
	m_handleParent.AnchorPoint = m_selectedObject.AnchorPoint
	local position = m_selectedObject.AbsolutePosition
	m_handleParent.Position = UDim2.new(0, position.X, 0, position.Y)
	local size = m_selectedObject.AbsoluteSize
	m_handleParent.Size = UDim2.new(0, size.X, 0, size.Y)
	m_handleParent.Rotation = m_selectedObject.AbsoluteRotation
end

function Rotate:onSelectionChanged()
	local filteredSelection = SelectionManager:getFilteredSelection()
	if #filteredSelection == 1 then
		m_selectedObject = filteredSelection[1]
		Rotate:update()
		-- The m_handleParent is completely transparent, so it's still not "visible" to
		-- the user. Setting it to visible enables the handles mouseEnter and mouseLeave
		-- events. It also looks better when m_debugMode is enabled.
		m_handleParent.Visible = true
	else
		m_selectedObject = nil
		m_handleParent.Visible = false
	end
end

-- Turns the Rotate feature on and performs initialization. Called when the plugin is turned on.
function Rotate:On()
	createHandles()
	resetIsMouseOverHandle()
	m_isRotating = false
	Rotate:update()
end

-- Turns the Rotate feature off and performs de-initialization. Called when the plugin is turned off.
function Rotate:Off()
	destroyHandleParentAndRotationHandles()
	m_isRotating = false
end

function Rotate:setActionMediator(actionMediator)
	m_actionMediator = actionMediator
end

return Rotate
