--[[
	The SizeBox is displayed when the user selects an object in the UI Editor. It
	doesn't show if multiple objects are selected.
	
	The SizeBox updates its size as the selected object is resized. It also updates
	its position as the selected object is moved.
	
	The SizeBox is using the ValueBox to display the size.
--]]
local SizeBox = {}

-- Module scripts
local SelectionManager = require(script.Parent.SelectionManager)
local ValueBox = require(script.Parent.ValueBox)

-- Variables
local m_selectedObject = nil
local m_valueBox = nil

-- Constants
local VALUE_BOX_MARGIN = Vector2.new(2, 6) -- Margin between the selected object and ValueBox

-- Functions

-- Takes a GUI object and returns a UDim2 with the position of
-- where the SizeBox should be positioned.
--
-- UDim2 calcSizeBoxPosition(GuiObject object)
local function calcSizeBoxPosition(object)
	local objectSize = object.AbsoluteSize
	local objectPosition = object.AbsolutePosition
	local valueBoxSize = m_valueBox:getSize()

	-- Use max x so that when an object is very narrow the SizeBox always appears to the
	-- right of the left side.
	local newX = math.max(objectPosition.X + objectSize.X - valueBoxSize.X.Offset - VALUE_BOX_MARGIN.X, 
		objectPosition.X + VALUE_BOX_MARGIN.X)
	local newY = objectPosition.Y + objectSize.Y + VALUE_BOX_MARGIN.Y
	
	return UDim2.new(0, newX, 0, newY)
end

-- Updates the text, size and the position of the SizeBox from the GUI object. It needs to
-- be called when the selected object is changed or resized.
function SizeBox:update()
	if not m_selectedObject then
		return
	end

	-- Set label text to the size of the selected object. The properties widget
	-- truncates to an integer so we'll do the same here.
	local objectSize = m_selectedObject.AbsoluteSize
	local newText = ("%d x %d"):format(objectSize.X, objectSize.Y)
	m_valueBox:setText(newText)
	
	SizeBox:updatePosition()
end

-- Shows or hides the SizeBox.
--
-- void SizeBox:setVisible(bool visible)
function SizeBox:setVisible(visible)
	if not m_selectedObject then
		return
	end	
	
	m_valueBox:setVisible(visible)
end

function SizeBox:onSelectionChanged()
	local filteredSelection = SelectionManager:getFilteredSelection()
	-- Only show the SizeBox if one GUI object is selected for now.
	if #filteredSelection == 1 then
		m_selectedObject = filteredSelection[1]
		SizeBox:update()
		SizeBox:setVisible(true)
	else
		SizeBox:setVisible(false)
		m_selectedObject = nil
	end
end

-- Updates the position of the SizeBox. Used when moving the selected object around
-- without re-sizing it.
function SizeBox:updatePosition()
	if not m_selectedObject then
		return
	end
	
	local newPosition = calcSizeBoxPosition(m_selectedObject)
	m_valueBox:setPosition(newPosition)
end

-- Turns the SizeBox on and performs initialization. Called when the plugin is turned on.
function SizeBox:On()
	m_valueBox = ValueBox.new()
end

-- Turns the SizeBox off and performs de-initialization. Called when the plugin is turned off.
function SizeBox:Off()	
	m_selectedObject = nil
	m_valueBox:Destroy()	
	m_valueBox = nil
end

return SizeBox
