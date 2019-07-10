local FastFlags = require(script.Parent.Parent.FastFlags)

local Keyframe = {}
Keyframe.__index = Keyframe

function Keyframe:updateKeyframeOnTimeline(Paths, GUIKey, time)
	if time <= Paths.DataModelClip:getLength() then
		GUIKey.TargetWidget.Visible = true
		if FastFlags:isAnimationEventsOn() then
			Paths.UtilityScriptMoveItems:updatePositionOnTimeline(Paths, GUIKey, time)
		else
			GUIKey.TargetWidget.Position = UDim2.new(math.clamp(time/Paths.DataModelClip:getLength(), 0, 1), 0, 0.5, 0)
		end
	else
		GUIKey.TargetWidget.Visible = false
		if FastFlags:isOptimizationsEnabledOn() then
			if GUIKey.DataItem and Paths.DataModelSession:isCurrentlySelectedKeyframe(time, GUIKey.DataItem) then
				Paths.DataModelSession:removeClickedPoseFromSelectedKeyframes(time, GUIKey.DataItem)
			end
		else
			if Paths.DataModelSession:isCurrentlySelectedKeyframe(time, GUIKey.DataItem) then
				Paths.DataModelSession:removeClickedPoseFromSelectedKeyframes(time, GUIKey.DataItem)
			end
		end
	end
end

local function setKeyframeColors(self, easingStyle, include)
	if FastFlags:isOptimizationsEnabledOn() then
		if easingStyle == Enum.PoseEasingStyle.Bounce then
			self.TargetWidget.ImageColor3 = self.Paths.UtilityScriptTheme:GetBounceColor(include)
		elseif easingStyle == Enum.PoseEasingStyle.Constant then
			self.TargetWidget.ImageColor3 = self.Paths.UtilityScriptTheme:GetConstantColor(include)
		elseif easingStyle == Enum.PoseEasingStyle.Linear then
			self.TargetWidget.ImageColor3 = self.Paths.UtilityScriptTheme:GetLinearColor(include)
		elseif easingStyle == Enum.PoseEasingStyle.Cubic then
			self.TargetWidget.ImageColor3 = self.Paths.UtilityScriptTheme:GetCubicColor(include)
		elseif easingStyle == Enum.PoseEasingStyle.Elastic then
			self.TargetWidget.ImageColor3 = self.Paths.UtilityScriptTheme:GetElasticColor(include)
		end

		self.TargetWidget.NotSelected.ImageColor3 = self.Paths.UtilityScriptTheme:GetKeyBorderColor(include)
		self.TargetWidget:FindFirstChild("Selected").ImageColor3 = self.Paths.UtilityScriptTheme:GetKeySelectedBorderColor()
	else
		if easingStyle == Enum.PoseEasingStyle.Bounce then
			self.TargetWidget.Inner.ImageColor3 = self.Paths.UtilityScriptTheme:GetBounceColor(true)
			self.TargetWidget.InnerDisabled.ImageColor3 = self.Paths.UtilityScriptTheme:GetBounceColor(false)
		elseif easingStyle == Enum.PoseEasingStyle.Constant then
			self.TargetWidget.Inner.ImageColor3 = self.Paths.UtilityScriptTheme:GetConstantColor(true)
			self.TargetWidget.InnerDisabled.ImageColor3 = self.Paths.UtilityScriptTheme:GetConstantColor(false)
		elseif easingStyle == Enum.PoseEasingStyle.Linear then
			self.TargetWidget.Inner.ImageColor3 = self.Paths.UtilityScriptTheme:GetLinearColor(true)
			self.TargetWidget.InnerDisabled.ImageColor3 = self.Paths.UtilityScriptTheme:GetLinearColor(false)
		elseif easingStyle == Enum.PoseEasingStyle.Cubic then
			self.TargetWidget.Inner.ImageColor3 = self.Paths.UtilityScriptTheme:GetCubicColor(true)
			self.TargetWidget.InnerDisabled.ImageColor3 = self.Paths.UtilityScriptTheme:GetCubicColor(false)
		elseif easingStyle == Enum.PoseEasingStyle.Elastic then
			self.TargetWidget.Inner.ImageColor3 = self.Paths.UtilityScriptTheme:GetElasticColor(true)
			self.TargetWidget.InnerDisabled.ImageColor3 = self.Paths.UtilityScriptTheme:GetElasticColor(false)
		end

		self.TargetWidget.NOTSelected.ImageColor3 = self.Paths.UtilityScriptTheme:GetKeyBorderColor(true)
		self.TargetWidget.BorderDisabled.ImageColor3 = self.Paths.UtilityScriptTheme:GetKeyBorderColor(false)
		self.TargetWidget.Selected.ImageColor3 = self.Paths.UtilityScriptTheme:GetKeySelectedBorderColor()
	end
end

local function selectPoseIdentifier(self, time, pose)
	local isThisKeyframeSelected = self.Paths.DataModelSession:isCurrentlySelectedKeyframe(time, self.DataItem)
	local isPartIncluded = self.Paths.DataModelRig:getPartInclude(pose:getPartName())

	if FastFlags:isOptimizationsEnabledOn() then
		self.TargetWidget.NotSelected.Visible = not isThisKeyframeSelected and isPartIncluded
		self.TargetWidget:FindFirstChild("Selected").Visible = isThisKeyframeSelected and isPartIncluded

		-- since this gets called many times for every keyframe, this method serves as an optimization
		-- because using UtilityScriptTheme:SetColorsToTheme is too costly from recursion
		setKeyframeColors(self, pose.EasingStyle, isPartIncluded)

		self.Paths.GUIScriptToolTip:add(self.TargetWidget, pose.EasingDirection.Name .. ": " .. pose.EasingStyle.Name)
	else
		self.TargetWidget.BorderDisabled.Visible = not isPartIncluded
		self.TargetWidget.NOTSelected.Visible = not isThisKeyframeSelected and isPartIncluded
		self.TargetWidget.Selected.Visible = isThisKeyframeSelected and isPartIncluded

		-- since this gets called many times for every keyframe, this method serves as an optimization
		-- because using UtilityScriptTheme:SetColorsToTheme is too costly from recursion
		setKeyframeColors(self, pose.EasingStyle)

		self.TargetWidget.Inner.Visible = isPartIncluded
		self.TargetWidget.InnerDisabled.Visible = not isPartIncluded

		self.Paths.GUIScriptToolTip:add(self.TargetWidget.ImageButton, pose.EasingDirection.Name .. ": " .. pose.EasingStyle.Name)
	end
end

function Keyframe:new(Paths, parent, time, dataItem, pose)
	local self = setmetatable({}, Keyframe)
	self.Paths = Paths
	self.DataItem = dataItem
	self.Time = time
	if FastFlags:isOptimizationsEnabledOn() then
		self.Pose = pose
	end

	self.Connections = Paths.UtilityScriptConnections:new(Paths)

	self.TargetWidget = Paths.GUIClonableKeyframe:clone()

	self.TargetWidget.Parent = parent

	self:updateKeyframeOnTimeline(Paths, self, time)

	self.Connections:add(Paths.DataModelClip.LengthChangedEvent:connect(function()
		self:updateKeyframeOnTimeline(Paths, self, time)
	end))

	if FastFlags:isOptimizationsEnabledOn() then
		target = self.TargetWidget
	else
		target = self.TargetWidget.ImageButton
	end

	self.Connections:add(target.MouseButton2Click:connect(function()
		if FastFlags:isOptimizationsEnabledOn() then
			if self.Paths.DataModelRig:getPartInclude(self.DataItem.Name) then
				Paths.DataModelSession:selectKeyframe(time, self.DataItem)
				Paths.GUIScriptTimelineMenu:show(time, self.DataItem, self.Pose)
			end
		else
			if self.Paths.DataModelRig:getPartInclude(dataItem.Name) then
				Paths.DataModelSession:selectKeyframe(time, dataItem)
				Paths.GUIScriptTimelineMenu:show(time, dataItem, pose)
			end
		end
	end))

	self.Connections:add(target.InputBegan:connect(function(input)
		if Enum.UserInputType.MouseButton1 == input.UserInputType then
			if self.Paths.InputKeyboard:isKeyCtrlOrCmdDown() then
				if FastFlags:isOptimizationsEnabledOn() then
					if self.Paths.DataModelSession:isCurrentlySelectedKeyframe(time, self.DataItem) then
						self.Paths.DataModelSession:removeClickedPoseFromSelectedKeyframes(time, self.DataItem)
					else
						self.Paths.DataModelSession:addClickedPoseToSelectedKeyframes(time, self.DataItem)
					end
				else
					if self.Paths.DataModelSession:isCurrentlySelectedKeyframe(time, dataItem) then
						self.Paths.DataModelSession:removeClickedPoseFromSelectedKeyframes(time, dataItem)
					else
						self.Paths.DataModelSession:addClickedPoseToSelectedKeyframes(time, dataItem)
					end
				end
			else
				if FastFlags:isOptimizationsEnabledOn() then
					Paths.DataModelSession:selectKeyframe(time, self.DataItem)
				else
					Paths.DataModelSession:selectKeyframe(time, dataItem)
				end
			end
			if FastFlags:isAnimationEventsOn() then
				self.Paths.UtilityScriptMoveItems:BeginMove(self.Paths, self, self.Paths.UtilityScriptMoveItems:getGUIKeyframesFromSelectedKeyframes(self.Paths), nil)
			else
				self.Paths.UtilityScriptMoveItems:BeginMove(self.Paths, self)
			end
		end
	end))

	self.Connections:add(target.InputEnded:connect(function(input)
		if Enum.UserInputType.MouseButton1 == input.UserInputType then
			self.Paths.UtilityScriptMoveItems:EndMove(self.Paths)
		end
	end))

	if FastFlags:isOptimizationsEnabledOn() then
		selectPoseIdentifier(self, time, self.Pose)
		self.Connections:add(Paths.DataModelSession.SelectedChangeEvent:connect(function() selectPoseIdentifier(self, time, self.Pose) end))					
		self.Connections:add(Paths.DataModelKeyframes.PoseTransformChangedEvent:connect(function() selectPoseIdentifier(self, time, self.Pose) end))		
		self.Connections:add(Paths.DataModelRig.PartIncludeToggleEvent:connect(function() selectPoseIdentifier(self, time, self.Pose) end))
	else
		selectPoseIdentifier(self, time, pose)
		self.Connections:add(Paths.DataModelSession.SelectedChangeEvent:connect(function() selectPoseIdentifier(self, time, pose) end))					
		self.Connections:add(Paths.DataModelKeyframes.PoseTransformChangedEvent:connect(function() selectPoseIdentifier(self, time, pose) end))		
		self.Connections:add(Paths.DataModelRig.PartIncludeToggleEvent:connect(function() selectPoseIdentifier(self, time, pose) end))
	end
	return self
end

function Keyframe:terminate()
	self.Connections:terminate()
	self.Connections = nil
	
	if FastFlags:isOptimizationsEnabledOn() then
		self.Paths.GUIScriptToolTip:remove(self.TargetWidget)
	else
		self.Paths.GUIScriptToolTip:remove(self.TargetWidget.ImageButton)
	end
				
	self.TargetWidget.Parent = nil
	self.TargetWidget:Destroy()		
end

return Keyframe
