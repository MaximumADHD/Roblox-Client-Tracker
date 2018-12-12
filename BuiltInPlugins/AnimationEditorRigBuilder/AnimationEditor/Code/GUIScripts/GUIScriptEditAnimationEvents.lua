local EditEvents = {}

local function createListItem(self, keyframeMarker, open)
	local eventItem = self.Paths.GUIScriptAnimationEventSwizzle:new(self.Paths, keyframeMarker, open)
	table.insert(self.EventItems, eventItem)
	return eventItem.TargetWidget
end

local function destroyListPopup(self)
	if self.ListPopup then
		self.ListPopup:terminate()
		self.ListPopup = nil
	end
end

local function closeAndSave(self)
	self.SubWindow:turnOn(false)
	destroyListPopup(self)
	self.Paths.UtilityScriptUndoRedo:resetContext()
	self.Paths.UtilityScriptUndoRedo:setToDefaultContext()
	self.Paths.UtilityScriptCopyPaste:setCopyPasteEnabled(true)
end

local function closeAndRevert(self)
	destroyListPopup(self)
	self.SubWindow:turnOn(false)
	self.Paths.UtilityScriptUndoRedo:undoAllInContext()	
	self.Paths.UtilityScriptUndoRedo:setToDefaultContext()
	self.Paths.UtilityScriptCopyPaste:setCopyPasteEnabled(true)
end

local function onCreateClicked(self)
	self.Prompt.Visible = true
	self.DarkCover.Visible = true
end

local function onAddClicked(self)
	destroyListPopup(self)

	local selectFunc = function(name)
		self.Paths.DataModelAnimationEvents:createEvent(self.Time, name)
		destroyListPopup(self)
	end

	local newFunc = function()
		onCreateClicked(self)
		destroyListPopup(self)
	end

	self.ListPopup = self.Paths.GUIScriptSelectionList:new(self.Paths, self.Paths.DataModelAnimationEvents:getAllAnimationEventNamesSorted(), selectFunc, newFunc)
end

local function onPromptCancel(self)
	self.Prompt.Visible = false
	self.DarkCover.Visible = false
end

local function onPromptConfirm(self)
	onPromptCancel(self)
	if self.Prompt.Border.ParameterInput.Text ~= "" then
		self.Paths.DataModelAnimationEvents:createEvent(self.Time, self.Prompt.Border.ParameterInput.Text)
	end
end

function EditEvents:init(Paths, keyframe)
	self.Paths = Paths

	self.TargetWidget = Paths.GUIPopUpEditAnimationEvents:clone()
	self.ScrollingFrame = self.TargetWidget.ContainerFrame.ScrollingFrame
	self.AddButton = self.TargetWidget.ContainerFrame.AddEventFrame.TextButton
	self.SaveCancel = self.TargetWidget.ContainerFrame.SaveCancel
	self.DarkCover = self.TargetWidget.DarkCover
	self.Prompt = self.TargetWidget.NamePromptFrame

	self.Paths.UtilityScriptTheme:setColorsToTheme(self.TargetWidget)

	self.SubWindow = Paths.GUIScriptSubWindow:new(Paths, self.TargetWidget, Paths.GUIPopUps)
	self.SubWindow:changeTitle("Edit Animation Events")
	self.SubWindow:turnOn(false)

	self.ScrollingList = Paths.WidgetExpandableScrollingList:new(Paths, self.ScrollingFrame, self.TargetWidget, self.SubWindow)

	self.CancelButton = self.Paths.WidgetCustomImageButton:new(self.Paths, self.SaveCancel.Cancel)
	self.SaveButton = self.Paths.WidgetCustomImageButton:new(self.Paths, self.SaveCancel.Save)

	self.PromptCancelButton = self.Paths.WidgetCustomImageButton:new(self.Paths, self.Prompt.Cancel)
	self.OKButton = self.Paths.WidgetCustomImageButton:new(self.Paths, self.Prompt.Submit)

	self.Connections = self.Paths.UtilityScriptConnections:new(Paths)
	self.Connections:add(self.Prompt.Cancel.MouseButton1Click:connect(function() onPromptCancel(self) end))
	self.Connections:add(self.Prompt.Submit.MouseButton1Click:connect(function() onPromptConfirm(self) end))
	self.Connections:add(self.SaveCancel.Save.MouseButton1Click:connect(function() closeAndSave(self) end))
	self.Connections:add(self.SaveCancel.Cancel.MouseButton1Click:connect(function() closeAndRevert(self) end))
	self.Connections:add(self.SubWindow.OnCloseEvent:connect(function() closeAndSave(self) end))
	self.Connections:add(self.AddButton.MouseButton1Click:connect(function() onAddClicked(self) end))
	self.Connections:add(self.Paths.DataModelKeyframes.ChangedEvent:connect(function() self:populateEventsList() end))
	self.Connections:add(self.Prompt.Border.ParameterInput.Focused:connect(function()
		self.Prompt.Border.ImageColor3 = self.Paths.UtilityScriptTheme:GetHighlightColor()
	end))
	self.Connections:add(self.Prompt.Border.ParameterInput.FocusLost:connect(function()
		self.Prompt.Border.ImageColor3 = self.Paths.UtilityScriptTheme:GetInputBorderColor()
	end))
end

function EditEvents:show(time)
	self.SubWindow:turnOn(true)
	self.Time = time
	self.EventItems = {}
	self.OpenStates = {}
	self.Paths.UtilityScriptUndoRedo:changeUndoRedoContext(self.Paths.UtilityScriptUndoRedo.AnimationEventContext)
	self.Paths.UtilityScriptCopyPaste:setCopyPasteEnabled(false)
	local keyframe = self.Paths.DataModelClip:getKeyframe(self.Time)
	if keyframe and self.Paths.HelperFunctionsTable:isNilOrEmpty(self.Paths.DataModelAnimationEvents:getAllAnimationEventNamesSorted()) then
		self.ScrollingList:emptyItemList()
		onCreateClicked(self)
	else
		self:populateEventsList()
	end
end

function EditEvents:terminate()
	self.EventItems = {}
	self.OpenStates = {}
	self.Connections:terminate()

	self.ScrollingList:terminate()
	self.ScrollingList = nil

	destroyListPopup(self)

	self.SubWindow:terminate()
	self.SubWindow = nil	

	self.OKButton:terminate()	
	self.PromptCancelButton:terminate()

	self.SaveButton:terminate()
	self.CancelButton:terminate()
	
	self.ScrollingFrame = nil
	self.SearchBarFrame = nil
	self.CreateButton = nil
	self.SaveCancel = nil
	self.DarkCover = nil

	self.TargetWidget:Destroy()
	self.TargetWidget = nil

	self.Paths = nil
end

function EditEvents:populateEventsList()
	if self.Time then
		local keyframe = self.Paths.DataModelClip:getKeyframe(self.Time)
		if keyframe then
			local markers = keyframe.Markers

			for _, eventItem in pairs(self.EventItems) do
				self.OpenStates[eventItem:getName()] = eventItem:isOpen()
			end
			self.EventItems = {}

			self.ScrollingList:emptyItemList()

			local items = {}

			for _, marker in self.Paths.HelperFunctionsIteration:spairs(markers, function(t, a, b) return t[a]:getName() < t[b]:getName() end) do
				table.insert(items, createListItem(self, marker, self.OpenStates[marker:getName()]))
			end

			self.ScrollingList:addItemsToList(items)
		end
	end
end

return EditEvents