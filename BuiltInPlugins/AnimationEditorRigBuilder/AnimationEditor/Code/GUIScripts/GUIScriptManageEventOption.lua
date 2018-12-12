local ManageEventOption = {}
ManageEventOption.__index = ManageEventOption

local function updateVisibility(self)
	self.TargetWidget.EventName.Visible = not self.Editing
	self.TargetWidget.EventNameTextBoxFrame.Visible = self.Editing
end

local function updateOptionName(self)
	local previousName = self.TargetWidget.EventName.Text
	self.TargetWidget.EventName.Text = self.EventNameTextBoxFrame.EventNameTextBox.Text
	if previousName == "" then
		self.Paths.DataModelAnimationEvents:addEventName(self.TargetWidget.EventName.Text)
	else
		self.Paths.DataModelAnimationEvents:changeAllEventsOfName(previousName, self.TargetWidget.EventName.Text)
	end
end

local function noNameEntered(self)
	return self.Editing and self.EventNameTextBoxFrame.EventNameTextBox.Text == ""
end

local function onEditClicked(self)
	if noNameEntered(self) then 
		return 
	end

	self.Editing = not self.Editing
	updateVisibility(self)
	if self.Editing then
		self.EventNameTextBoxFrame.EventNameTextBox.Text = self.TargetWidget.EventName.Text
		self.EditButton:setPressed(true)
	else
		self.EditButton:setPressed(false)
		updateOptionName(self)
	end		
end

local function stopEditing(self)
	if noNameEntered(self) then 
		return 
	end
	self.Editing = false
	updateVisibility(self)
	updateOptionName(self)
end

function ManageEventOption:new(Paths, name)
	local self = setmetatable({}, ManageEventsItem)
	self.Paths = Paths
	self.Connections = self.Paths.UtilityScriptConnections:new(Paths)
	self.TargetWidget = self.Paths.GUIClonableManageEventOption:clone()
	self.EventNameTextBoxFrame = self.TargetWidget.EventNameTextBoxFrame
	self.Paths.UtilityScriptTheme:setColorsToTheme(self.TargetWidget)

	self.EditButton = self.Paths.WidgetCustomImageButton:new(self.Paths, self.TargetWidget.EditButton)
	self.DeleteButton = self.Paths.WidgetCustomImageButton:new(self.Paths, self.TargetWidget.DeleteButton)

	self.TargetWidget.EventName.Text = name
	self.Editing = false

	self.Connections:add(self.TargetWidget.EditButton.MouseButton1Click:connect(function() onEditClicked(self) end))
	self.Connections:add(self.TargetWidget.DeleteButton.MouseButton1Click:connect(function() self.Paths.DataModelAnimationEvents:removeAllEventsByName(self.TargetWidget.EventName.Text) end))
	self.Connections:add(self.EventNameTextBoxFrame.EventNameTextBox.Focused:connect(function()
		self.EventNameTextBoxFrame.Border.ImageColor3 = self.Paths.UtilityScriptTheme:GetHighlightColor()
	end))
	self.Connections:add(self.EventNameTextBoxFrame.EventNameTextBox.FocusLost:connect(function()
		self.EventNameTextBoxFrame.Border.ImageColor3 = self.Paths.UtilityScriptTheme:GetInputBorderColor()
		stopEditing(self)
	end))

	updateVisibility(self)

	return self
end

function ManageEventOption:terminate()
	self.Connections:terminate()

	self.EditButton:terminate()
	self.DeleteButton:terminate()

	self.TargetWidget:Destroy()
	self.TargetWidget = nil

	self.Paths = nil
end

return ManageEventOption