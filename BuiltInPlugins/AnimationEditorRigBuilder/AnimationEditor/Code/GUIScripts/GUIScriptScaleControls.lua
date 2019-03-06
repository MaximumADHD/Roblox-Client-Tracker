local FastFlags = require(script.Parent.Parent.FastFlags)

local ScaleControls = {}

local function getXPadding(self)
	return self.LeftHandle.Arrow.AbsoluteSize.X
end

local function resizeHighlightArea(self, length)
	length = length == nil and self.HighlightArea.Size.Y.Offset or length
	local leftX = math.min(self.LeftHandle.AbsolutePosition.X, self.RightHandle.AbsolutePosition.X)
	local rightX = math.max(self.LeftHandle.AbsolutePosition.X, self.RightHandle.AbsolutePosition.X)
	self.HighlightArea.Position = UDim2.new(0, leftX + getXPadding(self), 0, 0)
	self.HighlightArea.Size = UDim2.new(0, rightX - leftX - (2 * getXPadding(self)), 0, length)
end

local function getPaddingToApply(self, time, padding)
	-- Remove padding if the padding puts the handle outside of the timeline
	if padding < 0 then
		local zeroPosition = self.Paths.UtilityScriptDisplayArea:timeToAbsoluteXPosition(0)
		local timePostion = self.Paths.UtilityScriptDisplayArea:timeToAbsoluteXPosition(time)

		if zeroPosition + math.abs(padding) > timePostion then
			return zeroPosition - timePostion
		end
	end

	return padding
end

local function positionHandle(self, handle, time, padding, yPos)
	local handleX = self.Paths.UtilityScriptDisplayArea:timeToAbsoluteXPosition(time)
	yPos = yPos == nil and handle.Position.Y.Offset or yPos
	handle.Position = UDim2.new(0, handleX + padding, 0, yPos)
end

local function positionTag(self, tag, time, xPos)
	-- calculating center y positon of scrubber/notch area
	local startY = self.Paths.GUIScrubberDisplayArea.AbsolutePosition.Y
	local diffY = (self.Paths.GUIScrollingJointTimeline.AbsolutePosition.Y - self.Paths.GUIScrubberDisplayArea.AbsolutePosition.Y) / 2

	if xPos == nil then
		local tagX = self.Paths.UtilityScriptDisplayArea:timeToAbsoluteXPosition(time)
		tag.Position = UDim2.new(0, tagX, 0, startY + diffY)
	else
		tag.Position = UDim2.new(0, xPos, 0, startY + diffY)
	end
end

local function setTagTime(self, tag, time)
	tag.Time.Text = string.format("%.2f", time)
end

local function getOffsetClickTime(self)
	local clickTime = self.Paths.UtilityScriptDisplayArea:getFormattedMouseTime(true)
	if self.selectedHandle then
		local x = self.Paths.UtilityScriptDisplayArea:timeToAbsoluteXPosition(clickTime)
		if FastFlags:fixKeyframeScaleHandlesPositioning() then
			x = x - self.ActivePadding[self.selectedHandle]
		else
			x = x - self.Paddings[self.selectedHandle]
		end
		local offsetTime = self.Paths.UtilityScriptDisplayArea:absoluteXPositionToTime(x)
		offsetTime = self.Paths.DataModelSession:getIncrementSnappedTime(offsetTime)
		return self.Paths.DataModelSession:formatTimeValue(offsetTime)
	end
	return clickTime
end

local function flipHandles(self, handle, time)
	local leftAnchor = Vector2.new(0, 0.5)
	local rightAnchor = Vector2.new(1, 0.5)
	if handle == self.RightHandle then
		if time <= self.StartTime then
			if FastFlags:fixKeyframeScaleHandlesPositioning() then
				positionHandle(self, self.LeftHandle, self.StartTime, self.ActivePadding[self.RightHandle])
				positionHandle(self, self.RightHandle, time, self.ActivePadding[self.LeftHandle])
			else
				positionHandle(self, self.LeftHandle, self.StartTime, getXPadding(self))
				positionHandle(self, self.RightHandle, time, -1 * getXPadding(self))
			end
			self.LeftTag.AnchorPoint = leftAnchor
			self.RightTag.AnchorPoint = rightAnchor
		else
			if FastFlags:fixKeyframeScaleHandlesPositioning() then
				positionHandle(self, self.LeftHandle, self.StartTime, self.ActivePadding[self.LeftHandle])
				positionHandle(self, self.RightHandle, time, self.ActivePadding[self.RightHandle])
			else
				positionHandle(self, self.LeftHandle, self.StartTime, -1 * getXPadding(self))
				positionHandle(self, self.RightHandle, time, getXPadding(self))
			end
			self.LeftTag.AnchorPoint = rightAnchor
			self.RightTag.AnchorPoint = leftAnchor
		end
	elseif handle == self.LeftHandle then
		if time >= self.EndTime then
			if FastFlags:fixKeyframeScaleHandlesPositioning() then
				positionHandle(self, self.LeftHandle, time, self.ActivePadding[self.RightHandle])
				positionHandle(self, self.RightHandle, self.EndTime, self.ActivePadding[self.LeftHandle])
			else
				positionHandle(self, self.LeftHandle, time, getXPadding(self))
				positionHandle(self, self.RightHandle, self.EndTime, -1 * getXPadding(self))
			end
			self.LeftTag.AnchorPoint = leftAnchor
			self.RightTag.AnchorPoint = rightAnchor
		else
			if FastFlags:fixKeyframeScaleHandlesPositioning() then
				positionHandle(self, self.LeftHandle, time, self.ActivePadding[self.LeftHandle])
				positionHandle(self, self.RightHandle, self.EndTime, self.ActivePadding[self.RightHandle])
			else
				positionHandle(self, self.LeftHandle, time, -1 * getXPadding(self))
				positionHandle(self, self.RightHandle, self.EndTime, getXPadding(self))
			end
			self.LeftTag.AnchorPoint = rightAnchor
			self.RightTag.AnchorPoint = leftAnchor
		end
	end
	positionTag(self, self.LeftTag, nil, self.LeftHandle.AbsolutePosition.X)
	positionTag(self, self.RightTag, nil, self.RightHandle.AbsolutePosition.X)
end

local function updateControls(self, handle, tag)
	local clickTime = getOffsetClickTime(self)
	setTagTime(self, tag, clickTime)
	flipHandles(self, handle, clickTime)
	resizeHighlightArea(self)
end

local function getStartAndEndTime(self)
	self.StartTime = self.Paths.DataModelClip.MaxLength
	self.EndTime = 0
	for time, dataItems in pairs(self.Paths.DataModelSession:getSelectedKeyframes()) do
		if time < self.StartTime then self.StartTime = time end
		if time > self.EndTime then self.EndTime = time end
	end
end

local function getTopAndBottomY(self)
	local topY = 0
	local bottomY = 0
	if FastFlags:isFixScalingBarPositionOn() then
		topY = self.Paths.GUIScrollingJointTimeline.AbsoluteSize.Y
	else
		topY = self.Paths.GUIScrollingJointTimeline.AbsolutePosition.Y + self.Paths.GUIScrollingJointTimeline.AbsoluteSize.Y
		bottomY = self.Paths.GUIScrollingJointTimeline.AbsolutePosition.Y
	end
	for part, dataItem in pairs(self.Paths.DataModelSession:getSelectedDataItems()) do
		local y = 0
		if FastFlags:isFixScalingBarPositionOn() then
			y = self.Paths.GUIScriptJointTimeline.JointScripts[part].jointWidget.InfoAndTrack.AbsolutePosition.Y - self.Paths.GUIScrollingJointTimeline.AbsolutePosition.Y + self.Paths.GUIScrollingJointTimeline.CanvasPosition.Y
		else
			y = self.Paths.GUIScriptJointTimeline.JointScripts[part].jointWidget.InfoAndTrack.AbsolutePosition.Y
		end
		if y < topY then topY = y end
		if y > bottomY then bottomY = y end
	end
	return topY, bottomY
end

function ScaleControls:showControls()
	self.Active = true

	getStartAndEndTime(self)
	setTagTime(self, self.LeftTag, self.StartTime)
	setTagTime(self, self.RightTag, self.EndTime)

	local topY, bottomY = getTopAndBottomY(self)
	local trackOffset = self.Paths.HelperFunctionsTable:firstValue(self.Paths.GUIScriptJointTimeline.JointScripts).jointWidget.InfoAndTrack.AbsoluteSize.Y
	local length = bottomY - topY + trackOffset

	self.LeftHandle.Visible = true
	self.RightHandle.Visible = true
	self.HighlightArea.Visible = true

	self.LeftHandle.Size = UDim2.new(0, 2, 0, length)
	self.RightHandle.Size = UDim2.new(0, 2, 0, length)

	local leftPadding = self.Paddings[self.LeftHandle]
	local rightPadding = self.Paddings[self.RightHandle]

	if FastFlags:fixKeyframeScaleHandlesPositioning() then
		leftPadding = getPaddingToApply(self, self.StartTime, self.Paddings[self.LeftHandle])
		rightPadding = getPaddingToApply(self, self.EndTime, self.Paddings[self.RightHandle])
	end
	positionHandle(self, self.LeftHandle, self.StartTime, leftPadding, topY)
	positionHandle(self, self.RightHandle, self.EndTime, rightPadding, topY)

	self.ActivePadding[self.LeftHandle] = leftPadding
	self.ActivePadding[self.RightHandle] = rightPadding

	positionTag(self, self.LeftTag, nil, self.LeftHandle.AbsolutePosition.X)
	positionTag(self, self.RightTag, nil, self.RightHandle.AbsolutePosition.X)
	resizeHighlightArea(self, bottomY + trackOffset)
end

function ScaleControls:moveControls(startTime, endTime)
	setTagTime(self, self.LeftTag, startTime)
	setTagTime(self, self.RightTag, endTime)
	if FastFlags:fixKeyframeScaleHandlesPositioning() then
		positionHandle(self, self.LeftHandle, startTime, self.ActivePadding[self.LeftHandle])
		positionHandle(self, self.RightHandle, endTime, self.ActivePadding[self.RightHandle])
	else
		positionHandle(self, self.LeftHandle, startTime, self.Paddings[self.LeftHandle])
		positionHandle(self, self.RightHandle, endTime, self.Paddings[self.RightHandle])
	end
	positionTag(self, self.LeftTag, nil, self.LeftHandle.AbsolutePosition.X)
	positionTag(self, self.RightTag, nil, self.RightHandle.AbsolutePosition.X)
	resizeHighlightArea(self)
end

function ScaleControls:hideControls()
	self.Active = false
	self.LeftHandle.Visible = false
	self.RightHandle.Visible = false
	self.HighlightArea.Visible = false
	self:hideTags()
end

function ScaleControls:showTags()
	self.LeftTag.Visible = true
	self.RightTag.Visible = true
end

function ScaleControls:hideTags()
	self.LeftTag.Visible = false
	self.RightTag.Visible = false
end

function ScaleControls:setSelected(handle, tag)
	self.selectedHandle = handle
	self.selectedTag = tag
end

function ScaleControls:resetSelected()
	self.selectedHandle = nil
	self.selectedTag = nil
end

function ScaleControls:resetControls()
	self:resetSelected()
	self:hideControls()
end

function ScaleControls:init(Paths)
	self.Paths = Paths
	self.TargetWidget = self.Paths.GUIScaleControls
	self.Connections = Paths.UtilityScriptConnections:new(Paths)

	self.LeftTag = self.TargetWidget.LeftTag
	self.RightTag = self.TargetWidget.RightTag
	self.LeftHandle = self.TargetWidget.LeftHandle
	self.RightHandle = self.TargetWidget.RightHandle
	self.HighlightArea = self.TargetWidget.HighlightArea

	self.Paddings = {}
	self.Paddings[self.TargetWidget.LeftHandle] = -1 * getXPadding(self)
	self.Paddings[self.TargetWidget.RightHandle] = getXPadding(self)

	self.ActivePadding = {}
	self.ActivePadding[self.TargetWidget.LeftHandle] = -1 * getXPadding(self)
	self.ActivePadding[self.TargetWidget.RightHandle] = getXPadding(self)

	self.Active = false

	local onHandleBegin = function(input, handle, tag)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			getStartAndEndTime(self)
			self:setSelected(handle, tag)
			self:showTags()
			self.Paths.UtilityScriptScalePoses:BeginScale(self.Paths, self.selectedHandle == self.LeftHandle)
		end
	end

	local onHandleChanged = function(input, handle, tag)
		if input.UserInputType == Enum.UserInputType.MouseMovement and self.selectedHandle == handle then
			updateControls(self, handle, tag)
			self.Paths.UtilityScriptScalePoses:Scale(self.Paths, getOffsetClickTime(self))
		end
	end

	local onHandleEnded = function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			self:resetSelected()
			self.Paths.UtilityScriptScalePoses:EndScale(self.Paths, getOffsetClickTime(self))
			if self.Paths.DataModelSession:isOnlyOneKeyframeSelected() then
				self:hideControls()
			else
				self:hideTags()
			end
		end
	end

	local onDragAreaBegin = function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			self:resetControls()
		end
	end

	local onDragAreaChanged = function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement and self.selectedHandle then
			updateControls(self, self.selectedHandle, self.selectedTag)
			self.Paths.UtilityScriptScalePoses:Scale(self.Paths, getOffsetClickTime(self))
		end
	end

	local onDragAreaEnded = function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			if self.Paths.DataModelSession:areAnyKeyframesSelected() and not self.Paths.DataModelSession:isOnlyOneKeyframeSelected() and not self.selectedHandle then
				self.Paths.GUIScriptScaleControls:showControls()
				self.Paths.GUIScriptNotificationTip:show("Drag the blue bar beside keys to scale keys evenly")
			elseif self.selectedHandle then
				onHandleEnded(input)
			end
		end
	end

	self.Connections:add(self.TargetWidget.LeftHandle.Arrow.InputBegan:connect(function(input) onHandleBegin(input, self.LeftHandle, self.LeftTag) end))
	self.Connections:add(self.TargetWidget.LeftHandle.Arrow.InputChanged:connect(function(input) onHandleChanged(input, self.LeftHandle, self.LeftTag) end))
	self.Connections:add(self.TargetWidget.LeftHandle.Arrow.InputEnded:connect(onHandleEnded))

	self.Connections:add(self.TargetWidget.RightHandle.Arrow.InputBegan:connect(function(input) onHandleBegin(input, self.RightHandle, self.RightTag) end))
	self.Connections:add(self.TargetWidget.RightHandle.Arrow.InputChanged:connect(function(input) onHandleChanged(input, self.RightHandle, self.RightTag) end))
	self.Connections:add(self.TargetWidget.RightHandle.Arrow.InputEnded:connect(onHandleEnded))

	self.Connections:add(self.TargetWidget.InputBegan:connect(onDragAreaBegin))
	self.Connections:add(self.TargetWidget.InputChanged:connect(onDragAreaChanged))
	self.Connections:add(self.TargetWidget.InputEnded:connect(onDragAreaEnded))

	self.Connections:add(self.Paths.DataModelSession.SelectedChangeEvent:connect(function()
		if not self.Paths.DataModelSession:areAnyKeyframesSelected() or self.Paths.DataModelSession:isOnlyOneKeyframeSelected() then
			self:resetControls()
		elseif not self.Paths.GUIScriptMultiSelectArea:isSelecting() then
			self.Paths.GUIScriptScaleControls:showControls()
		end
	end))

	self.Connections:add(self.Paths.DataModelKeyframes.ChangedEvent:connect(function()
		self:resetControls()
	end))

	if FastFlags:isFixScalingBarPositionOn() then
		self.LeftHandle.Parent = self.Paths.GUIScrollingJointTimeline
		self.RightHandle.Parent = self.Paths.GUIScrollingJointTimeline
		self.HighlightArea.Parent = self.Paths.GUIScrollingJointTimeline

		local size = self.TargetWidget.Size
		self.TargetWidget.Size = UDim2.new(size.X.Scale, -1 * self.Paths.GUIScrollingJointTimeline.ScrollBarThickness, size.Y.Scale, size.Y.Offset)
	end
end

function ScaleControls:initPostGUICreate()
	if FastFlags:isAnimationEventsOn() then
		self.Connections:add(self.Paths.UtilityScriptMoveItems.OnMovedEvent:connect(function(targetTime, anchorTime)
			self:resetControls()
		end))
	else	
		self.Connections:add(self.Paths.UtilityScriptMoveItems.PosesMovedEvent:connect(function(targetTime, anchorTime)
			self:resetControls()
		end))
	end
end

function ScaleControls:terminate()
	self.Paths = nil
	self.TargetWidget = nil
	self.LeftTag = nil
	self.RightTag = nil

	if FastFlags:isFixScalingBarPositionOn() then
		self.LeftHandle.Parent = self.TargetWidget
		self.RightHandle.Parent = self.TargetWidget
		self.HighlightArea.Parent = self.TargetWidget
	end

	self.LeftHandle = nil
	self.RightHandle = nil
	self.HighlightArea = nil
	self.Connections:disconnectAll()
	self.Paddings = {}
	self.ActivePadding = {}
	self:resetSelected()
	self.Active = false
end

function ScaleControls:isActive()
	return self.Active
end

function ScaleControls:promptDurationChange()
	self:showTags()
	self.Paths.GUIScriptChangeDuration:show(self.StartTime, self.EndTime - self.StartTime, function(scaleFactor)
		self:hideTags()
		if FastFlags:isFixRenameKeyOptionOn() then
			self.Paths.ActionMove:execute(self.Paths, self.StartTime, scaleFactor)
		else
			self.Paths.ActionScale:execute(self.Paths, self.StartTime, scaleFactor)
		end
	end)
end

return ScaleControls
