local FastFlags = require(script.Parent.Parent.FastFlags)

local AnimationEventSwizzle = {}
AnimationEventSwizzle.__index = AnimationEventSwizzle
AnimationEventSwizzle.Padding = 5

local function updateSwizzle(self)
	local currentSize = self.TargetWidget.Size
	local newHeight = self.EventNameFrame.Size.Y.Offset
	if self.Open then
		newHeight = newHeight + self.EventValueFrame.Size.Y.Offset + AnimationEventSwizzle.Padding
	end
	if not FastFlags:useQWidgetsForPopupsOn() then
		self.TargetWidget.Size = UDim2.new(currentSize.X.Scale, currentSize.X.Offset, currentSize.Y.Scale, newHeight)
	end

	self.EventValueFrame.Visible = self.Open
	if not FastFlags:useQWidgetsForPopupsOn() then
		self.Arrow.Up.Visible = self.Open
		self.Arrow.Down.Visible = not self.Open
	end
end

local function onArrowClicked(self)
	self.Open = not self.Open
	updateSwizzle(self)
end

local function onParameterChanged(self)
	self.Paths.ActionEditClip:execute(self.Paths, self.Paths.ActionEditClip.ActionType.editAnimationEvent)
	self.KeyframeMarker:setValue(self.ParameterInput.Text)
end

local function onDeletePressed(self)
	self.Paths.DataModelAnimationEvents:removeEvent(self.KeyframeMarker:getTime(), self.KeyframeMarker:getName())
end

function AnimationEventSwizzle:new(Paths, keyframeMarker, open)
	local self = setmetatable({}, AnimationEventSwizzle)
	self.Paths = Paths
	self.KeyframeMarker = keyframeMarker
	self.Open = open == nil and true or open

	self.TargetWidget = self.Paths.GUIClonableAnimationEventSwizzle:clone()
	self.EventNameFrame = self.TargetWidget.EventNameFrame
	self.EventValueFrame = self.EventNameFrame.ValueFrame
	self.EventValueFrame.Visible = false
	self.ParameterInput = self.EventValueFrame.ParameterInputFrame.ParameterInput
	if not FastFlags:useQWidgetsForPopupsOn() then
		self.Arrow = self.EventNameFrame.Arrow
	end
	self.DeleteButton = self.EventNameFrame.Delete

	self.Paths.UtilityScriptTheme:setColorsToTheme(self.TargetWidget)

	updateSwizzle(self)

	self.Connections = self.Paths.UtilityScriptConnections:new(Paths)
	if not FastFlags:useQWidgetsForPopupsOn() then
		self.Connections:add(self.Arrow.MouseButton1Click:connect(function() onArrowClicked(self) end))
	end
	self.Connections:add(self.DeleteButton.MouseButton1Click:connect(function() onDeletePressed(self) end))
	self.Connections:add(self.ParameterInput.FocusLost:connect(function() onParameterChanged(self) end))
	self.Connections:add(self.ParameterInput.Focused:connect(function()
		self.EventValueFrame.ParameterInputFrame.Border.ImageColor3 = self.Paths.UtilityScriptTheme:GetHighlightColor()
	end))
	self.Connections:add(self.ParameterInput.FocusLost:connect(function()
		self.EventValueFrame.ParameterInputFrame.Border.ImageColor3 = self.Paths.UtilityScriptTheme:GetInputBorderColor()
	end))

	self.EventNameFrame.EventName.Text = keyframeMarker:getName()
	self.ParameterInput.Text = keyframeMarker:getValue()

	return self
end

function AnimationEventSwizzle:isOpen()
	return self.Open
end

function AnimationEventSwizzle:getName()
	return self.EventNameFrame.EventName.Text
end

function AnimationEventSwizzle:terminate()
	self.Connections:terminate()

	self.EventNameFrame = nil
	self.EventValueFrame = nil
	self.ParameterInput = nil
	if not FastFlags:useQWidgetsForPopupsOn() then
		self.Arrow = nil
	end
	self.DeleteButton = nil

	self.TargetWidget:Destroy()
	self.TargetWidget = nil

	self.KeyframeMarker = nil
	self.Paths = nil
end

return AnimationEventSwizzle