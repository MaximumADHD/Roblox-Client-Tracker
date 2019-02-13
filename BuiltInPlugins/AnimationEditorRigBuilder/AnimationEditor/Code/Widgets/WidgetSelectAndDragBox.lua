local FastFlags = require(script.Parent.Parent.FastFlags)

local SelectAndDragBox = {}
SelectAndDragBox.__index = SelectAndDragBox

local function positionArea(self)
	local xOffset = self.StartPos.X - self.SelectionAreaWidget.AbsolutePosition.X
	local yOffset = self.StartPos.Y - self.SelectionAreaWidget.AbsolutePosition.Y

	self.TargetWidget.Position = UDim2.new(0, xOffset, 0, yOffset)
end

local function resizeArea(self)
	if self.StartPos.X ~= nil and self.StartPos.Y ~= nil then
		local size = Vector2.new(self.StartPos.X - self.Paths.InputMouse:getX(), self.StartPos.Y - self.Paths.InputMouse:getY())
		
		local anchorPosX = 0
		local anchorPosY = 0

		if size.X > 0 then anchorPosX = 1 end
		if size.Y > 0 then anchorPosY = 1 end

		size = 	Vector2.new(math.abs(size.X), math.abs(size.Y))

		self.TargetWidget.AnchorPoint = Vector2.new(anchorPosX, anchorPosY)
		self.TargetWidget.Size = UDim2.new(0, size.X, 0, size.Y)
	end
end

local function show(self)
	self.StartPos = Vector2.new(self.Paths.InputMouse:getX(), self.Paths.InputMouse:getY())
	positionArea(self)
	resizeArea(self)
	self.TargetWidget.Visible = true
end

local function update(self)
	resizeArea(self)
end

local function hide(self)
	self.TargetWidget.Visible = false
end

local function setStartTime(self, time)
	self.StartTime = time
end

local function setEndTime(self, time)
	self.EndTime = time
end

function SelectAndDragBox:isInSelectedTimeRange(time)
	if time and self.StartTime ~= nil and self.EndTime ~= nil then
		if not self.Paths.HelperFunctionsMath:isCloseToZero(self.StartTime) or not self.Paths.HelperFunctionsMath:isCloseToZero(self.EndTime) then
			local min, max = math.min(self.StartTime, self.EndTime), math.max(self.StartTime, self.EndTime)
			if time >= min and time <= max then
				return true
			end
		end
	end

	return false
end

function SelectAndDragBox:isSelecting()
	return self.Clicked
end

function SelectAndDragBox:new(Paths, targetWidget, selectionAreaWidget, selectFunc)
	local self = setmetatable({}, SelectAndDragBox)

	self.Paths = Paths
	self.TargetWidget = targetWidget
	self.SelectionAreaWidget = selectionAreaWidget
	self.SelectFunc = selectFunc

	self.StartPos = nil
	self.StartTime = nil
	self.EndTime = nil
	self.Clicked = false

	self.Connections = self.Paths.UtilityScriptConnections:new(Paths)
	self.Connections:add(self.TargetWidget.Parent.InputBegan:connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 and not self.Paths.GUIScriptScrubberDisplayArea.dragableScrubber:isDragging() then
			local clickTime = self.Paths.UtilityScriptDisplayArea:getFormattedMouseTime()
			if not Paths.UtilityScriptMoveItems:isMoving() then
				self.Clicked = true
				show(self)
				setStartTime(self, clickTime)
				setEndTime(self, clickTime)
				self.Paths.DataModelAnimationEvents:resetMultiSelection()
			end
		end
	end))

	self.Connections:add(self.TargetWidget.Parent.InputChanged:connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement and self.Clicked and not self.Paths.GUIScriptScrubberDisplayArea.dragableScrubber:isDragging() then
			local clickTime = self.Paths.UtilityScriptDisplayArea:getFormattedMouseTime()
			if not Paths.UtilityScriptMoveItems:isMoving() then
				update(self)
				self.SelectFunc()
				setEndTime(self, clickTime)
			end
		end
	end))

	self.Connections:add(self.TargetWidget.Parent.InputEnded:connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			local clickTime = self.Paths.UtilityScriptDisplayArea:getFormattedMouseTime()
			self.Clicked = false
			hide(self)
			setEndTime(self, clickTime)
		end
	end))

	return self
end

function SelectAndDragBox:terminate()
	self.Connections:terminate()
	self.Connections = nil

	self.StartPos = nil
	self.StartTime = nil
	self.EndTime = nil
	self.Clicked = false

	self.SelectFunc = nil
	self.SelectionAreaWidget = nil
	self.TargetWidget = nil
	self.Paths = nil
end


return SelectAndDragBox