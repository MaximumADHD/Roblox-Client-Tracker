--[[
	The DistanceLine draws a line from the selected object to its parents'
	"closest" side. It also draws a text label next to the line with the
	distance. 	
	
	When the selected object is fully inside the parent, then it is trivial
	to find the closest side. When the selected object is no longer fully 
	inside the parent, then there is no clear answer to which side is the
	closest and we have to define what we mean. We currently draw a line
	from the side that's inside to the parent's far side, as below:
	
	+--------------------------+
	|                       |  |
	|                       |  |
	|                       |  |
	|               +---------------+
	|               |               |
	|               |               |
	|               |               |
	|               |               |
	|               |               |
	|---------------|               |
	|               |               |
	+----------------               |
	                |               |
	                |               |
	                +---------------+
	
	We currently do not handle the case where the mid point is outside the
	parent.
--]]

local DistanceLine = {}

-- Module scripts
local Axis = require(script.Parent.Enum.Axis)
local CoreGuiManager = require(script.Parent.CoreGuiManager)
local Log = require(script.Parent.Log)
local RectUtility = require(script.Parent.RectUtility)
local ValueBox = require(script.Parent.ValueBox)

-- Flags
local FFlagCleanupLuaPluginErrors = game:DefineFastFlag("CleanupLuaPluginErrors", false)

-- Constants
local LINE_COLOR = Color3.fromRGB(255, 205, 0)
local LINE_WIDTH = 2
local LINEEND_WIDTH = 10

-- Creates a thin frame which is used to draw the distance line.
--
-- Frame createDistanceFrame()
local function createDistanceFrame(axis)
	local distanceFrame = Instance.new("Frame")
	distanceFrame.Name = "DistanceLine"
	distanceFrame.BorderSizePixel = 0
	distanceFrame.BackgroundColor3 = LINE_COLOR
	distanceFrame.Visible = false
	distanceFrame.Parent = CoreGuiManager:findOrCreateScreenGui("DistanceLines")
	
	-- This is the small end mark at the border of viewport.
	-- It's parented to distanceFrame because it needs to be updated together
	-- with distanceFrame. Parenting to distanceFrame also helps so that
	-- when distanceFrame is invisible, endFrame is invisible automatically.
	local endFrame = Instance.new("Frame")
	endFrame.Name = "DistanceEnd"
	endFrame.BorderSizePixel = 0
	endFrame.BackgroundColor3 = LINE_COLOR
	endFrame.Visible = true
	endFrame.Parent = distanceFrame
	
	local endSize = {
		UDim2.new(0, LINE_WIDTH, 0, LINEEND_WIDTH),
		UDim2.new(0, LINEEND_WIDTH, 0, LINE_WIDTH)
	}
	endFrame.Size = endSize[axis]
	
	-- The AnchorPoint and Position of end mark are always opposite to the distanceFrame
	-- Whenever AnchorPoint of distanceFrame changes, we update endFrame and move it
	-- to the other end of distance line
	distanceFrame:GetPropertyChangedSignal("AnchorPoint"):Connect(function()
		if axis == Axis.X then
			if distanceFrame.AnchorPoint.X == 0 then
				endFrame.AnchorPoint = Vector2.new(1, 0.5)
				endFrame.Position = UDim2.new(1, 0, 0.5, 0)
			else
				endFrame.AnchorPoint = Vector2.new(0, 0.5)
				endFrame.Position = UDim2.new(0, 0, 0.5, 0)
			end
		elseif axis == Axis.Y then
			if distanceFrame.AnchorPoint.Y == 0.0 then
				endFrame.AnchorPoint = Vector2.new(0.5, 1)
				endFrame.Position = UDim2.new(0.5, 0, 1, 0)
			else
				endFrame.AnchorPoint = Vector2.new(0.5, 0)
				endFrame.Position = UDim2.new(0.5, 0, 0, 0)
			end
		end
	end)
	
	return distanceFrame
end

-- Creates a distance value box in the middle of the distance line and shows the distance.
--
-- ValueBox createDistanceBox(Axis axis, Instance parent)
local function createDistanceBox(axis, parent)
	local positions = {
		UDim2.new(0.5, 0, 0, 0),
		UDim2.new(0, 0, 0.5, 0)
	}	
	
	local distanceBox = ValueBox.new(parent)
	distanceBox.Name = "DistanceBox"
 
	distanceBox:setAnchorPoint(Vector2.new(0.5, 0.5))
	distanceBox:setPosition(positions[axis])
	if parent ~= nil then
		distanceBox.Parent = parent
	end

	return distanceBox
end

-- The DistanceLine constructor. The axis must be specified, i.e. if it's drawn
-- along the x or y axis, for example Axis.X or Axis.Y.
--
-- DistanceLine DistanceLine.new(Axis axis)
function DistanceLine.new(axis)
	local newDistanceLine = {}	
	
	newDistanceLine.m_axis = axis	
	-- A frame is used for drawing the distance line. It's a thin frame.
	newDistanceLine.m_distanceFrame = createDistanceFrame(axis)
	-- The distance box displays how far away the parent's side it is. The box
	-- is parented to the line and always updated together, which is why they're
	-- in the same class for now.
	newDistanceLine.m_distanceBox = createDistanceBox(axis, newDistanceLine.m_distanceFrame)
	-- If child object is very far outside its parent then we can't show the distance line.
	newDistanceLine.m_canShow = false
	
	return setmetatable(newDistanceLine, DistanceLine)
end
DistanceLine.__index = DistanceLine

-- Destroys the distance line and its associated distance label.
--
-- void DistanceLine:destroy()
function DistanceLine:destroy()
	self.m_distanceBox:Destroy()
	self.m_distanceFrame:Destroy()
	
	self.m_distanceBox = nil
	self.m_distanceFrame = nil
end

-- Calculates the distance from the left of the object to the
-- left of the parent.
--
-- int calcLeftDistance(GuiBase2d object, GuiBase2d parent)
local function calcLeftDistance(object, parent)
	return object.AbsolutePosition.X - parent.AbsolutePosition.X
end

-- Calculates the distance from the right of the object to the
-- right of the parent.
--
-- int calcRightDistance(GuiBase2d object, GuiBase2d parent)
local function calcRightDistance(object, parent)
	local objectRightSide = object.AbsolutePosition.X + object.AbsoluteSize.X
	local parentRightSide = parent.AbsolutePosition.X + parent.AbsoluteSize.X
	return parentRightSide - objectRightSide
end

-- Calculates the distance from the top of the object to the
-- top of the parent.
--
-- int calcTopDistance(GuiBase2d object, GuiBase2d parent)
local function calcTopDistance(object, parent)
	return object.AbsolutePosition.Y - parent.AbsolutePosition.Y
end

-- Calculates the distance from the bottom of the object to the
-- bottom of the parent.
--
-- int calcBottomDistance(GuiBase2d object, GuiBase2d parent)
local function calcBottomDistance(object, parent)
	local objectBottom = object.AbsolutePosition.Y + object.AbsoluteSize.Y
	local parentBottom = parent.AbsolutePosition.Y + parent.AbsoluteSize.Y
	return parentBottom - objectBottom
end


local function updateDistanceBoxText(self, distance)
	-- The specification calls for also being able to display the distance
	-- as Offset and Scale but that will be implemented in a later story.
	self.m_distanceBox:setText(("%d"):format(distance))
end

-- Figures out how to draw the distance line on the x axis. It then draws
-- the line and updates the distance box.
--
-- void updateX(DistanceLine self, GuiBase2d selectedObject, GuiBase2d parent)
local function updateX(self, selectedObject, parent)
	local distanceFrame = self.m_distanceFrame

	-- Determine if the mid points are inside the parent. Floor center values
	-- otherwise the line will appear to jerk for objects with odd sizes.
	local parentRect = Rect.new(parent.AbsolutePosition, parent.AbsolutePosition + parent.AbsoluteSize)
	local leftMidPoint = Vector2.new(selectedObject.AbsolutePosition.X,
									  math.floor(selectedObject.AbsolutePosition.Y + selectedObject.AbsoluteSize.Y/2.0))
	local rightMidPoint = Vector2.new(selectedObject.AbsolutePosition.X + selectedObject.AbsoluteSize.X,
									   math.floor(selectedObject.AbsolutePosition.Y + selectedObject.AbsoluteSize.Y/2.0))
	local leftMidPointInside = RectUtility:containsPoint(parentRect, leftMidPoint)
	local rightMidPointInside = RectUtility:containsPoint(parentRect, rightMidPoint)
	
	-- The anchor coordinates are in the space of the frame
	local leftAnchor = Vector2.new(1.0, 0.5) -- Draw from the left side of the selected object and to the left
	local rightAnchor = Vector2.new(0.0, 0.5) -- Draw from the right side of the selected object and to the right
	
	local distance
	if leftMidPointInside and rightMidPointInside then
		-- Both mid points are inside the parent. It just needs to draw the distance
		-- to the parent side which is closer.
		local leftDistance = calcLeftDistance(selectedObject, parent)
		local rightDistance = calcRightDistance(selectedObject, parent)
		distance = math.min(leftDistance, rightDistance)
		distanceFrame.Size = UDim2.new(0, distance, 0, LINE_WIDTH)
		if leftDistance <= rightDistance then
			distanceFrame.AnchorPoint = leftAnchor
			distanceFrame.Position = UDim2.new(0, leftMidPoint.X, 0, leftMidPoint.Y)
		else
			distanceFrame.AnchorPoint = rightAnchor
			distanceFrame.Position = UDim2.new(0, rightMidPoint.X, 0, rightMidPoint.Y)
		end
	elseif leftMidPointInside then
		-- The left mid point is inside but the right is outside. The closest parent
		-- side should be the parent's left side.
		distanceFrame.AnchorPoint = leftAnchor
		distanceFrame.Position = UDim2.new(0, leftMidPoint.X, 0, leftMidPoint.Y)
		distance = calcLeftDistance(selectedObject, parent)
		distanceFrame.Size = UDim2.new(0, distance, 0, LINE_WIDTH)
	elseif rightMidPointInside then
		-- The right mid point is inside but the left is outside. The closest parent
		-- side should be the parent's right side.
		distanceFrame.AnchorPoint = rightAnchor
		distanceFrame.Position = UDim2.new(0, rightMidPoint.X, 0, rightMidPoint.Y)
		distance = calcRightDistance(selectedObject, parent)
		distanceFrame.Size = UDim2.new(0, distance, 0, LINE_WIDTH)
	else
		-- The mid points are both outside the parent. This will be handled in a later story.
		self.m_canShow = false
		return
	end

	self.m_canShow = true
	
	updateDistanceBoxText(self, distance)
end

-- Figures out how to draw the distance line on the y axis. It then draws
-- the line and updates the distance box.
--
-- void updateY(DistanceLine self, GuiBase2d selectedObject, GuiBase2d parent)
local function updateY(self, selectedObject, parent)
	local distanceFrame = self.m_distanceFrame
	
	-- Determine if the mid points are inside the parent. Floor center values
	-- otherwise the line will appear to jerk for objects with odd sizes.
	local parentRect = Rect.new(parent.AbsolutePosition, parent.AbsolutePosition + parent.AbsoluteSize)
	local topMidPoint = Vector2.new(math.floor(selectedObject.AbsolutePosition.X + selectedObject.AbsoluteSize.X/2.0),
									selectedObject.AbsolutePosition.Y)
	local bottomMidPoint = Vector2.new(math.floor(selectedObject.AbsolutePosition.X + selectedObject.AbsoluteSize.X/2.0),
									   selectedObject.AbsolutePosition.Y + selectedObject.AbsoluteSize.Y)
	local topMidPointInside = RectUtility:containsPoint(parentRect, topMidPoint)
	local bottomMidPointInside = RectUtility:containsPoint(parentRect, bottomMidPoint)
	
	-- The anchor coordinates are in the space of the frame
	local topAnchor = Vector2.new(0.5, 1.0) -- Draw from the top side of the selected object and to the top
	local bottomAnchor = Vector2.new(0.5, 0.0) -- Draw from the bottom side of the selected object and to the bottom	
	
	local distance
	if topMidPointInside and bottomMidPointInside then
		-- Both mid points are inside the parent. We just need to draw the distance
		-- to the parent side which is closer.
		local topDistance = calcTopDistance(selectedObject, parent)
		local bottomDistance = calcBottomDistance(selectedObject, parent)
		distance = math.min(topDistance, bottomDistance)
		distanceFrame.Size = UDim2.new(0, LINE_WIDTH, 0, distance)
		if topDistance <= bottomDistance then
			distanceFrame.AnchorPoint = topAnchor
			distanceFrame.Position = UDim2.new(0, topMidPoint.X, 0, topMidPoint.Y)
		else
			distanceFrame.AnchorPoint = bottomAnchor
			distanceFrame.Position = UDim2.new(0, bottomMidPoint.X, 0, bottomMidPoint.Y)
		end	
	elseif topMidPointInside then
		-- The top mid point is inside but the bottom is outside. The closest parent
		-- side should be the parent's top side.
		distanceFrame.Visible = true		
		distanceFrame.AnchorPoint = topAnchor
		distanceFrame.Position = UDim2.new(0, topMidPoint.X, 0, topMidPoint.Y)
		distance = calcTopDistance(selectedObject, parent)
		distanceFrame.Size = UDim2.new(0, LINE_WIDTH, 0, distance)
	elseif bottomMidPointInside then
		-- The bottom mid point is inside but the top is outside. The closest parent
		-- side should be the parent's bottom side.
		distanceFrame.Visible = true		
		distanceFrame.AnchorPoint = bottomAnchor
		distanceFrame.Position = UDim2.new(0, bottomMidPoint.X, 0, bottomMidPoint.Y)
		distance = calcBottomDistance(selectedObject, parent)
		distanceFrame.Size = UDim2.new(0, LINE_WIDTH, 0, distance)
	else
		-- The mid points are both outside the parent. This will be handled in a later story.
		self.m_canShow = false
		return
	end	
	
	self.m_canShow = true	
	
	-- Update y distance box
	updateDistanceBoxText(self, distance)
end

-- Updates the DistanceLine object, i.e. where it is drawn and the contents of the distance label.
--
-- void DistanceLine:update(GuiBase2d selectedObject)
function DistanceLine:update(selectedObject)
	local guiAncestor
	if FFlagCleanupLuaPluginErrors then
		guiAncestor = selectedObject:FindFirstAncestorWhichIsA("GuiBase2d")
	else
		guiAncestor = selectedObject.Parent
	end
	
	if self.m_axis == Axis.X then
		updateX(self, selectedObject, guiAncestor)
	elseif self.m_axis == Axis.Y then
		updateY(self, selectedObject, guiAncestor)
	else
		error("Could not update the DistanceLine. The axis must be either X or Y")
	end
end

-- Sets the visibilty of the distance line and its associated distance label (through parenting).
--
-- It only shows the distance lines if they can be shown, e.g. the child is not too
-- far outside the parent.
--
-- void DistanceLine:setVisible(bool visible)
function DistanceLine:setVisible(visible)
	if visible then
		self.m_distanceFrame.Visible = self.m_canShow
	else
		self.m_distanceFrame.Visible = false
	end
end

return DistanceLine
