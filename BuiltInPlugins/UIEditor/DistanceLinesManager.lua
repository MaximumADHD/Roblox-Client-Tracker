--[[
	The DistanceLinesManager holds references to the two distance lines. The distance lines
	are updated and turned on and off through it. The DistanceLinesManager responds to
	selection changes, and only shows the distance lines when one GUI object is selected.
--]]

local DistanceLinesManager = {}

-- Module scripts
local Axis = require(script.Parent.Enum.Axis)
local DistanceLine = require(script.Parent.DistanceLine)
local Log = require(script.Parent.Log)
local SelectionManager = require(script.Parent.SelectionManager)

-- Variables
local m_selectedObject = nil
local m_xDistanceLine = nil
local m_yDistanceLine = nil

-- Functions

-- void doDeselect(void)
local function doDeselect()
	DistanceLinesManager:setVisible(false)
	
	m_selectedObject = nil
end

-- void DistanceLinesManager:onSelectionChanged(void)
function DistanceLinesManager:onSelectionChanged()
	local filteredSelection = SelectionManager:getFilteredSelection()
	-- Only draw distance lines when one object is selected
	if #filteredSelection ~= 1 then
		doDeselect()
		return
	end
	local selectedObject = filteredSelection[1]
	local parent = selectedObject.Parent
	
	-- The parent must have absolute position, rotation and size to determine the
	-- distance from the selected object to the parent. 
	if not parent:IsA("GuiBase2d") then
		doDeselect()
		return
	end
	
	-- We can potentially draw the distance lines of the selected object
	m_selectedObject = selectedObject
	DistanceLinesManager:update()
	DistanceLinesManager:setVisible(true)
end

-- Peforms initialization when the UI Editor plugin is turned on.
--
-- void DistanceLinesManager:On(void)
function DistanceLinesManager:On()
	m_xDistanceLine = DistanceLine.new(Axis.X)
	m_yDistanceLine = DistanceLine.new(Axis.Y)
end

-- Peforms clean-up when the UI Editor plugin is turned off. 
--
-- void DistanceLinesManager:Off()
function DistanceLinesManager:Off()
	m_xDistanceLine:destroy()
	m_yDistanceLine:destroy()
	
	m_xDistanceLine = nil
	m_yDistanceLine = nil
end

-- Updates the distance lines, i.e. where they are drawn and the content of the distance labels.
--
-- void DistanceLinesManager:Off()
function DistanceLinesManager:update()
	if m_selectedObject == nil then
		return
	end
	
	m_xDistanceLine:update(m_selectedObject)
	m_yDistanceLine:update(m_selectedObject)
end

function DistanceLinesManager:setVisible(visible)
	if not m_selectedObject then
		return
	end	
	
	-- We dont support showing the distance lines when there is a rotation
 	-- because we haven't specified what the distance to the parent edge
	-- means in that case.
	local minimumRotation = 0.001	 
	local isRotated = math.abs(m_selectedObject.AbsoluteRotation) >= minimumRotation
	if visible and isRotated then
		m_xDistanceLine:setVisible(false)
		m_yDistanceLine:setVisible(false)
		return
	end
	
	m_xDistanceLine:setVisible(visible)
	m_yDistanceLine:setVisible(visible)
end

return DistanceLinesManager
