local RotationBox = {}

-- Modules
local ValueBox = require(script.Parent.ValueBox)

-- Constants
local MOUSE_POSITION_OFFSET = Vector2.new(4, 20)

-- Variables
local m_valueBox = nil

-- Functions

-- Updates where the box is shown (close to the mouse cursor), and updates
-- the rotation value in the box.
--
-- void RotationBox:update(Vector2 mousePosition, double rotation)
function RotationBox:update(mousePosition, rotation)
	local newPosition = mousePosition + MOUSE_POSITION_OFFSET
	m_valueBox:setPosition(UDim2.new(0, newPosition.X, 0, newPosition.Y))
	local newText = string.format("%d°", rotation)
	m_valueBox:setText(newText)
end

-- Shows or hides the RotationBox.
--
-- void SizeBox:setVisible(bool visible)
function RotationBox:setVisible(visible)
	m_valueBox:setVisible(visible)
end

function RotationBox:On()
	m_valueBox = ValueBox.new()
end

-- Turns the RotationBox off and performs de-initialization.
function RotationBox:Off()
	m_valueBox:Destroy()	
	m_valueBox = nil
end

return RotationBox
