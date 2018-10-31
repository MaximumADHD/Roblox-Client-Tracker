local FastFlags = require(script.Parent.Parent.FastFlags)

local DisplayArea = {}
DisplayArea.__index = DisplayArea

DisplayArea.Paths = nil
DisplayArea.TargetWidgets = nil
DisplayArea.ChangeEvent = nil
-- what caused the change event
DisplayArea.ChangeEventType = {
	ClipLength={},  
	ScrollZoom={},
}
DisplayArea.IsUpdating = false
	
-- converts the mouse x position to a time in the current animation
function DisplayArea:getMouseTime()
	return self:absoluteXPositionToTime(self.Paths.InputMouse:getX())	
end

function DisplayArea:getFormattedMouseTime(snap)
	snap = snap == nil and false or snap
	local mouseTime = self:getMouseTime()
	if snap then
		mouseTime = self.Paths.DataModelSession:getIncrementSnappedTime(mouseTime)
	end
	return self.Paths.DataModelSession:formatTimeValue(mouseTime)
end

-- converts the x position to a time in the current animation (inverse to timeToAbsoluteXPosition())
-- pass in a displayToUse e.g if you are responding to an "AbsoluteSize" change callback, you may know the displayToUse has been updated already, whereas not all displays may have been
-- (assumes we have at least one display)
function DisplayArea:absoluteXPositionToTime(xPos, displayToUse)
	local display = self.TargetWidgets[displayToUse] and displayToUse or next(self.TargetWidgets)

	local offset = xPos-display.AbsolutePosition.X
	local scale = offset/display.AbsoluteSize.X
	scale = math.clamp(scale, 0, 1)
	return self.Paths.DataModelClip:getScaledLength(scale)
end

-- converts the time in the current animation to an x position  (inverse to absoluteXPositionToTime())
-- pass in a displayToUse e.g if you are responding to an "AbsoluteSize" change callback, you may know the displayToUse has been updated already, whereas not all displays may have been
-- (assumes we have at least one display)
function DisplayArea:timeToAbsoluteXPosition(animTime, displayToUse)
	local scale = animTime/self.Paths.DataModelClip:getLength()
	scale = math.clamp(scale, 0, 1)
	local display = self.TargetWidgets[displayToUse] and displayToUse or next(self.TargetWidgets)

	local offset = scale*display.AbsoluteSize.X
	local xPos = display.AbsolutePosition.X+offset
	return xPos
end

-- (assumes we have at least one display)
local function calculateViewableAreaBeginScale(self)
	local display = next(self.TargetWidgets)
	local xOffsetLeft = display.Parent.AbsolutePosition.X-display.AbsolutePosition.X
	local leftScale = xOffsetLeft/display.AbsoluteSize.X
	return leftScale
end

-- (assumes we have at least one display)
local function calculateViewableAreaEndScale(self)
	local display = next(self.TargetWidgets)
	local xOffsetRight = (display.Parent.AbsolutePosition.X+display.Parent.AbsoluteSize.X)-display.AbsolutePosition.X
	local rightScale = xOffsetRight/display.AbsoluteSize.X
	return rightScale
end

function DisplayArea:calculateViewableAreaBeginTime()
	return self.Paths.DataModelClip:getScaledLength(calculateViewableAreaBeginScale(self), false)
end

function DisplayArea:calculateViewableAreaEndTime()
	return self.Paths.DataModelClip:getScaledLength(calculateViewableAreaEndScale(self), false)
end

local function calculateViewAreaScale(self)
	-- clips greater than 1 second, will zoom from showing entire anim (no zoom) into showing just 1 second of anim (full zoom)
	-- clips less than 1 second will show the entire anim regardless of zoom, no zoom == full zoom == clip length 
	local noZoomScale = math.min(1, self.Paths.DataModelClip:getLength())
	local fullZoomScale = math.max(noZoomScale, self.Paths.DataModelClip:getLength())
	if self.Paths.DataModelClip:getLength() <= 1 then
		return 1
	else
		return DisplayArea.Paths.HelperFunctionsMath:lerp(noZoomScale, fullZoomScale, DisplayArea.Paths.DataModelSession:getZoom())
	end
end

local function calculateScroll(self)
	-- if the display is scaled larger than 1, then the display will be larger than it's parent, so some of the display will be off-screen
	local parentDisplaySize = 1
	local offScreenArea = calculateViewAreaScale(self)-parentDisplaySize
	return DisplayArea.Paths.HelperFunctionsMath:lerp(0, -offScreenArea, DisplayArea.Paths.DataModelSession:getScroll())
end

local function scaleAndScrollDisplayArea(display, scroll, viewArea)
	display.Position = UDim2.new(scroll, 0, 0, 0)
	display.Size = UDim2.new(viewArea, 0, 1, 0)
end

local function scaleAndScrollAll(self)
	local scroll = calculateScroll(self)
	local viewArea = calculateViewAreaScale(self)
	
	for display,_ in pairs(DisplayArea.TargetWidgets) do	
		scaleAndScrollDisplayArea(display, scroll, viewArea)	
	end
end

function DisplayArea:addDisplay(display)
	DisplayArea.TargetWidgets[display] = true
	scaleAndScrollDisplayArea(display, calculateScroll(self), calculateViewAreaScale(self))	
end

function DisplayArea:removeDisplay(display)
	DisplayArea.TargetWidgets[display] = nil
end

local function onChange(cause)
	DisplayArea.IsUpdating = true
	scaleAndScrollAll(DisplayArea)
	DisplayArea.IsUpdating = false
	DisplayArea.ChangeEvent:fire(cause)	
end	

function DisplayArea.isUpdating()
	return DisplayArea.IsUpdating
end

function DisplayArea:init(Paths)
	DisplayArea.Paths = Paths
	DisplayArea.TargetWidgets = {}	
	DisplayArea.ChangeEvent = Paths.UtilityScriptEvent:new()
	
	DisplayArea.Connections = Paths.UtilityScriptConnections:new(Paths)
	DisplayArea.Connections:add(Paths.DataModelSession.ScrollZoomChangeEvent:connect(function() onChange(DisplayArea.ChangeEventType.ScrollZoom) end))	
	DisplayArea.Connections:add(Paths.DataModelClip.LengthChangedEvent:connect(function() onChange(DisplayArea.ChangeEventType.ClipLength) end))
end

function DisplayArea:terminate()
	DisplayArea.Connections:terminate()
	DisplayArea.Connections = nil
	
	DisplayArea.ChangeEvent = nil
	DisplayArea.TargetWidgets = nil
	DisplayArea.Paths = nil
end

return DisplayArea
