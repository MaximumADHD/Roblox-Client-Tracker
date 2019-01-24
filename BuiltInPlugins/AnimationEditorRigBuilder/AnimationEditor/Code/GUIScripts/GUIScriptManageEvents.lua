local FastFlags = require(script.Parent.Parent.FastFlags)

local ManageEvents = {}

local function createListItem(self, name)
	local eventItem = self.Paths.GUIScriptManageEventOption:new(self.Paths, name)
	return eventItem.TargetWidget
end

local function isUserSearching(self)
	return self.SearchBarFrame.TextBox.Text ~= ""
end

local function closeAndSave(self)
	if FastFlags:useQWidgetsForPopupsOn() then
		self.QtWindow:turnOn(false)
	else
		self.SubWindow:turnOn(false)
	end
	self.Paths.UtilityScriptUndoRedo:resetContext()
	self.Paths.UtilityScriptUndoRedo:setToDefaultContext()
	self.Paths.UtilityScriptCopyPaste:setCopyPasteEnabled(true)
	self.WindowClosedEvent:fire()
end

local function closeAndRevert(self)
	if FastFlags:useQWidgetsForPopupsOn() then
		self.QtWindow:turnOn(false)
	else
		self.SubWindow:turnOn(false)
	end
	self.Paths.UtilityScriptUndoRedo:undoAllInContext()	
	self.Paths.UtilityScriptUndoRedo:setToDefaultContext()
	self.Paths.UtilityScriptCopyPaste:setCopyPasteEnabled(true)
	self.WindowClosedEvent:fire()
end

local function onSearchClicked(self)
	self:populateEventsList()
end

local function onSearchCleared(self)
	self.SearchBarFrame.TextBox.Text = ""
	self:populateEventsList()
end

local function onUserTyped(self)
	if isUserSearching(self) then
		self.SearchBarFrame.ClearButton.Visible = true
	else
		self.SearchBarFrame.ClearButton.Visible = false
	end
end

local function filterNames(self, filter, names)
	local filteredNames = {}
	for _, name in pairs(names) do
		if string.find(name, filter) ~= nil then
			table.insert(filteredNames, name)
		end
	end
	return filteredNames
end

function ManageEvents:init(Paths)
	self.Paths = Paths

	self.TargetWidget = Paths.GUIPopUpManageEvents:clone()
	self.ScrollingFrame = self.TargetWidget.ContainerFrame.ScrollingFrame
	self.SearchBarFrame = self.TargetWidget.ContainerFrame.SearchBarFrame
	self.SaveCancel = self.TargetWidget.ContainerFrame.SaveCancel

	if not FastFlags:useQWidgetsForPopupsOn() then
		self.Paths.UtilityScriptTheme:setColorsToTheme(self.TargetWidget)
	end

	self.WindowClosedEvent = self.Paths.UtilityScriptEvent:new()

	if FastFlags:useQWidgetsForPopupsOn() then
		self.QtWindow = Paths.GUIScriptQtWindow:new(Paths, "Manage Animation Events", self.TargetWidget, function() closeAndRevert(self) end, Vector2.new(330, 171), true)
		self.QtWindow:turnOn(false)
	else
		self.SubWindow = Paths.GUIScriptSubWindow:new(Paths, self.TargetWidget, Paths.GUIPopUps)
		self.SubWindow:changeTitle("Manage Animation Events")
		self.SubWindow:turnOn(false)
	end

	if FastFlags:useQWidgetsForPopupsOn() then
		self.ScrollingList = Paths.WidgetExpandableScrollingList:new(Paths, self.ScrollingFrame, self.TargetWidget, nil, self.QtWindow)
	else
		self.ScrollingList = Paths.WidgetExpandableScrollingList:new(Paths, self.ScrollingFrame, self.TargetWidget, self.SubWindow)
	end

	self.CancelButton = self.Paths.WidgetCustomImageButton:new(self.Paths, self.SaveCancel.Cancel)
	self.SaveButton = self.Paths.WidgetCustomImageButton:new(self.Paths, self.SaveCancel.Save)
	self.SearchButton = self.Paths.WidgetCustomImageButton:new(self.Paths, self.SearchBarFrame.SearchButton)

	self.Connections = self.Paths.UtilityScriptConnections:new(Paths)
	self.Connections:add(self.SaveCancel.Save.MouseButton1Click:connect(function() closeAndSave(self) end))
	self.Connections:add(self.SaveCancel.Cancel.MouseButton1Click:connect(function() closeAndRevert(self) end))
	self.Connections:add(self.SearchBarFrame.SearchButton.MouseButton1Click:connect(function() onSearchClicked(self) end))
	self.Connections:add(self.SearchBarFrame.ClearButton.MouseButton1Click:connect(function() onSearchCleared(self) end))
	self.Connections:add(self.SearchBarFrame.TextBox:GetPropertyChangedSignal("Text"):connect(function() onUserTyped(self) end))
	self.Connections:add(self.Paths.DataModelKeyframes.ChangedEvent:connect(function() self:populateEventsList() end))
	if not FastFlags:useQWidgetsForPopupsOn() then
		self.Connections:add(self.SubWindow.OnCloseEvent:connect(function() closeAndSave(self) end))
	end
	self.Connections:add(self.SearchBarFrame.TextBox.Focused:connect(function()
		self.SearchBarFrame.Border.ImageColor3 = self.Paths.UtilityScriptTheme:GetHighlightColor()
	end))
	self.Connections:add(self.SearchBarFrame.TextBox.FocusLost:connect(function()
		self.SearchBarFrame.Border.ImageColor3 = self.Paths.UtilityScriptTheme:GetInputBorderColor()
	end))
end

function ManageEvents:show()
	if FastFlags:useQWidgetsForPopupsOn() then
		self.QtWindow:turnOn(true)
	else
		self.SubWindow:turnOn(true)
	end
	self.Paths.UtilityScriptUndoRedo:changeUndoRedoContext(self.Paths.UtilityScriptUndoRedo.AnimationEventContext)
	self.Paths.UtilityScriptCopyPaste:setCopyPasteEnabled(false)
	self:populateEventsList()
end

function ManageEvents:terminate()
	self.Connections:terminate()

	self.ScrollingList:terminate()
	self.ScrollingList = nil

	if FastFlags:useQWidgetsForPopupsOn() then
		self.QtWindow:terminate()
		self.QtWindow = nil
	else
		self.SubWindow:terminate()
		self.SubWindow = nil
	end

	self.SaveButton:terminate()	
	self.CancelButton:terminate()
	self.SearchButton:terminate()
	
	self.ScrollingFrame = nil
	self.SearchBarFrame = nil
	self.SaveCancel = nil

	self.TargetWidget:Destroy()
	self.TargetWidget = nil

	self.Paths = nil
end

function ManageEvents:populateEventsList(filter)
	local names = self.Paths.DataModelAnimationEvents:getAllAnimationEventNamesSorted()
	if isUserSearching(self) then
		names = filterNames(self, self.SearchBarFrame.TextBox.Text, names)
	end

	self.ScrollingList:emptyItemList()

	local items = {}
	for _, name in pairs(names) do
		table.insert(items, createListItem(self, name))
	end

	self.ScrollingList:addItemsToList(items)
end

return ManageEvents