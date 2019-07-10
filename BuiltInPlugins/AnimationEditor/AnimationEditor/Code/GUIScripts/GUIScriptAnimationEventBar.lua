local FastFlags = require(script.Parent.Parent.FastFlags)

-- singleton
local EventBar = {}

EventBar.TargetWidget = nil
EventBar.EventArea = nil
EventBar.Connections = nil
EventBar.KeyframeMarkers = {}

local function initKeyframeMarkers(self, keyframes)
	self:clearKeyframeMarkers()
	for time, key in pairs(keyframes) do
		if not self.Paths.HelperFunctionsTable:isNilOrEmpty(key.Markers) then
			self:addKeyframeMarker(time)
		end
	end
end

local function updateKeyframeMarkers(self, keyframes)
	for time, key in pairs(keyframes) do
		if not self.Paths.HelperFunctionsTable:isNilOrEmpty(key) and not self.Paths.HelperFunctionsTable:isNilOrEmpty(key.Markers) then
			self:addKeyframeMarker(time)
		else
			self:removeKeyframeMarker(time)
		end
	end
end

local function findEventsInMultiSelectArea(self)
	if FastFlags:isOptimizationsEnabledOn() then
		for _, marker in pairs(self.KeyframeMarkers) do
			if self.SelectAndDragBox:isInSelectedTimeRange(marker.Time) then
				self.Paths.DataModelAnimationEvents:addMultiSelectedAnimationEvent(marker.Time)
			end
		end
	else
		for _, marker in ipairs(self.KeyframeMarkers) do
			if self.SelectAndDragBox:isInSelectedTimeRange(marker.Time) then
				self.Paths.DataModelAnimationEvents:addMultiSelectedAnimationEvent(marker.Time)
			else
				self.Paths.DataModelAnimationEvents:removeMultiSelectedAnimationEvent(marker.Time)
			end
		end
	end
	self.Paths.DataModelAnimationEvents.SelectionChangedEvent:fire()
end

local function onAddClicked(self)
	local time = self.Paths.DataModelSession:getScrubberTime()
	local keyframe = self.Paths.DataModelKeyframes:getOrCreateKeyframe(time)
	if keyframe then
		self.Paths.GUIScriptEditAnimationEvents:show(time)
	end
end

local function onAreaClicked(self, input)
	if Enum.UserInputType.MouseButton1 == input.UserInputType and not self.Paths.InputKeyboard:isKeyCtrlOrCmdDown() then
		self.Paths.DataModelAnimationEvents:selectNone()
	end
	if Enum.UserInputType.MouseButton2 == input.UserInputType then
		self.Paths.GUIScriptAnimationEventMenu:show(self.Paths.UtilityScriptDisplayArea:getFormattedMouseTime(true))
	end
end

local function onManageClicked(self)
	self.Paths.GUIScriptManageEvents:show()
	self.ManageEventsButton:setPressed(true)
end

local function onExpandClicked(self, enabled)
	self.TargetWidget.Visible = enabled
	local oldGUISize = self.Paths.GUI.Size
	local newYOffset = not enabled and self.TargetWidget.Size.Y.Offset or 0
	self.Paths.GUI.Size = UDim2.new(oldGUISize.X.Scale, oldGUISize.X.Offset, oldGUISize.Y.Scale, newYOffset)
end

function EventBar:init(Paths)
	self.Paths = Paths
	self.TargetWidget = self.Paths.GUIAnimationEventBar
	self.EventArea = self.Paths.GUIEventArea
	self.Paths.UtilityScriptDisplayArea:addDisplay(self.EventArea)
	self.Connections = Paths.UtilityScriptConnections:new()

	if FastFlags:isOptimizationsEnabledOn() then
		if FastFlags:isSelectEventsOnEdgeOn() then
			self.SelectAndDragBox = self.Paths.WidgetSelectAndDragBox:new(Paths, Paths.GUIEventMultiSelectBox, self.EventArea.Parent.Parent, nil, function() findEventsInMultiSelectArea(self) end)
		else
			self.SelectAndDragBox = self.Paths.WidgetSelectAndDragBox:new(Paths, Paths.GUIEventMultiSelectBox, self.EventArea, nil, function() findEventsInMultiSelectArea(self) end)
		end
	else
		if FastFlags:isSelectEventsOnEdgeOn() then
			self.SelectAndDragBox = self.Paths.WidgetSelectAndDragBox:new(Paths, Paths.GUIEventMultiSelectBox, self.EventArea.Parent.Parent, function() findEventsInMultiSelectArea(self) end)
		else
			self.SelectAndDragBox = self.Paths.WidgetSelectAndDragBox:new(Paths, Paths.GUIEventMultiSelectBox, self.EventArea, function() findEventsInMultiSelectArea(self) end)
		end
	end
	self.ManageEventsButton = self.Paths.WidgetCustomImageButton:new(self.Paths, self.TargetWidget.AnimationEventsButtons.ManageEventsButton)

	initKeyframeMarkers(self, self.Paths.DataModelKeyframes.keyframeList)
	self.Connections:add(self.Paths.DataModelKeyframes.ChangedEvent:connect(function(keyframes)
		if FastFlags:isOptimizationsEnabledOn() then
			updateKeyframeMarkers(self, keyframes)
		else
			initKeyframeMarkers(self, keyframes)
		end
	end))
	self.Connections:add(self.TargetWidget.AnimationEventsButtons.AddEventsButton.MouseButton1Click:connect(function() onAddClicked(self) end))
	if FastFlags:isSelectEventsOnEdgeOn() then
		self.Connections:add(self.EventArea.Parent.Parent.InputBegan:connect(function(input) onAreaClicked(self, input) end))
	else
		self.Connections:add(self.EventArea.InputBegan:connect(function(input) onAreaClicked(self, input) end))
	end
	self.Connections:add(self.TargetWidget.AnimationEventsButtons.ManageEventsButton.MouseButton1Click:connect(function() onManageClicked(self) end))
	self.Connections:add(self.Paths.GUIScriptManageEvents.WindowClosedEvent:connect(function() self.ManageEventsButton:setPressed(false) end))
	self.Connections:add(self.Paths.DataModelAnimationEvents.EditEventsEnabledChangedEvent:connect(function(enabled) onExpandClicked(self, enabled) end))
end

function EventBar:removeKeyframeMarker(time)
	if self.KeyframeMarkers[time] then
		self.KeyframeMarkers[time]:terminate()
		self.KeyframeMarkers[time] = nil
	end
end

function EventBar:addKeyframeMarker(time)
	if FastFlags:isOptimizationsEnabledOn() then
		if self.KeyframeMarkers[time] then
			self.KeyframeMarkers[time].Time = time
		else
			self.KeyframeMarkers[time] = self.Paths.GUIScriptKeyframeMarker:new(self.Paths, self.EventArea, time)
		end
	else
		self.KeyframeMarkers[#self.KeyframeMarkers + 1] = self.Paths.GUIScriptKeyframeMarker:new(self.Paths, self.EventArea, time)
	end
end

function EventBar:clearKeyframeMarkers()
	for _, marker in pairs(self.KeyframeMarkers) do
		marker:terminate()
	end
	self.KeyframeMarkers = {}
end

function EventBar:terminate()
	self.Paths.UtilityScriptDisplayArea:removeDisplay(self.EventArea)
	if FastFlags:isEnableRigSwitchingOn() then
		self:clearKeyframeMarkers()
	end
	self.ManageEventsButton:terminate()
	self.TargetWidget = nil
	self.EventArea = nil
	self.Connections:disconnectAll()
end

return EventBar