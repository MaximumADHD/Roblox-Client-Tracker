local FastFlags = require(script.Parent.Parent.FastFlags)

local KeyframeMarker = {}
KeyframeMarker.__index = KeyframeMarker

function KeyframeMarker:updateMarkerOnTimeline(Paths, GUIEvent, time)
	if time <= Paths.DataModelClip:getLength() then
		GUIEvent.TargetWidget.Visible = true
		Paths.UtilityScriptMoveItems:updatePositionOnTimeline(Paths, GUIEvent, time)
	else
		GUIEvent.TargetWidget.Visible = false
	end
end

local function onSelectionChanged(self)
	local hasMultipleEvents = self.Paths.DataModelAnimationEvents:hasMultipleEvents(self.Time)
	local selected = self.Paths.DataModelAnimationEvents:isAnimationEventSelected(self.Time)
	self.TargetWidget.GroupInner.Visible = hasMultipleEvents
	self.TargetWidget.GroupNotSelected.Visible = hasMultipleEvents and not selected
	self.TargetWidget.GroupSelected.Visible = hasMultipleEvents and selected

	self.TargetWidget.Inner.Visible = not hasMultipleEvents
	self.TargetWidget.NotSelected.Visible = not hasMultipleEvents and not selected
	self.TargetWidget.Selected.Visible = not hasMultipleEvents and selected
end

local function buildTooltip(self)
	local keyframe = self.Paths.DataModelClip:getKeyframe(self.Time)
	if keyframe then
		local markers = keyframe.Markers
		if markers then
			local names = ""
			local useComma = false
			for _, marker in pairs(markers) do
				if useComma then
					names = names ..", "
				end
				names = names ..marker:getName()
				useComma = true
			end
			self.Paths.GUIScriptToolTip:add(self.TargetWidget, names)
		end
	end
end

function KeyframeMarker:new(Paths, parent, time)
	local self = setmetatable({}, KeyframeMarker)
	self.Paths = Paths
	self.Time = time

	self.Connections = Paths.UtilityScriptConnections:new(Paths)

	self.TargetWidget = Paths.GUIClonableKeyframeMarker:clone()
	self.Paths.UtilityScriptTheme:setColorsToTheme(self.TargetWidget)
	self.TargetWidget.Parent = parent

	self:updateMarkerOnTimeline(Paths, self, time)

	self.Connections:add(self.Paths.DataModelClip.LengthChangedEvent:connect(function()
		self:updateMarkerOnTimeline(Paths, self, time)
	end))

	self.Connections:add(self.TargetWidget.ImageButton.MouseButton2Click:connect(function()
		Paths.DataModelAnimationEvents:selectAnimationEvent(self.Time)
		Paths.GUIScriptAnimationEventMenu:show(self.Time, self)
	end))

	self.Connections:add(self.TargetWidget.ImageButton.InputBegan:connect(function(input)
		if Enum.UserInputType.MouseButton1 == input.UserInputType then
			if self.Paths.InputKeyboard:isKeyCtrlOrCmdDown() then
				if Paths.DataModelAnimationEvents:isAnimationEventSelected(self.Time) then
					Paths.DataModelAnimationEvents:removeSelectedAnimationEvent(self.Time)
				else
					Paths.DataModelAnimationEvents:addSelectedAnimationEvent(self.Time)
				end
			else
				Paths.DataModelAnimationEvents:selectAnimationEvent(self.Time)
			end
			self.Paths.UtilityScriptMoveItems:BeginMove(self.Paths, self, self.Paths.UtilityScriptMoveItems:getGUIEventKeysFromSelectedEvents(self.Paths), nil)
		end
	end))

	self.Connections:add(self.TargetWidget.ImageButton.InputEnded:connect(function(input)
		if Enum.UserInputType.MouseButton1 == input.UserInputType then
			self.Paths.UtilityScriptMoveItems:EndMove(self.Paths)
		end
	end))

	self.Connections:add(self.Paths.DataModelAnimationEvents.SelectionChangedEvent:connect(function()
		onSelectionChanged(self)
	end))

	onSelectionChanged(self)

	buildTooltip(self)

	return self
end

function KeyframeMarker:terminate()
	self.Connections:terminate()
	self.Connections = nil

	if FastFlags:isFixEventTooltipsOn() then
		self.Paths.GUIScriptToolTip:remove(self.TargetWidget)
	end

	self.TargetWidget.Parent = nil
	self.TargetWidget:Destroy()
end

return KeyframeMarker
