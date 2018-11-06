-- singleton
local FastFlags = require(script.Parent.Parent.FastFlags)

local PositionOrientationPanel = {}

PositionOrientationPanel.Paths = nil
PositionOrientationPanel.TargetWidget = nil
PositionOrientationPanel.PopUpDownButton = nil

local function toggleUpDown(self)
	if self.IsPanelUp then
		self.TargetWidget.MovablePanel.Position = UDim2.new(0, 0, 0, 0)		
	else
		local upYOffset = self.TargetWidget.MovablePanel.Size.Y.Offset-self.TargetWidget.MovablePanel.PopUpDownButton.Size.Y.Offset
		self.TargetWidget.MovablePanel.Position = UDim2.new(0, 0, 0, -upYOffset)
	end
	self.IsPanelUp = not self.IsPanelUp
end

local function setInputRowColors(row, elementLabelColor, textColor, inputBorderColor)
	row.X.TextColor3 = elementLabelColor
	row.Y.TextColor3 = elementLabelColor
	row.Z.TextColor3 = elementLabelColor		
	row.TextLabel.TextColor3 = elementLabelColor
	
	row.XInput.TextColor3 = textColor
	row.YInput.TextColor3 = textColor
	row.ZInput.TextColor3 = textColor
	
	row.XInput.BorderColor3 = inputBorderColor
	row.YInput.BorderColor3 = inputBorderColor
	row.ZInput.BorderColor3 = inputBorderColor
end

local function setInputRowBorderSizes(row, size)
	row.XInput.BorderSizePixel = size
	row.YInput.BorderSizePixel = size
	row.ZInput.BorderSizePixel = size
end

local function getAnyManeuverablePartDataItem(self)
	for _, dataItem in pairs(self.Paths.DataModelSession:getSelectedDataItems()) do
		if self.Paths.DataModelRig:isPartManeuverable(dataItem) then
			return dataItem
		end
	end
end

local function setSelection(self)
	local movablePanel = self.TargetWidget.MovablePanel
	local dataItem = getAnyManeuverablePartDataItem(self)
	local isJoint3DSelected = dataItem ~= nil
	if isJoint3DSelected then
		local multipleJointsSelected = self.Paths.DataModelSession:areMultipleDataItemsSelected()
		if multipleJointsSelected then
			movablePanel.JointName.TextLabel.Text = "Joint: Multiple"
		else
			movablePanel.JointName.TextLabel.Text = "Joint: " .. dataItem.Name
		end

		movablePanel.JointName.TextLabel.TextColor3 = self.Paths.UtilityScriptTheme:GetTextColor()
		
		if self.Paths.DataModelPartManipulator:areHandlesRotate() then
			setInputRowColors(movablePanel.PositionInput, self.Paths.UtilityScriptTheme:GetTextColor(), self.Paths.UtilityScriptTheme:GetTextColor(), self.Paths.UtilityScriptTheme:GetPopupBorderColor())
			setInputRowColors(movablePanel.RotationInput, self.Paths.UtilityScriptTheme:GetTextColor(), self.Paths.UtilityScriptTheme:GetTextColor(), self.Paths.UtilityScriptTheme:GetHighlightColor())							
			setInputRowBorderSizes(movablePanel.PositionInput, 1)
			setInputRowBorderSizes(movablePanel.RotationInput, 2)
		else
			setInputRowColors(movablePanel.PositionInput, self.Paths.UtilityScriptTheme:GetTextColor(), self.Paths.UtilityScriptTheme:GetTextColor(), self.Paths.UtilityScriptTheme:GetHighlightColor())
			setInputRowColors(movablePanel.RotationInput, self.Paths.UtilityScriptTheme:GetTextColor(), self.Paths.UtilityScriptTheme:GetTextColor(), self.Paths.UtilityScriptTheme:GetPopupBorderColor())							
			setInputRowBorderSizes(movablePanel.PositionInput, 2)
			setInputRowBorderSizes(movablePanel.RotationInput, 1)			
		end			
	else		
		movablePanel.JointName.TextLabel.TextColor3 = self.Paths.UtilityScriptTheme:GetDisabledTextColor()
		movablePanel.JointName.TextLabel.Text = "Joint: <No joint is selected>"
		
		local grey = self.Paths.UtilityScriptTheme:GetDisabledTextColor()
		local border = self.Paths.UtilityScriptTheme:GetPopupBorderColor()
		setInputRowColors(movablePanel.PositionInput, grey, grey, border)
		setInputRowColors(movablePanel.RotationInput, grey, grey, border)

		setInputRowBorderSizes(movablePanel.PositionInput, 1)
		setInputRowBorderSizes(movablePanel.RotationInput, 1)
	end
	-- this blocks selection of the pos/ori input boxes if no joint is selected (this is only required as inputBoxes 'selectable' property does not seem to work
	movablePanel.PaddingAndClickEater.ClickEater.Visible = not isJoint3DSelected 
end

local function initSelection(self)
	setSelection(self)
	self.Connections:add(self.Paths.DataModelPartManipulator.ManipulatorChangeEvent:connect(function() setSelection(self) end))
	self.Connections:add(self.Paths.DataModelSession.SelectedChangeEvent:connect(function() setSelection(self) end))
end

local function setInputRowText(self, row, x, y, z)
	if not row.XInput:IsFocused() then
		row.XInput.Text = x
	end
	
	if not row.YInput:IsFocused() then
		row.YInput.Text = y
	end
		
	if not row.ZInput:IsFocused() then
		row.ZInput.Text = z
	end
end

local function setPosOri(self, isInitialize)
	local dataItem = getAnyManeuverablePartDataItem(self)
	local isJoint3DSelected = dataItem ~= nil
	local multipleJointsSelected = self.Paths.DataModelSession:areMultipleDataItemsSelected()
	if not multipleJointsSelected then
		if isJoint3DSelected then
			local posOri = self.Paths.DataModelPartManipulator:calculateCFrameForNumericalInput(dataItem)
			setInputRowText(self, self.TargetWidget.MovablePanel.PositionInput, posOri.x, posOri.y, posOri.z)
			local xRotRadians, yRotRadians, zRotRadians = posOri:toEulerAnglesXYZ()	
			setInputRowText(self, self.TargetWidget.MovablePanel.RotationInput, math.deg(xRotRadians), math.deg(yRotRadians), math.deg(zRotRadians))				
		else
			setInputRowText(self, self.TargetWidget.MovablePanel.PositionInput, "", "", "")
			setInputRowText(self, self.TargetWidget.MovablePanel.RotationInput, "", "", "")
		end
	else
		setInputRowText(self, self.TargetWidget.MovablePanel.PositionInput, "-", "-", "-")
		setInputRowText(self, self.TargetWidget.MovablePanel.RotationInput, "-", "-", "-")
	end
end

local function selectPositionHandles(self)
	self.Paths.DataModelPartManipulator:setRotationHandles(false)
end

local function selectRotationHandles(self)
	self.Paths.DataModelPartManipulator:setRotationHandles(true)
end

local function initPositionAndRotation(self)	
	-- responding to position changes typed in
	local positionElementFromId = function(posOri, normalId)
		if posOri then
			if Enum.NormalId.Right == normalId then
				return posOri.x
			elseif Enum.NormalId.Top == normalId then
				return posOri.y
			elseif Enum.NormalId.Front == normalId then
				return posOri.z
			end
		end
	end

	local onPositionInputBoxFocusLost = function(enterPressed, newElementPos, faceId)
	    if enterPressed then 
	    	if FastFlags:isIKModeFlagOn() and self.Paths.DataModelIKManipulator.IsIKModeActive then
				self.Paths.DataModelSession:selectOnlyOneDataItem()
	    	end
    		for _, dataItem in pairs(self.Paths.DataModelSession:getSelectedDataItems()) do
    			local currentElementPos = positionElementFromId(self.Paths.DataModelPartManipulator:calculateCFrameForNumericalInput(dataItem), faceId)
	    		if currentElementPos and newElementPos then
					self.Paths.DataModelPartManipulator:movePart(faceId, newElementPos-currentElementPos, dataItem)
				end
			end
			self.Paths.DataModelPartManipulator:updateManipulationSelection()
		else
			setPosOri(self)
	    end
	end
	
	local posInputRow = self.TargetWidget.MovablePanel.PositionInput
	local positionInputToNormalId = {[posInputRow.XInput]=Enum.NormalId.Right, [posInputRow.YInput]=Enum.NormalId.Top, [posInputRow.ZInput]=Enum.NormalId.Front}	
	for posInput, normalId in pairs(positionInputToNormalId) do
		self.Connections:add(posInput.FocusLost:connect(function(enterPressed)
			onPositionInputBoxFocusLost(enterPressed, tonumber(posInput.Text), normalId)
		end))
		
		self.Connections:add(posInput.Focused:connect(function()
			selectPositionHandles(self)
		end))					
	end
	
	-- responding to orientation changes typed in		
	local rotationElementFromId = function(posOri, axis)
		if posOri then
			local xRotRadians, yRotRadians, zRotRadians = posOri:toEulerAnglesXYZ()	
			if Enum.Axis.X == axis then
				return xRotRadians
			elseif Enum.Axis.Y == axis then
				return yRotRadians
			elseif Enum.Axis.Z == axis then
				return zRotRadians
			end
		end
	end

	local onRotationInputBoxFocusLost = function(enterPressed, newElementRotDegrees, axis)
	    if enterPressed then
	    	if FastFlags:isIKModeFlagOn() and self.Paths.DataModelIKManipulator.IsIKModeActive then
				self.Paths.DataModelSession:selectOnlyOneDataItem()
	    	end
	    	for _, dataItem in pairs(self.Paths.DataModelSession:getSelectedDataItems()) do
	    		local currentElementRotRadians = rotationElementFromId(self.Paths.DataModelPartManipulator:calculateCFrameForNumericalInput(dataItem), axis)
		     	if currentElementRotRadians and newElementRotDegrees then
					local newElementRotRadians = math.rad(newElementRotDegrees)
					self.Paths.DataModelPartManipulator:rotatePart(axis, newElementRotRadians-currentElementRotRadians, dataItem)
				end	
	    	end
			self.Paths.DataModelPartManipulator:updateManipulationSelection()
		else
			setPosOri(self)
	    end
	end
	
	local rotInputRow = self.TargetWidget.MovablePanel.RotationInput
	local rotationInputToNormalId = {[rotInputRow.XInput]=Enum.Axis.X, [rotInputRow.YInput]=Enum.Axis.Y, [rotInputRow.ZInput]=Enum.Axis.Z}	
	for rotInput, axis in pairs(rotationInputToNormalId) do
		self.Connections:add(rotInput.FocusLost:connect(function(enterPressed)
			onRotationInputBoxFocusLost(enterPressed, tonumber(rotInput.Text), axis)
		end))
		
		self.Connections:add(rotInput.Focused:connect(function()
			selectRotationHandles(self)
		end))										
	end

	setPosOri(self, true)
	self.Connections:add(self.Paths.DataModelSession.ScrubberTimeChangeEvent:connect(function() setPosOri(self) end))
	self.Connections:add(self.Paths.DataModelPartManipulator.ManipulatorChangeEvent:connect(function() setPosOri(self) end))
	self.Connections:add(self.Paths.DataModelPartManipulator.ManipulationEndEvent:connect(function() setPosOri(self) end))	
	self.Connections:add(self.Paths.DataModelKeyframes.ChangedEvent:connect(function() setPosOri(self) end))
	self.Connections:add(self.Paths.DataModelKeyframes.PoseTransformChangedEvent:connect(function() setPosOri(self) end))
	self.Connections:add(self.Paths.DataModelSession.SelectedChangeEvent:connect(function() setPosOri(self) end))
end

function PositionOrientationPanel:init(Paths)
	self.Paths = Paths
	self.TargetWidget = Paths.GUIPositionOrientationPanel
	self.IsPanelUp = false
			
	local arrowsContainer = self.TargetWidget.MovablePanel.PopUpDownButton.TextAndArrow.Arrow	
	self.PressedUpArrow = arrowsContainer.UpArrow.MouseButtonPressed
	self.NotPressedUpArrow = arrowsContainer.UpArrow.MouseButtonNOTPressed
	self.PressedDownArrow = arrowsContainer.DownArrow.MouseButtonPressed
	self.NotPressedDownArrow = arrowsContainer.DownArrow.MouseButtonNOTPressed
	
	self.PopUpButton = Paths.WidgetCustomImageButton:new(Paths, self.TargetWidget.MovablePanel.PopUpDownButton)
	
	self.Connections = Paths.UtilityScriptConnections:new(Paths)
	self.Connections:add(self.TargetWidget.MovablePanel.PopUpDownButton.InputBegan:connect(function(input) 	
		if input.UserInputType == Enum.UserInputType.MouseButton1 then								
			self.PressedUpArrow.Visible = not self.IsPanelUp
			self.NotPressedUpArrow.Visible = false 
			self.PressedDownArrow.Visible = self.IsPanelUp 
			self.NotPressedDownArrow.Visible = false 		
		end 				
	end))
		
	self.Connections:add(self.TargetWidget.MovablePanel.PopUpDownButton.InputEnded:connect(function(input) 
		if input.UserInputType == Enum.UserInputType.MouseButton1 then	
			toggleUpDown(self)
					
			self.PressedUpArrow.Visible = false
			self.NotPressedUpArrow.Visible = not self.IsPanelUp
			self.PressedDownArrow.Visible = false
			self.NotPressedDownArrow.Visible = self.IsPanelUp			
		end
	end))
	
	initSelection(self)
	initPositionAndRotation(self)
end

function PositionOrientationPanel:terminate()
	self.Connections:terminate()
	self.Connections = nil
	
	self.PopUpButton = nil
	self.TargetWidget = nil	
	self.Paths = nil
end

return PositionOrientationPanel