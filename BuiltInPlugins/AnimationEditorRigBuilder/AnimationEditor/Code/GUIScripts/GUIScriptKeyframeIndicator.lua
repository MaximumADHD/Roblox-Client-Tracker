local FastFlags = require(script.Parent.Parent.FastFlags)

local KeyframeIndicator = {}
KeyframeIndicator.__index = KeyframeIndicator

local function setPoseHighlighted(self, selected)
	if FastFlags:isOptimizationsEnabledOn() then
		self.TargetWidget.NotSelected.ImageColor3 = self.Paths.UtilityScriptTheme:GetKeyBorderColor(true)
		self.TargetWidget:FindFirstChild("Selected").ImageColor3 = self.Paths.UtilityScriptTheme:GetKeySelectedBorderColor()
		self.TargetWidget:FindFirstChild("Selected").Visible = selected
	else
		self.TargetWidget.Selected.Visible = selected
	end
	self.TargetWidget.NotSelected.Visible = not selected
end

local function getSelectedGUIKeyframe(self)
	local firstSelectedPose = self.Paths.DataModelSession:getSelectedPoseAtTime(self.Time)
	if firstSelectedPose then
		local jointScript = self.Paths.GUIScriptJointTimeline.JointScripts[firstSelectedPose:getPart()]
		if jointScript then
			for _, key in pairs(jointScript.Keyframes) do
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

	local target = nil
	if FastFlags:isOptimizationsEnabledOn() then
		target = self.TargetWidget
	else
		target = self.TargetWidget.ImageButton
	end
	if not FastFlags:isSelectAndDragOn() then
		self.Connections:add(target.MouseButton1Click:connect(function()
			local keyframe = Paths.DataModelClip:getKeyframe(self.Time)
			local wasPoseSelected = self:areAnyPosesSelected()
			self.Paths.DataModelSession:selectNone()
			if not wasPoseSelected then
				for _, pose in pairs(keyframe.Poses) do
					self.Paths.DataModelSession:addClickedPoseToSelectedKeyframes(self.Time, pose.Item)
				end
			end
		end))
	end

	self.Connections:add(target.MouseButton2Click:connect(function()
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

	local onMove = function(targetTime, anchorTime)
		if self:areAnyPosesSelected() then
			local deltaTime = anchorTime - self.Time
			local newTime =  targetTime - deltaTime
			newTime = Paths.DataModelSession:formatTimeValue(newTime)
			self.Paths.GUIScriptKeyframe:updateKeyframeOnTimeline(self.Paths, self, newTime)
		end
	end

	self.Connections:add(target.InputBegan:connect(function(input)
		if Enum.UserInputType.MouseButton1 == input.UserInputType then
			if FastFlags:isSelectAndDragOn() then
				local wasPoseSelected = self:areAnyPosesSelected()
				if not wasPoseSelected then
					local keyframe = Paths.DataModelClip:getKeyframe(self.Time)
					self.Paths.DataModelSession:selectNone()
					if not wasPoseSelected then
						for _, pose in pairs(keyframe.Poses) do
							if FastFlags:isOptimizationsEnabledOn() then
								self.Paths.DataModelSession:addClickedPoseToSelectedKeyframes(self.Time, pose.Item, false)
							else
								self.Paths.DataModelSession:addClickedPoseToSelectedKeyframes(self.Time, pose.Item)
							end
						end
					end
				end
			end
			if FastFlags:isAnimationEventsOn() then
				if FastFlags:isOptimizationsEnabledOn() then
					self.Paths.UtilityScriptMoveItems:BeginMove(self.Paths, getSelectedGUIKeyframe(self), self.Paths.UtilityScriptMoveItems:getGUIKeyframesFromSelectedKeyframes(self.Paths))
				else
					self.Paths.UtilityScriptMoveItems:BeginMove(self.Paths, getSelectedGUIKeyframe(self), self.Paths.UtilityScriptMoveItems:getGUIKeyframesFromSelectedKeyframes(self.Paths), onMove)
				end
			else
				self.Paths.UtilityScriptMoveItems:BeginMove(self.Paths, getSelectedGUIKeyframe(self))
			end
			if FastFlags:isOptimizationsEnabledOn() then
				self.Paths.DataModelSession.SelectedChangeEvent:fire()
			end
		end
	end))

	self.Connections:add(target.InputEnded:connect(function(input)
		if Enum.UserInputType.MouseButton1 == input.UserInputType then
			self.Paths.UtilityScriptMoveItems:EndMove(self.Paths)
		end
	end))

	if FastFlags:isOptimizationsEnabledOn() then
		self.Connections:add(Paths.UtilityScriptMoveItems.OnMovedEvent:connect(function(targetTime, anchorTime)
			if self:areAnyPosesSelected() then
				local deltaTime = anchorTime - self.Time
				local newTime =  targetTime - deltaTime
				newTime = Paths.DataModelSession:formatTimeValue(newTime)
				self.Paths.GUIScriptKeyframe:updateKeyframeOnTimeline(self.Paths, self, newTime)
			end
		end))
	end

	if not FastFlags:isAnimationEventsOn() then
		self.Connections:add(Paths.UtilityScriptMoveItems.PosesMovedEvent:connect(function(targetTime, anchorTime)
			if self:areAnyPosesSelected() then
				local deltaTime = anchorTime - self.Time
				local newTime =  targetTime - deltaTime
				newTime = Paths.DataModelSession:formatTimeValue(newTime)
				self.Paths.GUIScriptKeyframe:updateKeyframeOnTimeline(self.Paths, self, newTime)
			end
		end))
	end

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
		if FastFlags:isFixRenameKeyOptionOn() then
			self.Paths.GUIScriptKeyframe:updateKeyframeOnTimeline(Paths, self, time)
		end
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
