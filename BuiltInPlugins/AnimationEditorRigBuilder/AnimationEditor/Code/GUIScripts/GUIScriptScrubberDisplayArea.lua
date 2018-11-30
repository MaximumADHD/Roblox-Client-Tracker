-- singleton

local FastFlags = require(script.Parent.Parent.FastFlags)

local ScrubberDisplayArea = {}

ScrubberDisplayArea.TargetWidget = nil
ScrubberDisplayArea.Connections = nil

local function setScrubberPosition(self, time)
	local newXPositionScale = math.clamp(time/self.Paths.DataModelClip:getLength(), 0, 1)
	self.TargetWidget.Scrubber.Position = UDim2.new(newXPositionScale, 0, self.startingYPositionScale, self.startingYPositionOffset)
end

local function setScrubberHead(self, time)
	self.TargetWidget.Scrubber.ScrubHead.Time.Text = self.Paths.DataModelSession:getFormattedScrubberTime()
	
	local TextPadding = 12
	local MinScrubHeadWidth = 17
	local newScrubHeadWidth = math.max(MinScrubHeadWidth, self.TargetWidget.Scrubber.ScrubHead.Time.TextBounds.X+TextPadding)
	self.TargetWidget.Scrubber.ScrubHead.Size = UDim2.new(self.startingScrubHeadSize.X.Scale, newScrubHeadWidth, self.startingScrubHeadSize.Y.Scale, self.startingScrubHeadSize.Y.Offset)
end

local function setScrubber(self, time)
	if FastFlags:isIKModeFlagOn() and self.Paths.DataModelSession:inputLocked() then
		return
	end
	setScrubberPosition(self, time)
	setScrubberHead(self)
end

local function getPoseSnappedTime(self, time)
	if self.Paths.DataModelPreferences:getValue(self.Paths.DataModelPreferences.Type.CursorPoseSnapping) then		
		local closestPoseTime = self.Paths.DataModelClip:getClosestPoseTime(time)
		if nil ~= closestPoseTime then -- checking for no key frame poses
			local closestPoseAbsolutePosition = self.Paths.UtilityScriptDisplayArea:timeToAbsoluteXPosition(closestPoseTime)
			local scrubAbsolutePosition = self.Paths.UtilityScriptDisplayArea:timeToAbsoluteXPosition(time)
					
			local SnapDist = 30
			if math.abs(closestPoseAbsolutePosition-scrubAbsolutePosition) < SnapDist then
				return closestPoseTime
			end
		end
	end	
end

local function fireTimeChange(self, scrubTime)
	local poseSnappedTime = getPoseSnappedTime(self, scrubTime)
	if nil ~= poseSnappedTime then
		self.TimeChangeEvent:fire(poseSnappedTime)
		return
	end

	scrubTime = self.Paths.DataModelSession:getIncrementSnappedTime(scrubTime)

	self.TimeChangeEvent:fire(scrubTime)
end

local function initDraggable(self)
	self.dragableScrubber = self.Paths.UtilityScriptDrag:new(self.Paths, self.TargetWidget.Scrubber)
	self.Connections:add(self.dragableScrubber.DragEvent:connect(function()
		fireTimeChange(self, self.Paths.DataModelClip:getScaledLength(self.TargetWidget.Scrubber.Position.X.Scale))
	end))
	
	self.Connections:add(self.dragableScrubber.DragStartEvent:connect(function() self.StartScrubberDragEvent:fire() end))
	self.Connections:add(self.dragableScrubber.DragEndEvent:connect(function() self.EndScrubberDragEvent:fire() end))
end

function ScrubberDisplayArea:init(Paths)
	self.TargetWidget = Paths.GUIScrubberDisplayArea
	self.Paths = Paths
	self.Paths.UtilityScriptDisplayArea:addDisplay(self.TargetWidget)
	self.Connections = self.Paths.UtilityScriptConnections:new(Paths)
	
	self.TimeChangeEvent = Paths.UtilityScriptEvent:new()
	self.StartScrubberDragEvent = Paths.UtilityScriptEvent:new()
	self.EndScrubberDragEvent = Paths.UtilityScriptEvent:new()
	
	self.startingYPositionScale = self.TargetWidget.Scrubber.Position.Y.Scale
	self.startingYPositionOffset = self.TargetWidget.Scrubber.Position.Y.Offset	
	self.startingScrubHeadSize = self.TargetWidget.Scrubber.ScrubHead.Size
	
	setScrubber(self, Paths.DataModelSession:getScrubberTime())
	self.Connections:add(Paths.DataModelSession.ScrubberTimeChangeEvent:connect(function(time) setScrubber(self, time) end))
	self.Connections:add(Paths.DataModelSession.DisplayPrecisionChangeEvent:connect(function(time) setScrubberHead(self, time) end))
	
	initDraggable(self)
	
	self.Connections:add(self.Paths.DataModelClip.LengthChangedEvent:connect(function() setScrubber(self, Paths.DataModelSession:getScrubberTime()) end))
	
	self.Connections:add(self.TargetWidget.ScrubberClickZone.InputBegan:connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then			
			if not self.dragableScrubber:isDragging() then -- we don't want to intefere if the user is already dragging the scrubber
				fireTimeChange(self, self.Paths.UtilityScriptDisplayArea:getMouseTime())
				self.dragableScrubber:beginDrag(input)
			end
		end 
	end))

	self.Connections:add(self.TargetWidget.ScrubberClickZone.InputEnded:connect(function(input)
		self.dragableScrubber:endDrag(input)
	end))
end

function ScrubberDisplayArea:terminate()
	self.dragableScrubber:terminate()
	
	self.dragableScrubber = nil
	
	self.Connections:terminate()
	self.Connections = nil
	self.Paths.UtilityScriptDisplayArea:removeDisplay(self.TargetWidget)
	self.Paths = nil
end

return ScrubberDisplayArea
