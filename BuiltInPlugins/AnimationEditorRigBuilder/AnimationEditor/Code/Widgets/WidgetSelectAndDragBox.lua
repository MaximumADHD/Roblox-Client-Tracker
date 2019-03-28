local FastFlags = require(script.Parent.Parent.FastFlags)

local SelectAndDragBox = {}
SelectAndDragBox.__index = SelectAndDragBox
SelectAndDragBox.ScrollStepX = 0.005
SelectAndDragBox.ScrollStepY = 6

local function isInScrollingFrame(self)
	return self.TargetWidget.Parent:IsA("ScrollingFrame")
end

local function positionArea(self)
	local xOffset = self.StartPos.X - self.SelectionAreaWidget.AbsolutePosition.X
	local yOffset = self.StartPos.Y - self.SelectionAreaWidget.AbsolutePosition.Y

	self.TargetWidget.Position = UDim2.new(0, xOffset, 0, yOffset)
end

local function getScroll(self)
	return self.Paths.DataModelSession:getScroll()
end

local function getZoom(self)
	return self.Paths.DataModelSession:getZoom()
end

local function getMinTime(self)
	return self.Paths.DataModelSession:formatTimeValue(self.Paths.UtilityScriptDisplayArea:absoluteXPositionToTime(self.ScrollBounds.left))
end

local function getMaxTime(self)
	return self.Paths.DataModelSession:formatTimeValue(self.Paths.UtilityScriptDisplayArea:absoluteXPositionToTime(self.ScrollBounds.right))
end

local function getBottomEdge(self)
	return self.TargetWidget.Parent.AbsolutePosition.Y + self.TargetWidget.Parent.AbsoluteSize.Y
end

local function getTopEdge(self)
	return self.TargetWidget.Parent.AbsolutePosition.Y
end

local function resizeArea(self)
	if self.StartPos.X ~= nil and self.StartPos.Y ~= nil then
		local size = nil
		if FastFlags:isContinueScrollingWithSelectionAreaOn() then
			local mouseY = self.Paths.InputMouse:getY()
			if not isInScrollingFrame(self) then
				mouseY = math.clamp(mouseY, getTopEdge(self), getBottomEdge(self))
			end
			size = Vector2.new(self.StartPos.X - self.Paths.InputMouse:getX(), self.StartPos.Y - mouseY - self.DeltaScrollY)
		else
			size = Vector2.new(self.StartPos.X - self.Paths.InputMouse:getX(), self.StartPos.Y - self.Paths.InputMouse:getY())
		end

		local anchorPosX = 0
		local anchorPosY = 0

		if size.X > 0 then anchorPosX = 1 end
		if size.Y > 0 then anchorPosY = 1 end

		size = 	Vector2.new(math.abs(size.X), math.abs(size.Y))

		self.TargetWidget.AnchorPoint = Vector2.new(anchorPosX, anchorPosY)
		self.TargetWidget.Size = UDim2.new(0, size.X, 0, size.Y)
	end
end

local function scrollX(self, step)
	local scroll = math.clamp(getScroll(self) + step, 0, 1)
	self.Paths.DataModelSession:setScrollAndZoom(scroll, getZoom(self))
	local xOffset = math.clamp(self.Paths.UtilityScriptDisplayArea:timeToAbsoluteXPosition(self.StartTime), self.ScrollBounds.left, self.ScrollBounds.right)
	self.StartPos = Vector2.new(xOffset, self.StartPos.Y)
	self.TargetWidget.Position = UDim2.new(0, xOffset - self.SelectionAreaWidget.AbsolutePosition.X, 0, self.StartPos.Y - self.SelectionAreaWidget.AbsolutePosition.Y)
end

local function scrollY(self, step)
	self.TargetWidget.Parent.CanvasPosition = Vector2.new(self.TargetWidget.Parent.CanvasPosition.X, self.TargetWidget.Parent.CanvasPosition.Y + step)
	if self.TargetWidget.Parent.CanvasPosition.Y + self.TargetWidget.Parent.AbsoluteSize.Y < self.TargetWidget.Parent.CanvasSize.Y.Offset and self.TargetWidget.Parent.CanvasPosition.Y >= 0 then
		self.DeltaScrollY = self.DeltaScrollY + step
	end
end

local function checkVerticalBoundary(self)
	if isInScrollingFrame(self) then
		if self.Paths.InputMouse:getY() <= getTopEdge(self) and self.TargetWidget.Parent.CanvasPosition.Y - self.ScrollStepY >= 0 then
			scrollY(self, -1 * self.ScrollStepY)
		elseif self.Paths.InputMouse:getY() >= getBottomEdge(self) and self.TargetWidget.Parent.CanvasPosition.Y + self.ScrollStepY <= self.TargetWidget.Parent.CanvasSize.Y.Offset then
			scrollY(self, self.ScrollStepY)
		end
	end
end

local function checkHorizontalBoundary(self)
	if getZoom(self) > 0 then
		local clickTime = self.Paths.UtilityScriptDisplayArea:getFormattedMouseTime()
		if clickTime <= getMinTime(self) and getScroll(self) >= 0 and self.StartTime > getMinTime(self) then
			scrollX(self, -1 * self.ScrollStepX)
		elseif clickTime >= getMaxTime(self) and getScroll(self) <= 1 then
			scrollX(self, self.ScrollStepX)
		end
	end
end

local function checkBoundaries(self)
	checkHorizontalBoundary(self)
	checkVerticalBoundary(self)
end

local function show(self)
	self.StartPos = Vector2.new(self.Paths.InputMouse:getX(), self.Paths.InputMouse:getY())
	positionArea(self)
	resizeArea(self)
	self.TargetWidget.Visible = true
	if FastFlags:isContinueScrollingWithSelectionAreaOn() then
		self.DeltaScrollY = 0
	end
end

local function update(self)
	if FastFlags:isContinueScrollingWithSelectionAreaOn() then
		checkBoundaries(self)
	end
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

function SelectAndDragBox:new(Paths, targetWidget, selectionAreaWidget, selectFunc, endFunc, scrollBounds)
	local self = setmetatable({}, SelectAndDragBox)

	self.Paths = Paths
	self.TargetWidget = targetWidget
	self.SelectionAreaWidget = selectionAreaWidget
	self.SelectFunc = selectFunc
	if FastFlags:isOptimizationsEnabledOn() then
		self.EndFunc = endFunc
	end

	if FastFlags:isContinueScrollingWithSelectionAreaOn() then
		self.DeltaScrollY = 0
		if scrollBounds ~= nil then
			self.ScrollBounds = scrollBounds
		else
			self.ScrollBounds = {
				left = self.TargetWidget.Parent.AbsolutePosition.X,
				right = self.TargetWidget.Parent.AbsolutePosition.X + self.TargetWidget.Parent.AbsoluteSize.X,
			}
		end
	end

	self.StartPos = nil
	self.StartTime = nil
	self.EndTime = nil
	self.Clicked = false
	self.Moved = false

	self.Connections = self.Paths.UtilityScriptConnections:new(Paths)
	self.Connections:add(self.TargetWidget.Parent.InputBegan:connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 and not self.Paths.GUIScriptScrubberDisplayArea.dragableScrubber:isDragging() then
			local clickTime = self.Paths.UtilityScriptDisplayArea:getFormattedMouseTime()
			if not Paths.UtilityScriptMoveItems:isMoving() then
				self.Clicked = true
				if FastFlags:isContinueScrollingWithSelectionAreaOn() then
					setStartTime(self, clickTime)
				end
				show(self)
				if not FastFlags:isContinueScrollingWithSelectionAreaOn() then
					setStartTime(self, clickTime)
				end
				setEndTime(self, clickTime)
				self.Paths.DataModelAnimationEvents:resetMultiSelection()
			end
		end
	end))

	self.Connections:add(self.TargetWidget.Parent.InputChanged:connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement and self.Clicked and not self.Paths.GUIScriptScrubberDisplayArea.dragableScrubber:isDragging() then
			if not FastFlags:isContinueScrollingWithSelectionAreaOn() then
				local clickTime = self.Paths.UtilityScriptDisplayArea:getFormattedMouseTime()
				if not Paths.UtilityScriptMoveItems:isMoving() then
					update(self)
					if not FastFlags:isOptimizationsEnabledOn() or self.SelectFunc then
						self.SelectFunc()
					end
					setEndTime(self, clickTime)
				end
			else
				self.Moved = true
			end
		end
	end))

	self.Connections:add(self.TargetWidget.Parent.InputEnded:connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			local clickTime = self.Paths.UtilityScriptDisplayArea:getFormattedMouseTime()
			if FastFlags:isOptimizationsEnabledOn() and self.EndFunc then
				self.EndFunc()
			end
			self.Clicked = false
			self.Moved = false
			hide(self)
			setEndTime(self, clickTime)
		end
	end))

	if FastFlags:isContinueScrollingWithSelectionAreaOn() then
	 	self.Connections:add(game:GetService("RunService").RenderStepped:connect(function()
			if self.Moved and not self.Paths.GUIScriptScrubberDisplayArea.dragableScrubber:isDragging() then
				local clickTime = self.Paths.UtilityScriptDisplayArea:getFormattedMouseTime()
				if not Paths.UtilityScriptMoveItems:isMoving() then
					update(self)
					if not FastFlags:isOptimizationsEnabledOn() or self.SelectFunc then
						self.SelectFunc()
					end
					setEndTime(self, clickTime)
				end
			end
	 	end))
	 end

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