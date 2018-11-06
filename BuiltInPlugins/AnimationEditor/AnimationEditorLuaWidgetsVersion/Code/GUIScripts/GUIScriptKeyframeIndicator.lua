local FastFlags = require(script.Parent.Parent.FastFlags)

local KeyframeIndicator = {}
KeyframeIndicator.__index = KeyframeIndicator

local function setPoseHighlighted(self, selected)
	self.TargetWidget.Selected.Visible = selected
	self.TargetWidget.NotSelected.Visible = not selected
end

local function getSelectedGUIKeyframe(self)
	local firstSelectedPose = self.Paths.DataModelSession:getSelectedPoseAtTime(self.Time)
	if firstSelectedPose then
		local jointScript = self.Paths.GUIScriptJointTimeline.JointScripts[firstSelectedPose:getPart()]
		if jointScript then
			for _, key in ipairs(jointScript.Keyframes) do
				if self.Time == key.Time then
					return key
				end
			end
		end
	end
end

function KeyframeIndicator:new(Paths, parent, time)
	local self = setmetatable({}, KeyframeIndicator)
	self.Paths = Paths
	self.Time = time

	self.Connections = Paths.UtilityScriptConnections:new(Paths)

	self.TargetWidget = Paths.GUIClonableKeyframeIndicator:clone()
	self.Paths.UtilityScriptTheme:setColorsToTheme(self.TargetWidget)
	self.TargetWidget.Parent = parent

	self.Paths.GUIScriptKeyframe:updateKeyframeOnTimeline(Paths, self, time)

	self.Connections:add(Paths.DataModelClip.LengthChangedEvent:connect(function()
		self.Paths.GUIScriptKeyframe:updateKeyframeOnTimeline(Paths, self, time)
	end))

	self.Connections:add(self.TargetWidget.ImageButton.MouseButton1Click:connect(function()
		local keyframe = Paths.DataModelClip:getKeyframe(self.Time)
		local wasPoseSelected = self:areAnyPosesSelected()
		self.Paths.DataModelSession:selectNone()
		if not wasPoseSelected then
			for _, pose in pairs(keyframe.Poses) do
				self.Paths.DataModelSession:addClickedPoseToSelectedKeyframes(self.Time, pose.Item)
			end
		end
	end))

	self.Connections:add(self.TargetWidget.ImageButton.MouseButton2Click:connect(function()
		local keyframe = Paths.DataModelClip:getKeyframe(self.Time)
		self.Paths.DataModelSession:selectNone()
		for _, pose in pairs(keyframe.Poses) do
			self.Paths.DataModelSession:addClickedPoseToSelectedKeyframes(self.Time, pose.Item)
		end
		local pose = self.Paths.DataModelSession:getSelectedPoseAtTime(self.Time)
		if pose then
			Paths.GUIScriptTimelineMenu:show(time, pose.Item)
		end
	end))

	self.Connections:add(self.TargetWidget.ImageButton.InputBegan:connect(function(input)
		if Enum.UserInputType.MouseButton1 == input.UserInputType then
			self.Paths.UtilityScriptMovePoses:BeginMove(self.Paths, getSelectedGUIKeyframe(self))
		end
	end))

	self.Connections:add(self.TargetWidget.ImageButton.InputEnded:connect(function(input)
		if Enum.UserInputType.MouseButton1 == input.UserInputType then
			self.Paths.UtilityScriptMovePoses:EndMove(self.Paths)
		end
	end))

	self.Connections:add(Paths.UtilityScriptMovePoses.PosesMovedEvent:connect(function(targetTime, anchorTime)
		if self:areAnyPosesSelected() then
			local deltaTime = anchorTime - self.Time
			local newTime =  targetTime - deltaTime
			newTime = Paths.DataModelSession:formatTimeValue(newTime)
			self.Paths.GUIScriptKeyframe:updateKeyframeOnTimeline(self.Paths, self, newTime)
		end
	end))

	if FastFlags:isScaleKeysOn() then
		self.Connections:add(Paths.UtilityScriptScalePoses.PosesScaledEvent:connect(function(anchorTime, scaleFactor)
			if self:areAnyPosesSelected() then
				local deltaTime = (anchorTime - self.Time) * scaleFactor
				local newTime =  anchorTime - deltaTime
				newTime = Paths.DataModelSession:formatTimeValue(newTime)
				self.Paths.GUIScriptKeyframe:updateKeyframeOnTimeline(self.Paths, self, newTime)
			end
		end))
	end

	setPoseHighlighted(self, self:areAnyPosesSelected())
	self.Connections:add(Paths.DataModelSession.SelectedChangeEvent:connect(function()
		setPoseHighlighted(self, self:areAnyPosesSelected())
	end))

	return self
end

function KeyframeIndicator:areAnyPosesSelected()
	return self.Paths.DataModelSession:areAnyPosesForTimeSelected(self.Time)
end

function KeyframeIndicator:terminate()
	self.Connections:terminate()
	self.Connections = nil

	self.TargetWidget.Parent = nil
	self.TargetWidget:Destroy()
end

return KeyframeIndicator
