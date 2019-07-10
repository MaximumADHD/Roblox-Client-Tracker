local FastFlags = require(script.Parent.Parent.FastFlags)

local Joint = {}
Joint.__index = Joint

Joint.IndentSize = 10

local function calculateHeight(self)
	local nestedHeight = 0
	if self.jointWidget.Nested.Visible then
		local descendantHeight = 0
		for _,child in ipairs(self.Children) do
			descendantHeight = descendantHeight + child:getHeight()
		end
		self.jointWidget.Nested.Descendants.Size = UDim2.new(self.jointWidget.Nested.Descendants.Size.X.Scale, self.jointWidget.Nested.Descendants.Size.X.Offset, self.jointWidget.Nested.Descendants.Size.Y.Scale, descendantHeight)
		
		nestedHeight = descendantHeight	
	end	
	
	self.jointWidget.Nested.Size = UDim2.new(self.jointWidget.Nested.Size.X.Scale, self.jointWidget.Nested.Size.X.Offset, self.jointWidget.Nested.Size.Y.Scale, nestedHeight)
	
	self.height = self.jointWidget.InfoAndTrack.AbsoluteSize.Y + nestedHeight + self.jointWidget.UIListLayout.Padding.Offset
	self.jointWidget.Size = UDim2.new(self.jointWidget.Size.X.Scale, self.jointWidget.Size.X.Offset, self.jointWidget.Size.Y.Scale, self.height)
	return self.height
end

local function onHeightChange(self)
	calculateHeight(self)
	self.heightChangeEvent:fire()
end

function Joint:childrenOrdered()
    -- return the iterator function
    local i = 0
    return function()
        i = i + 1
        return self.Children[i]
    end
end

function Joint:clearKeyframes()
	if FastFlags:isOptimizationsEnabledOn() then
		for _, key in pairs(self.Keyframes) do
			key:terminate()
		end
	else
		local numKeyframes = #self.Keyframes
		for key = 1, numKeyframes do
			self.Keyframes[key]:terminate()
		end
	end
	self.Keyframes = {}
end

function Joint:removeKeyframe(time)
	if self.Keyframes[time] then
		self.Keyframes[time]:terminate()
		self.Keyframes[time] = nil
	end
end

function Joint:addKeyframe(time, pose)
	if FastFlags:isOptimizationsEnabledOn() then
		if self.Keyframes[time] then
			self.Keyframes[time].Time = time
			self.Keyframes[time].DataItem = self.DataItem
			self.Keyframes[time].Pose = pose
		else
			self.Keyframes[time] = self.Paths.GUIScriptKeyframe:new(self.Paths, self.jointWidget.InfoAndTrack.Track.DisplayArea.KeyframesDisplayArea, time, self.DataItem, pose)
		end
	else
		self.Keyframes[#self.Keyframes + 1] = self.Paths.GUIScriptKeyframe:new(self.Paths, self.jointWidget.InfoAndTrack.Track.DisplayArea.KeyframesDisplayArea, time, self.DataItem, pose)
	end
end

local function connectClicks(self)
	if self.Paths.DataModelRig:isPartManeuverable(self.DataItem) then
		self.Connections:add(self.jointWidget.InfoAndTrack.InputBegan:connect(function(input)
			if Enum.UserInputType.MouseButton1 == input.UserInputType then
				if self.Paths.InputKeyboard:isKeyCtrlOrCmdDown() then
					if self.Paths.DataModelSession:isCurrentlySelectedDataItem(self.DataItem) then
						self.Paths.DataModelSession:removeFromDataItems(self.DataItem)
					else
						self.Paths.DataModelSession:addToDataItems(self.DataItem)
					end
				elseif FastFlags:isShiftSelectJointsOn() and self.Paths.InputKeyboard:isKeyShiftDown() then
					if self.Paths.DataModelSession:isCurrentlySelectedDataItem(self.DataItem) then
						self.Paths.DataModelSession:selectDataItem(self.DataItem)
					elseif not self.Paths.DataModelSession:areAnyKeyframesSelected() then
						self.Paths.DataModelSession:shiftSelectDataItem(self.DataItem)
					end
				else
					self.Paths.DataModelSession:toggleSelectedDataItem(self.DataItem)
				end
			end
		end))
		self.Connections:add(self.jointWidget.InfoAndTrack.Track.InputBegan:connect(function(input)
			if Enum.UserInputType.MouseButton2 == input.UserInputType then
				if self.Paths.DataModelRig:getPartInclude(self.DataItem.Name) then
					local clickTime = self.Paths.UtilityScriptDisplayArea:getFormattedMouseTime(true)
					self.Paths.GUIScriptTimelineMenu:show(clickTime, self.DataItem)
				end
			end
		end))
	end
end

local function openAntecendents(self)
	local iter = self
	while iter do
		if nil ~= iter.JointSwizzle then
			iter.JointSwizzle:open()
		end
		iter = iter.ParentJointScript
	end	
end

local function openHierarchy(self)
	if self.Paths.DataModelSession:isCurrentlySelectedDataItem(self.DataItem) then
		openAntecendents(self)
	end	
end

local function setNameColor(self)
	if self.Paths.DataModelSession:isCurrentlySelectedDataItem(self.DataItem) then
		if self.Paths.DataModelRig:getPartInclude(self.DataItem.Name) then
			self.jointWidget.InfoAndTrack.JointInfo.NameAndSwizzle.JointName.JointName.TextColor3 = self.Paths.UtilityScriptTheme:GetHighlightedTextColor()
		end
	else
		if not self.Paths.DataModelRig:getPartInclude(self.DataItem.Name) then
			self.jointWidget.InfoAndTrack.JointInfo.NameAndSwizzle.JointName.JointName.TextColor3 = self.Paths.UtilityScriptTheme:GetDisabledTextColor()
		else
			self.jointWidget.InfoAndTrack.JointInfo.NameAndSwizzle.JointName.JointName.TextColor3 = self.Paths.UtilityScriptTheme:GetTextColor()
		end
	end
end

local function initNameColor(self)
	setNameColor(self)
	self.Connections:add(self.Paths.DataModelSession.SelectedChangeEvent:connect(function() setNameColor(self); openHierarchy(self) end))
	if FastFlags:isOptimizationsEnabledOn() then
		self.Connections:add(self.Paths.DataModelSession.DataItemSelectedEvent:connect(function() setNameColor(self); openHierarchy(self) end))
	end
end

local function setColors(self)	
	local getBasicColor = function()
		return self.ShadeJoint and self.Paths.UtilityScriptTheme:GetShadeColor() or self.Paths.UtilityScriptTheme:GetBackgroundColor()
	end

	if self.Paths.DataModelRig:getPartInclude(self.DataItem.Name) then
		if self.Paths.DataModelSession:isCurrentlySelectedDataItem(self.DataItem) then
			self.jointWidget.InfoAndTrack.JointInfo.BackgroundColor3 = self.Paths.UtilityScriptTheme:GetJointSelectedColor()
		else
			self.jointWidget.InfoAndTrack.JointInfo.BackgroundColor3 = getBasicColor()
		end
		self.jointWidget.InfoAndTrack.Track.BackgroundColor3 = getBasicColor()
	else
		self.jointWidget.InfoAndTrack.Track.BackgroundColor3 = getBasicColor()
		self.jointWidget.InfoAndTrack.JointInfo.BackgroundColor3 = getBasicColor()
	end
end

local function initColors(self)
	setColors(self)
	self.Connections:add(self.Paths.DataModelSession.SelectedChangeEvent:connect(function()	
		setColors(self)
		if FastFlags:isIKModeFlagOn() then
			self:colorConnectionLines()
		end
	end))
	if FastFlags:isOptimizationsEnabledOn() then
		self.Connections:add(self.Paths.DataModelSession.DataItemSelectedEvent:connect(function()
			setColors(self)
			if FastFlags:isIKModeFlagOn() then
				self:colorConnectionLines()
			end
		end))
	end
end

local function doesJointHaveChildren(self)
	return not self.Paths.HelperFunctionsTable:isNilOrEmpty(self.Children)
end

local function displaySwizzles(self)
	local icon = self.jointWidget.InfoAndTrack.JointInfo.NameAndSwizzle.Icon
	local isThisJointSelected = self.Paths.DataModelSession:isCurrentlySelectedDataItem(self.DataItem)
	local isPartIncluded = self.Paths.DataModelRig:getPartInclude(self.DataItem.Name)
	if doesJointHaveChildren(self) then		
		icon.CheckBoxJointSelected.Visible = isThisJointSelected and isPartIncluded
		icon.CheckBoxJointNOTSelected.Visible = not isThisJointSelected or not isPartIncluded
		self.JointCheckbox:changeWidgets((isThisJointSelected and isPartIncluded) and icon.CheckBoxJointSelected or icon.CheckBoxJointNOTSelected)
	else
		icon.Icon.JointSelected.Visible = isThisJointSelected and isPartIncluded
		icon.Icon.JointNOTSelected.Visible = not isThisJointSelected or not isPartIncluded
	end
end

local function initPartIncludeButton(self)			
	if self.Paths.DataModelRig:isPartManeuverable(self.DataItem) then
		self.PartIncludeButton = self.Paths.WidgetCustomImageButton:new(self.Paths, self.jointWidget.InfoAndTrack.JointInfo.JointAction)
		local onPartIncludeToggle = function()		
			self.PartIncludeButton:turnOn(self.Paths.DataModelRig:getPartInclude(self.DataItem.Name))
			setColors(self)
			setNameColor(self)
			displaySwizzles(self)
		end
		onPartIncludeToggle()
		self.Connections:add(self.Paths.DataModelRig.PartIncludeToggleEvent:connect(onPartIncludeToggle))	
			
		self.Connections:add(self.jointWidget.InfoAndTrack.JointInfo.JointAction.MouseButton1Click:connect(function()
			self.Paths.ActionTogglePartInclude:execute(self.Paths, self.DataItem.Name)
		end))
	else
		self.jointWidget.InfoAndTrack.JointInfo.JointAction.Visible = false
	end												
end

local initPartPinButton = nil
local getIndexOfLowestChildInChain = nil
if FastFlags:isIKModeFlagOn() then
	initPartPinButton = function(self)
		if self.Paths.DataModelRig:isPartManeuverable(self.DataItem) then
			self.PartPinButton = self.Paths.WidgetCustomImageButton:new(self.Paths, self.jointWidget.InfoAndTrack.JointInfo.PinAction)
			local onPartPinToggle = function()
				self.PartPinButton:turnOn(not self.Paths.DataModelRig:getPartPinned(self.DataItem.Name))
			end
			onPartPinToggle()
			self.Connections:add(self.Paths.DataModelRig.PartPinnedToggleEvent:connect(function()
				onPartPinToggle()
				self:colorConnectionLines()
			end))
			self.Connections:add(self.jointWidget.InfoAndTrack.JointInfo.PinAction.MouseButton1Click:connect(function()
				self.Paths.ActionTogglePartPinned:execute(self.Paths, self.DataItem.Name)
				self:colorConnectionLines()
				self.Paths.GUIScriptNotificationTip:show("A pinned joint will not move unless being selected", true)
			end))

			self.Connections:add(self.Paths.DataModelIKManipulator.IsIKModeActiveEvent:connect(function(enabled)
				self.jointWidget.InfoAndTrack.JointInfo.PinAction.Visible = enabled and self.Paths.DataModelIKManipulator:isFullBodyMode()
			end))

			self.Connections:add(self.Paths.DataModelIKManipulator.IKModeChangedEvent:connect(function(ikMode)
				self.jointWidget.InfoAndTrack.JointInfo.PinAction.Visible = self.Paths.DataModelIKManipulator:isFullBodyMode()
			end))

			self.Paths.GUIScriptToolTip:add(self.jointWidget.InfoAndTrack.JointInfo.PinAction, "Pin a joint to let it stay relatively still when other body parts move")
		end
	end

	getIndexOfLowestChildInChain = function(self)
		if doesJointHaveChildren(self) then
			local max = self.Children[1].jointWidget.InfoAndTrack.JointInfo.AbsolutePosition.Y
			local index = 1
			local foundChild = false
			for i, child in ipairs(self.Children) do
				if self.Paths.DataModelIKManipulator:isPartInIKChain(child.DataItem) then
					foundChild = true
					if child.jointWidget.InfoAndTrack.JointInfo.AbsolutePosition.Y > max then
						max = child.jointWidget.InfoAndTrack.JointInfo.AbsolutePosition.Y
						index = i
					end
				end
			end
			if not foundChild then return nil else return index end
		end
	end
end

function Joint:isOpen()
	return self.JointSwizzle and self.JointSwizzle:isOpen()
end

local function positionVerticalConnectionLine(self)
	self.jointWidget.Nested.VerticalLine.Visible = doesJointHaveChildren(self) 
	if doesJointHaveChildren(self) then		
		local parentIconCenterPos = self.Paths.HelperFunctionsWidget:getAbsoluteCenter(self.jointWidget.InfoAndTrack.JointInfo.NameAndSwizzle.Icon)
		local parentIconBottom = self.Paths.HelperFunctionsWidget:getAbsoluteBottom(self.jointWidget.InfoAndTrack.JointInfo.NameAndSwizzle.Icon)
		local lastChildCenterPos = self.Paths.HelperFunctionsWidget:getAbsoluteCenter(self.Children[#self.Children].jointWidget.InfoAndTrack.JointInfo.NameAndSwizzle.Icon)		
		self.jointWidget.Nested.VerticalLine.Size = UDim2.new(0, 1, 0, lastChildCenterPos.Y-parentIconBottom)
		if FastFlags:isIKModeFlagOn() then
			local childIndex = getIndexOfLowestChildInChain(self)
			if childIndex then
				local childCenterPos = self.Paths.HelperFunctionsWidget:getAbsoluteCenter(self.Children[childIndex].jointWidget.InfoAndTrack.JointInfo.NameAndSwizzle.Icon)
				self.jointWidget.Nested.IKVerticalLine.Size = UDim2.new(0, 1, 0, childCenterPos.Y-parentIconBottom)
			else
				self.jointWidget.Nested.IKVerticalLine.Size = UDim2.new(0, 1, 0, 0)
			end
		end
		local localPos = self.Paths.HelperFunctionsWidget:toLocalSpaceOffset(self.jointWidget.Nested, Vector2.new(parentIconCenterPos.X, parentIconBottom))
		self.jointWidget.Nested.VerticalLine.Position = UDim2.new(0, localPos.X, 0, localPos.Y)
		if FastFlags:isIKModeFlagOn() then
			self.jointWidget.Nested.IKVerticalLine.Position = UDim2.new(0, localPos.X, 0, localPos.Y)
		end
	end
end

local function hasParent(self)
	return nil ~= self.ParentJointScript
end

if FastFlags:isIKModeFlagOn() then
	function Joint:colorConnectionLines()
		local inIK = self.Paths.DataModelIKManipulator:isPartInIKChain(self.DataItem)
		local checkPinned = not self.Paths.DataModelRig:getPartPinned(self.DataItem.Name)
		local checkBodyPartMode = self.Paths.DataModelRig:isATorso(self.DataItem)
		local r15part = true
		if FastFlags:isEnableRigSwitchingOn() then
			r15part = self.Paths.UtilityScriptHumanIK:isR15BodyPart(self.DataItem.Item)
		end
		local changeColorBodyPartMode = self.Paths.DataModelIKManipulator.IsIKModeActive and (not checkBodyPartMode and r15part) or inIK
		local changeColorFullBodyMode = self.Paths.DataModelIKManipulator.IsIKModeActive and (checkPinned and r15part) or inIK
		local changeColor = changeColorBodyPartMode
		if self.Paths.DataModelIKManipulator:isFullBodyMode() then
			changeColor = changeColorFullBodyMode
		end
		local changeSize = inIK and not self.DataItem.Item.Anchored
		if doesJointHaveChildren(self) then
			positionVerticalConnectionLine(self)
			self.jointWidget.Nested.VerticalLine.BackgroundColor3 = changeColor and self.Paths.UtilityScriptColors.PurpleLine or self.Paths.UtilityScriptTheme:GetHierarchyLineColor()
			self.jointWidget.Nested.VerticalLine.BorderColor3 = changeColor and self.Paths.UtilityScriptColors.PurpleLine or self.Paths.UtilityScriptTheme:GetHierarchyLineColor()
			self.jointWidget.Nested.IKVerticalLine.Visible = changeSize
		end

		if hasParent(self) then
			self.jointWidget.InfoAndTrack.JointInfo.HorizontalLine.BackgroundColor3 = changeColor and self.Paths.UtilityScriptColors.PurpleLine or self.Paths.UtilityScriptTheme:GetHierarchyLineColor()
			self.jointWidget.InfoAndTrack.JointInfo.HorizontalLine.BorderColor3 = changeColor and self.Paths.UtilityScriptColors.PurpleLine or self.Paths.UtilityScriptTheme:GetHierarchyLineColor()
			self.jointWidget.InfoAndTrack.JointInfo.HorizontalLine.BorderSizePixel = changeSize and 1 or 0
		end
	end
end

local function positionHorizontalConnectionLine(self)
	self.jointWidget.InfoAndTrack.JointInfo.HorizontalLine.Visible = hasParent(self)
	if hasParent(self) then
		-- first get positioning of the child's icon
		local visibleIconWidget = doesJointHaveChildren(self) and self.jointWidget.InfoAndTrack.JointInfo.NameAndSwizzle.Icon or self.jointWidget.InfoAndTrack.JointInfo.NameAndSwizzle.Icon.Icon
		local childIconLeftSide = visibleIconWidget.AbsolutePosition.X
		-- always get the center of the parent container, as the icon seems to round up to the next line down, which leaves a slight gap
		local childIconCenter = self.Paths.HelperFunctionsWidget:getAbsoluteCenter(self.jointWidget.InfoAndTrack.JointInfo.NameAndSwizzle.Icon)
	
		-- get positioning of the parent's icon		
		local parentIconCenterPos = self.Paths.HelperFunctionsWidget:getAbsoluteCenter(self.ParentJointScript.jointWidget.InfoAndTrack.JointInfo.NameAndSwizzle.Icon)
		self.jointWidget.InfoAndTrack.JointInfo.HorizontalLine.Size = UDim2.new(0, childIconLeftSide-parentIconCenterPos.X, 0, 1)
		
		local localPos = self.Paths.HelperFunctionsWidget:toLocalSpaceOffset(self.jointWidget.InfoAndTrack.JointInfo, Vector2.new(parentIconCenterPos.X, childIconCenter.Y))	
		self.jointWidget.InfoAndTrack.JointInfo.HorizontalLine.Position = UDim2.new(0, localPos.X, 0, localPos.Y)
	end
end

function Joint:positionConnectionLines()
	positionVerticalConnectionLine(self)
	positionHorizontalConnectionLine(self)	
end

function Joint:createSwizzles()
	self.jointWidget.InfoAndTrack.JointInfo.NameAndSwizzle.Icon.Icon.Visible = not doesJointHaveChildren(self)
	self.jointWidget.InfoAndTrack.JointInfo.NameAndSwizzle.Icon.CheckBoxJointSelected.Visible = doesJointHaveChildren(self)
	self.jointWidget.InfoAndTrack.JointInfo.NameAndSwizzle.Icon.CheckBoxJointNOTSelected.Visible = doesJointHaveChildren(self)
	
	if doesJointHaveChildren(self) then
		self.JointCheckbox = self.Paths.WidgetCheckbox:new(self.Paths, self.jointWidget.InfoAndTrack.JointInfo.NameAndSwizzle.Icon.CheckBoxJointNOTSelected, true)
		self.JointSwizzle = self.Paths.WidgetSwizzle:new(self.JointCheckbox, self.jointWidget.Nested, self.Paths)
		self.Connections:add(self.JointSwizzle.swizzleOpenEvent:connect(function() onHeightChange(self) end))
		self.Connections:add(self.JointSwizzle.swizzleClosedEvent:connect(function() onHeightChange(self) end))
	else
		self.jointWidget.Nested.Visible = false
	end
	displaySwizzles(self)
	self.Connections:add(self.Paths.DataModelSession.SelectedChangeEvent:connect(function()	displaySwizzles(self) end))
	if FastFlags:isOptimizationsEnabledOn() then
		self.Connections:add(self.Paths.DataModelSession.DataItemSelectedEvent:connect(function()	displaySwizzles(self) end))
	end
end

function Joint:new(Paths, jointWidget, dataItem)
	local self = setmetatable({}, Joint)
	self.Paths = Paths
	self.jointWidget = jointWidget
	self.Children = {}
	self.Keyframes = {}
	self.Connections = Paths.UtilityScriptConnections:new(Paths)
	self.ShadeJoint = false
	self.DataItem = dataItem
	jointWidget.InfoAndTrack.JointInfo.NameAndSwizzle.JointName.JointName.Text = dataItem.Name
	
	self.Paths.UtilityScriptDisplayArea:addDisplay(self.jointWidget.InfoAndTrack.Track.DisplayArea.KeyframesDisplayArea)	
	initPartIncludeButton(self)
	if FastFlags:isIKModeFlagOn() then
		initPartPinButton(self)
	end
	initColors(self)
	initNameColor(self)
	self.heightChangeEvent = Paths.UtilityScriptEvent:new()
	
	connectClicks(self)

	if FastFlags:isIKModeFlagOn() then
		self.Connections:add(self.Paths.DataModelIKManipulator.IsIKModeActiveEvent:connect(function(enabled) self:colorConnectionLines() end))
		self.Connections:add(self.Paths.DataModelIKManipulator.IKModeChangedEvent:connect(function(enabled) self:colorConnectionLines() end))
		self.Connections:add(self.Paths.DataModelIKManipulator.IKManipulationEvent:connect(function(enabled)self:colorConnectionLines() end))
	end

	return self
end

function Joint:terminate()
	self.Connections:terminate()
	self.Connections = nil	
	
	self.Children = {}
	
	self:clearKeyframes()
	self.Paths.UtilityScriptDisplayArea:removeDisplay(self.jointWidget.InfoAndTrack.Track.DisplayArea.KeyframesDisplayArea)
	self.heightChangedEvent = nil
	
	-- self.PartInclude would be nil if Rig:isPartManeuverable() returned false
	if nil ~= self.PartIncludeButton then
		self.PartIncludeButton:terminate()
		self.PartIncludeButton = nil	
	end
	
	if nil ~= self.JointSwizzle then
		self.JointSwizzle:terminate()
		self.JointSwizzle = nil
		self.JointCheckbox:terminate()
		self.JointCheckbox = nil	
	end
end

function Joint:addChild(childScript, indentLevel)
	childScript.ParentJointScript = self
		
	self.Children[#self.Children + 1] = childScript
	childScript.jointWidget.Parent = self.jointWidget.Nested.Descendants
	childScript.jointWidget.LayoutOrder = #self.Children
	self.Connections:add(childScript.heightChangeEvent:connect(function() onHeightChange(self) end))
	
	childScript:indent(indentLevel)
end

function Joint:indent(indentLevel)
	local nameAndSwizzle = self.jointWidget.InfoAndTrack.JointInfo.NameAndSwizzle
	-- indent the joint name
	local indent = indentLevel*Joint.IndentSize
	nameAndSwizzle.Indent.Size = UDim2.new(nameAndSwizzle.Indent.Size.X.Scale, indent, nameAndSwizzle.Indent.Size.Y.Scale, nameAndSwizzle.Indent.Size.Y.Offset)	
end

function Joint:doShade(shadeJoint)
	self.ShadeJoint = shadeJoint
	setColors(self)
end

function Joint:getHeight()
	return self.height and self.height or calculateHeight(self)
end

return Joint
