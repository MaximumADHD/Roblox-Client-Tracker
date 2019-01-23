--[[
	The Extents2D module is used for calculating the position and size of the bounding box
	and the resize handles. It will contain all the selected objects.
--]]

-- Module scripts
local FFlag	= require(script.Parent.FFlag)
local InstanceInfo = require(script.Parent.InstanceInfo)
local Utility = require(script.Parent.Utility)
local Select = require(script.Parent.Select)

-- Functions

-- void refreshData(table(mt Extents2D)& extents)
local function refreshData(extents)
	
	-- We use extents.hidden.TopLeft and extents.hidden.BottomRight as
	-- the source of truth for data. Everything else is derived from those
	-- two points.
	extents.Center = (extents.hidden.TopLeft + extents.hidden.BottomRight) * 0.5
	
	extents.hidden.Left = extents.hidden.TopLeft.X
	extents.hidden.Right = extents.hidden.BottomRight.X
	extents.hidden.Top = extents.hidden.TopLeft.Y
	extents.hidden.Bottom = extents.hidden.BottomRight.Y
	extents.hidden.TopRight = Vector2.new(extents.Right, extents.Top)
	extents.hidden.BottomLeft = Vector2.new(extents.Left, extents.Bottom)
	
	extents.Width = extents.hidden.Right - extents.hidden.Left
	extents.Height = extents.hidden.Bottom - extents.hidden.Top
	
	extents.Size = Vector2.new(extents.Width, extents.Height)
	
end

-- bool isPointVisible(Instance instance, Vector2 point, bool function canSeeThrough(Instance))
local function isPointVisible(instance, point, canSeeThrough)
	if (not instance) then return true end
	local guis = Select:getGuiObjectsAtPoint(point)
		
	for i = 1, #guis do
		if (guis[i] == instance) then
			return true
		end
		
		if (not canSeeThrough(guis[i])) then
			return false
		end
	end
	return false
end

-- bool isPointVisible(Instance instance, Vector2 point)
local function DEPRECATED_isPointVisible(instance, point)
	if (not instance) then return true end
	local guis = Select:getGuiObjectsAtPoint(point)
		
	for i = 1, #guis do
		if (guis[i] == instance) then
			return true
		end
		
		if (not InstanceInfo:canSeeThrough(guis[i])) then
			return false
		end
	end
	return false
end

-- void refreshVisibility(table(mt Extents2D), Instance instance, bool function canSeeThrough(Instance))
local function refreshVisibility(extents, instance, canSeeThrough)
	extents.hidden.TopLeftVisible = isPointVisible(instance, extents.hidden.TopLeft, canSeeThrough)
	extents.hidden.TopRightVisible = isPointVisible(instance, extents.hidden.TopRight, canSeeThrough)
	extents.hidden.BottomLeftVisible = isPointVisible(instance, extents.hidden.BottomLeft, canSeeThrough)
	extents.hidden.BottomRightVisible = isPointVisible(instance, extents.hidden.BottomRight, canSeeThrough)
	extents.hidden.CenterVisible = isPointVisible(instance, extents.Center, canSeeThrough)
end

-- void refreshVisibility(table(mt Extents2D), Instance instance)
local function DEPRECATED_refreshVisibility(extents, instance)
	extents.hidden.TopLeftVisible = DEPRECATED_isPointVisible(instance, extents.hidden.TopLeft)
	extents.hidden.TopRightVisible = DEPRECATED_isPointVisible(instance, extents.hidden.TopRight)
	extents.hidden.BottomLeftVisible = DEPRECATED_isPointVisible(instance, extents.hidden.BottomLeft)
	extents.hidden.BottomRightVisible = DEPRECATED_isPointVisible(instance, extents.hidden.BottomRight)
	extents.hidden.CenterVisible = DEPRECATED_isPointVisible(instance, extents.Center)
end

-- void extend(table(mt Extents2D)& extents, Vector2 ...)
local function extend(extents, ...)
	local args = {...}
	
	for i = 1, #args do
		extents.hidden.TopLeft = Utility:minVector2(extents.hidden.TopLeft, args[i])
		extents.hidden.BottomRight = Utility:maxVector2(extents.hidden.BottomRight, args[i])
	end
	
	refreshData(extents)
end

-- void set(table(mt Extents2D)& extents, Vector2 ...)
local function set(extents, ...)
	local args = {...}
	if (#args > 0) then
		extents.hidden.TopLeft = args[1]
		extents.hidden.BottomRight = args[1]
		
		table.remove(args, 1)
		
		extend(extents, unpack(args))
	else
		refreshData(extents)
	end
	
end

-- void Extents2D:translate(table(mt Extents2D)& extents, Vector2 offset)
function translate(extents, offset)
	extents.hidden.TopLeft = extents.hidden.TopLeft + offset
	extents.hidden.BottomRight = extents.hidden.BottomRight + offset
	refreshData(extents)
end

-- void Extents2D:resize(table(mt Extents2D)& extents, Vector2 offset)
function resize(extents, size)
	extents.hidden.BottomRight = extents.hidden.TopLeft + size
	refreshData(extents)
end

-- void Extents2D:extendFromCenter(table(mt Extents2D)& extents, Vector2 offset)
function expandFromCenter(extents, sizeOffset)	
	local offset = sizeOffset * 0.5
	
	extents.TopLeft = extents.TopLeft - offset
	extents.BottomRight = extents.BottomRight + offset
	
	refreshData(extents)
end

local Extents2D = {}

-- table(mt Extents2D) Extents2D.new(Vector2 ...)
function Extents2D.new(...)
	local extents = {}
	extents.map = {}
	extents.mt = {}
	extents.hidden = {}
	extents.hidden.TopLeft = Vector2.new(0,0)
	extents.hidden.BottomRight = Vector2.new(0,0)
	
	set(extents, ...)
	local function canSeeThrough(instance) 
		return InstanceInfo:canSeeThrough(instance)
	end
	refreshVisibility(extents, nil, canSeeThrough)
	
	function extents.mt.__index(t, k)
		if k == "extend" then
			return extend
		elseif k == "set" then
			return set
		elseif k == "TopLeft" then
			return t.hidden.TopLeft
		elseif k == "BottomRight" then
			return t.hidden.BottomRight	
		elseif k == "TopRight" then
			return t.hidden.TopRight
		elseif k == "BottomLeft" then
			return t.hidden.BottomLeft		
		elseif k == "Top" then
			return t.hidden.Top
		elseif k == "Bottom" then
			return t.hidden.Bottom
		elseif k == "Left" then
			return t.hidden.Left
		elseif k == "Right" then
			return t.hidden.Right
			
		elseif k == "TopLeftVisible" then
			return extents.hidden.TopLeftVisible
		elseif k == "TopRightVisible" then
			return extents.hidden.TopRightVisible
		elseif k == "BottomLeftVisible" then
			return extents.hidden.BottomLeftVisible
		elseif k == "BottomRightVisible" then
			return extents.hidden.BottomRightVisible
		elseif k == "TopVisible" then
			return extents.hidden.TopLeftVisible or extents.hidden.TopRightVisible
		elseif k == "BottomVisible" then
			return extents.hidden.BottomLeftVisible or extents.hidden.BottomRightVisible
		elseif k == "LeftVisible" then
			return extents.hidden.TopLeftVisible or extents.hidden.BottomLeftVisible
		elseif k == "RightVisible" then
			return extents.hidden.TopRightVisible or extents.hidden.BottomRightVisible
		elseif k == "CenterVisible" then
			return extents.hidden.CenterVisible
			
		elseif k == "translate" then
			return translate
		elseif k == "resize" then
			return resize
		elseif k == "expandFromCenter" then
			return expandFromCenter
		elseif k == "refreshVisibility" then
			return refreshVisibility
		end
	end
	
	function extents.mt.__newindex(t, k, v)
		if k == "TopLeft" then
			t.hidden.TopLeft = v
		elseif k == "BottomRight" then
			t.hidden.BottomRight = v
		elseif k == "TopRight" then
			t.hidden.TopLeft = Vector2.new(t.hidden.Left, v.Y)
			t.hidden.BottomRight = Vector2.new(v.X, t.hidden.Bottom)
		elseif k == "BottomLeft" then
			t.hidden.TopLeft = Vector2.new(v.X, t.hidden.Top)
			t.hidden.BottomRight = Vector2.new(t.hidden.Right, v.Y)
		elseif k == "Top" then
			t.hidden.TopLeft = Vector2.new(t.hidden.Left, v)
		elseif k == "Bottom" then
			t.hidden.BottomRight = Vector2.new(t.hidden.Right, v)
		elseif k == "Left" then
			t.hidden.TopLeft = Vector2.new(v, t.hidden.Top)
		elseif k == "Right" then
			t.hidden.BottomRight = Vector2.new(v, t.hidden.Bottom)
		end
		refreshData(t)
	end
	
	setmetatable(extents, extents.mt)	
	return extents
end

-- table(mt Extents2D) Extents2D:translate(table(mt Extents2D) extents, Vector2 offset)
function Extents2D:translate(extents, offset)
	local clone = Utility:cloneTable(extents)
	translate(clone, offset)
	return clone
end

-- table(mt Extents2D) Extents2D:resize(table(mt Extents2D) extents, Vector2 size)
function Extents2D:resize(extents, size)
	local clone = Utility:cloneTable(extents)
	resize(extents, size)
	return clone
end

-- table(mt Extents2D) Extents2D:expandFromCenter(table(mt Extents2D) extents, Vector2 sizeOffset)
function Extents2D:expandFromCenter(extents, sizeOffset)
	local clone = Utility:cloneTable(extents)
	expandFromCenter(extents, sizeOffset)
	return clone
end

-- table(mt Extents2D) Extents2D:getExtentsFromGui(GuiBase2d guiObject)
function Extents2D:getExtentsFromGui(guiObject)
	local extents = Extents2D.new()
	set(extents, guiObject.AbsolutePosition, guiObject.AbsolutePosition + guiObject.AbsoluteSize)
	
	return extents
end

-- table(mt Extents2D) Extents2D:getExtentsFromGuis(table(GuiBase2d) guiObjects)
function Extents2D:getExtentsFromGuis(guiObjects)
	if (#guiObjects == 0) then return nil end
	
	local extents = Extents2D.new()
	set(extents, guiObjects[1].AbsolutePosition, guiObjects[1].AbsolutePosition + guiObjects[1].AbsoluteSize)
	
	for i = 2, #guiObjects do
		extend(extents, guiObjects[i].AbsolutePosition, guiObjects[i].AbsolutePosition + guiObjects[i].AbsoluteSize)
	end		
	
	return extents
end

return Extents2D
