-- singleton

local ScrollZoomControl = {}

ScrollZoomControl.TargetWidget = nil
ScrollZoomControl.MouseLocalX = nil
ScrollZoomControl.Selected = {widget=nil, moveFunction=function()end, widgetClickOffset=nil} -- widgetClickOffset is the position of the original click inside the widget
ScrollZoomControl.Zoom = 0 -- set starting zoom (0 - fully zoomed out, 1 - fully zoomed in)
ScrollZoomControl.Scroll = 0 -- set starting scroll (0 - left side, 1 - right side)
ScrollZoomControl.fullZoomCenterDragSizeOffset = 20 -- the narrowest the center drag widget is (when at full zoom)
ScrollZoomControl.StartScrollZoomEvent = nil
ScrollZoomControl.EndScrollZoomEvent = nil
ScrollZoomControl.ScrollZoomChangeEvent = nil
ScrollZoomControl.Connections = nil

function ScrollZoomControl:getZoom()
	return self.Zoom
end

function ScrollZoomControl:getScroll()
	return self.Scroll
end

function ScrollZoomControl:turnOn(on)
	ScrollZoomControl.TargetWidget.Visible = on
end

-- convert an offset to a scale
local function toScale(self, offset)
	local divideByZeroTolerance = 0.0001		
	if self.TargetWidget.AbsoluteSize.X > divideByZeroTolerance then
		return offset/self.TargetWidget.AbsoluteSize.X
	end
	return 1
end

-- convert a scale to an offset
local function toOffset(self, dim2)
	return dim2.X.Scale*self.TargetWidget.AbsoluteSize.X
end

local function setPositionXScale(obj, newXScale)
	obj.Position = UDim2.new(newXScale, obj.Position.X.Offset, obj.Position.Y.Scale, obj.Position.Y.Offset)
end

local function setSizeXScale(obj, newXScale)
	obj.Size = UDim2.new(newXScale, obj.Size.X.Offset, obj.Size.Y.Scale, obj.Size.Y.Offset)
end

local function calculatePositionsAndSizes(self, scroll, zoom)
	local leftDrag = self.TargetWidget.LeftDrag
	local centerDrag = self.TargetWidget.CenterDrag
	local rightDrag = self.TargetWidget.RightDrag

	local narrowestCenterDragSizeOffset = self.fullZoomCenterDragSizeOffset -- when at max zoom (1.0)
	local widestCenterDragSizeOffset = self.TargetWidget.AbsoluteSize.X-(leftDrag.AbsoluteSize.X+rightDrag.AbsoluteSize.X) -- when at min zoom (0.0)
	widestCenterDragSizeOffset = math.max(narrowestCenterDragSizeOffset, widestCenterDragSizeOffset) -- stops errors when the window is very narrow
	local centerDragSizeOffset = self.Paths.HelperFunctionsMath:lerp(narrowestCenterDragSizeOffset, widestCenterDragSizeOffset, 1-zoom)	
	setSizeXScale(centerDrag, toScale(self, centerDragSizeOffset))	
	
	local minLeftDragXPositionOffset = 0
	local maxLeftDragXPositionOffset = self.TargetWidget.AbsoluteSize.X-centerDragSizeOffset-leftDrag.AbsoluteSize.X-rightDrag.AbsoluteSize.X
	maxLeftDragXPositionOffset = math.max(minLeftDragXPositionOffset, maxLeftDragXPositionOffset) -- in-case of very narrow window

	local leftDragXPositionOffset = self.Paths.HelperFunctionsMath:lerp(minLeftDragXPositionOffset, maxLeftDragXPositionOffset, scroll)
	setPositionXScale(leftDrag, toScale(self, leftDragXPositionOffset))
	
	local centerDragXPositionOffset = leftDragXPositionOffset+leftDrag.AbsoluteSize.X
	setPositionXScale(centerDrag, toScale(self, centerDragXPositionOffset))
	
	local rightDragXPositionOffset = centerDragXPositionOffset+centerDragSizeOffset
	setPositionXScale(rightDrag, toScale(self, rightDragXPositionOffset))
end

local function FireScrollZoomChangeEvent(self, newScroll, newZoom)
	if self.Zoom ~= newZoom or self.Scroll ~= newScroll then
		self.Zoom = newZoom
		self.Scroll = newScroll
		self.ScrollZoomChangeEvent:fire(self.Scroll, self.Zoom)
	end
end

local function calculateScrollAndZoom(self)
	local leftDrag = self.TargetWidget.LeftDrag
	local centerDrag = self.TargetWidget.CenterDrag
	local rightDrag = self.TargetWidget.RightDrag
	
	local maxLeftDragXPositionOffset = self.TargetWidget.AbsoluteSize.X-(toOffset(self, centerDrag.Size)+leftDrag.AbsoluteSize.X+rightDrag.AbsoluteSize.X)	
	local newScroll = toOffset(self, leftDrag.Position)/maxLeftDragXPositionOffset		
		
	local minZoomCenterDragSizeOffset = self.TargetWidget.AbsoluteSize.X-(leftDrag.AbsoluteSize.X+rightDrag.AbsoluteSize.X) -- widest
	local newZoom = 1-((toOffset(self, centerDrag.Size)-self.fullZoomCenterDragSizeOffset)/(minZoomCenterDragSizeOffset-self.fullZoomCenterDragSizeOffset))
	
	FireScrollZoomChangeEvent(self, newScroll, newZoom)			
end

function ScrollZoomControl:setScrollAndZoom(scroll, zoom)
	calculatePositionsAndSizes(self, scroll, zoom)
end

function ScrollZoomControl:init(Paths)
	self.Paths = Paths
	self.TargetWidget = Paths.GUIZoomControls
	
	self.Connections = Paths.UtilityScriptConnections:new(Paths)
	
	local leftDrag = self.TargetWidget.LeftDrag
	local centerDrag = self.TargetWidget.CenterDrag
	local rightDrag = self.TargetWidget.RightDrag
	
	self.LeftDragCustom = Paths.WidgetCustomImageButton:new(Paths, leftDrag, true)
	self.RightDragCustom = Paths.WidgetCustomImageButton:new(Paths, rightDrag, true)
	
	self.StartScrollZoomEvent = Paths.UtilityScriptEvent:new()
	self.EndScrollZoomEvent = Paths.UtilityScriptEvent:new()
	self.ScrollZoomChangeEvent = Paths.UtilityScriptEvent:new()
	
	calculatePositionsAndSizes(self, self.Scroll, self.Zoom)
		
	self.Connections:add(self.TargetWidget.MoveArea.Changed:connect(function (property)
		if property == "AbsoluteSize" then
			calculatePositionsAndSizes(self, self.Scroll, self.Zoom)
		end
	end))

	local function setMouseLocalX(mouseX)
		self.MouseLocalX = mouseX-self.TargetWidget.AbsolutePosition.X
	end

	self.Connections:add(self.TargetWidget.MoveArea.MouseMoved:connect(function(mouseX, mouseY)
		setMouseLocalX(mouseX)

		if self.Selected.widget and self.Selected.moveFunction then
			self.Selected.moveFunction()
			calculateScrollAndZoom(self)
		end
	end))
	
	local function inputBegan(input, widget, moveFunc)			
		self.Selected.widget = widget
		setMouseLocalX(input.Position.X)
		self.Selected.widgetClickOffset = self.MouseLocalX-toOffset(self, widget.Position)
		self.Selected.moveFunction = moveFunc
	end
	
	local function setClampedPosition(minXOffset, maxXOffset)
		local desiredXOffset = self.MouseLocalX-self.Selected.widgetClickOffset
		local clampedXOffset = math.clamp(desiredXOffset, minXOffset, math.max(minXOffset, maxXOffset))
		setPositionXScale(self.Selected.widget, toScale(self, clampedXOffset))
	end
	
	local function setCenterDragPositionAndSize()
		local leftDragRightSideOffset = toOffset(self, leftDrag.Position)+leftDrag.AbsoluteSize.X
		setPositionXScale(centerDrag, toScale(self, leftDragRightSideOffset))
		
		local centerDragSizeOffset = toOffset(self, rightDrag.Position)-leftDragRightSideOffset		
		setSizeXScale(centerDrag, toScale(self, centerDragSizeOffset))
	end
		
	self.Connections:add(self.TargetWidget.LeftDrag.InputBegan:connect(function(input) 		
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			self.StartScrollZoomEvent:fire()
			inputBegan(input, self.TargetWidget.LeftDrag, function()
				local minXOffset = 0
				local maxXOffset = toOffset(self, rightDrag.Position)-leftDrag.AbsoluteSize.X-self.fullZoomCenterDragSizeOffset
				setClampedPosition(minXOffset, maxXOffset)
				setCenterDragPositionAndSize()
			end)					
		end 				
	end))
	
	self.Connections:add(self.TargetWidget.CenterDrag.InputBegan:connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			self.StartScrollZoomEvent:fire()
			inputBegan(input, self.TargetWidget.CenterDrag, function()
				local minXOffset = leftDrag.AbsoluteSize.X
				local maxXOffset = self.TargetWidget.AbsoluteSize.X-centerDrag.AbsoluteSize.X-rightDrag.AbsoluteSize.X 							
				setClampedPosition(minXOffset, maxXOffset)																	
				-- set left and right drag pos
				local leftDragPositionOffset = toOffset(self, centerDrag.Position)-leftDrag.AbsoluteSize.X
				setPositionXScale(leftDrag, toScale(self, leftDragPositionOffset))
				setPositionXScale(rightDrag, centerDrag.Position.X.Scale+centerDrag.Size.X.Scale)
			end)
		end 
	end))
			
	self.Connections:add(self.TargetWidget.RightDrag.InputBegan:connect(function(input) 
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			self.StartScrollZoomEvent:fire()		
			inputBegan(input, self.TargetWidget.RightDrag, function()
				local minXOffset = toOffset(self, centerDrag.Position)+self.fullZoomCenterDragSizeOffset
				local maxXOffset = self.TargetWidget.AbsoluteSize.X-rightDrag.AbsoluteSize.X										
				setClampedPosition(minXOffset, maxXOffset)
				setCenterDragPositionAndSize()
			end)		
		end 
	end))

	local function inputEnded(input, widget)
		if input.UserInputType == Enum.UserInputType.MouseButton1 and widget == self.Selected.widget then
			self.Selected.widget = nil
			self.EndScrollZoomEvent:fire()
		end
	end
	
	self.Connections:add(self.TargetWidget.LeftDrag.InputEnded:connect(function(input) inputEnded(input, self.TargetWidget.LeftDrag) end))
	self.Connections:add(self.TargetWidget.CenterDrag.InputEnded:connect(function(input) inputEnded(input, self.TargetWidget.CenterDrag) end))
	self.Connections:add(self.TargetWidget.RightDrag.InputEnded:connect(function(input) inputEnded(input, self.TargetWidget.RightDrag) end))
end

function ScrollZoomControl:terminate()
	self.Connections:terminate()
	self.Connections = nil		
	
	self.StartScrollZoomEvent = nil
	self.EndScrollZoomEvent = nil
	self.ScrollZoomChangeEvent = nil
	
	self.Paths = nil
	self.TargetWidget = nil
end

return ScrollZoomControl
