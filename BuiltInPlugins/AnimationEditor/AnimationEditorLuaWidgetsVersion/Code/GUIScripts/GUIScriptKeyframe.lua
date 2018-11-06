local FastFlags = require(script.Parent.Parent.FastFlags)

local Keyframe = {}
Keyframe.__index = Keyframe

function Keyframe:updateKeyframeOnTimeline(Paths, GUIKey, time)
	if time <= Paths.DataModelClip:getLength() then
		GUIKey.TargetWidget.Visible = true
		GUIKey.TargetWidget.Position = UDim2.new(math.clamp(time/Paths.DataModelClip:getLength(), 0, 1), 0, 0.5, 0)
	else
		GUIKey.TargetWidget.Visible = false
		if Paths.DataModelSession:isCurrentlySelectedKeyframe(time, GUIKey.DataItem) then
			Paths.DataModelSession:removeClickedPoseFromSelectedKeyframes(time, GUIKey.DataItem)
		end
	end
end

local function setKeyframeColors(self, easingStyle)
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

local function selectPoseIdentifier(self, time, pose)
	local isThisKeyframeSelected = self.Paths.DataModelSession:isCurrentlySelectedKeyframe(time, self.DataItem)
	local isPartIncluded = self.Paths.DataModelRig:getPartInclude(pose:getPartName())

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

function Keyframe:new(Paths, parent, time, dataItem, pose)
	local self = setmetatable({}, Keyframe)
	self.Paths = Paths
	self.DataItem = dataItem
	self.Time = time

	self.Connections = Paths.UtilityScriptConnections:new(Paths)

	self.TargetWidget = Paths.GUIClonableKeyframe:clone()

	self.TargetWidget.Parent = parent

	self:updateKeyframeOnTimeline(Paths, self, time)

	self.Connections:add(Paths.DataModelClip.LengthChangedEvent:connect(function()
		self:updateKeyframeOnTimeline(Paths, self, time)
	end))

	self.Connections:add(self.TargetWidget.ImageButton.MouseButton1Click:connect(function()
		if self.Paths.InputKeyboard:isKeyCtrlOrCmdDown() then
			if self.Paths.DataModelSession:isCurrentlySelectedKeyframe(time, dataItem) then
				self.Paths.DataModelSession:removeClickedPoseFromSelectedKeyframes(time, dataItem)
			else
				self.Paths.DataModelSession:addClickedPoseToSelectedKeyframes(time, dataItem)
			end
		else
			Paths.DataModelSession:selectOrToggleKeyframe(time, dataItem)
		end
	end))

	self.Connections:add(self.TargetWidget.ImageButton.MouseButton2Click:connect(function()
		if not FastFlags:isPartIncludeFixOn() or self.Paths.DataModelRig:getPartInclude(dataItem.Name) then
			Paths.DataModelSession:selectKeyframe(time, dataItem)
			Paths.GUIScriptTimelineMenu:show(time, dataItem, pose)
		end
	end))

	self.Connections:add(self.TargetWidget.ImageButton.InputBegan:connect(function(input)
		if Enum.UserInputType.MouseButton1 == input.UserInputType then
			self.Paths.UtilityScriptMovePoses:BeginMove(self.Paths, self)
		end
	end))

	self.Connections:add(self.TargetWidget.ImageButton.InputEnded:connect(function(input)
		if Enum.UserInputType.MouseButton1 == input.UserInputType then
			self.Paths.UtilityScriptMovePoses:EndMove(self.Paths)
		end
	end))

	selectPoseIdentifier(self, time, pose)
	self.Connections:add(Paths.DataModelSession.SelectedChangeEvent:connect(function() selectPoseIdentifier(self, time, pose) end))					
	self.Connections:add(Paths.DataModelKeyframes.PoseTransformChangedEvent:connect(function() selectPoseIdentifier(self, time, pose) end))		
	self.Connections:add(Paths.DataModelRig.PartIncludeToggleEvent:connect(function() selectPoseIdentifier(self, time, pose) end))
	return self
end

function Keyframe:terminate()
	self.Connections:terminate()
	self.Connections = nil
	
	self.Paths.GUIScriptToolTip:remove(self.TargetWidget.ImageButton)
				
	self.TargetWidget.Parent = nil
	self.TargetWidget:Destroy()		
end

return Keyframe
