-- singleton

local FastFlags = require(script.Parent.Parent.FastFlags)

local TopDropdownMenuBar = {}

TopDropdownMenuBar.TargetWidget = nil
TopDropdownMenuBar.Paths = nil
TopDropdownMenuBar.CurrentlyVisible = nil
TopDropdownMenuBar.Menus = {}
TopDropdownMenuBar.Connections = {}

function getVisibleMenu(self)
	for _, menu in pairs(self.Menus) do
		if menu.Menu.Visible then
			return menu
		end
	end
	return nil
end

local function onMenuClose(self)
	for buttonFrame, _ in pairs(self.Menus) do			
		buttonFrame.Highlight.Visible = false
		buttonFrame.TextLabel.TextColor3 = self.Paths.UtilityScriptTheme:GetTextColor()
	end							
end

local function addMenu(self, buttonFrame)
	local mainMenu = self.Paths.WidgetMainMenu:new(self.Paths, buttonFrame.MenuAttach, self.Paths.WidgetMainMenu.StyleEnum.DropDown)
	mainMenu.onCloseEvent:connect(function() onMenuClose(self) end)	
	self.Menus[buttonFrame] = mainMenu
	return mainMenu
end

function createDebugMenu(self)
	self.TargetWidget.Debug.Visible = true
	local mainMenu = addMenu(self, self.TargetWidget.Debug)
	mainMenu:setWidth(210)
	mainMenu:addSelectable("Import FBX Animation", function() self.Paths.ActionImportFBXAnimation:execute(self.Paths) end)
end

function createSettingsMenu(self)
	local mainMenu = addMenu(self, self.TargetWidget.Settings)
	mainMenu:setWidth(210)
	
	local undoRedo = self.Paths.UtilityScriptUndoRedo
	local prefs = self.Paths.DataModelPreferences 
	self.InterpolationHandle = mainMenu:addToggle("Interpolation", 
		function() self.Paths.ActionEditPreference:executeToggle(self.Paths, prefs.Type.Interpolation) end,
		nil,
		prefs:getValue(prefs.Type.Interpolation)
	)
	self.SelectInvisibleHandle = mainMenu:addToggle("Select Invisible Parts", 
		function() self.Paths.ActionEditPreference:executeToggle(self.Paths, prefs.Type.TransparentSelect) end,
		nil, 
		prefs:getValue(prefs.Type.TransparentSelect)
	)
	self.ShowToolTipsHandle = mainMenu:addToggle("Show Tooltips", 
		function() self.Paths.ActionEditPreference:executeToggle(self.Paths, prefs.Type.Tooltips) end,
		nil,
		prefs:getValue(prefs.Type.Tooltips)
	)
	self.PoseSnappingHandle = mainMenu:addToggle("Pose Snapping", 
		function() self.Paths.ActionEditPreference:executeToggle(self.Paths, prefs.Type.CursorPoseSnapping) end,
		nil,
		prefs:getValue(prefs.Type.CursorPoseSnapping)
	)		
	
	mainMenu:addDivider()
	self.SnapIncrementHandle = mainMenu:addSelectable("Snap Increment", function() self.Paths.ActionEditSnapIncrement:execute(self.Paths) end, "[" .. tostring(prefs:getValue(prefs.Type.SnapIncrement)) .. "]")
	mainMenu:addDivider()
	mainMenu:addSelectable("Settings Help", function() self.Paths.ActionShowContextMenu:execute(self.Paths, self.Paths.ActionShowContextMenu.Type.SettingsHelp) end)
end

function createEditMenu(self)
	local mainMenu = addMenu(self, self.TargetWidget.Edit)	
	mainMenu:setWidth(210)
	
	self.UndoHandle = mainMenu:addSelectable("Undo " .. self.Paths.UtilityScriptUndoRedo:getNextUndoDescription(), function() self.Paths.UtilityScriptUndoRedo:undo() end, "Ctrl+Z")		
	self.RedoHandle = mainMenu:addSelectable("Redo " .. self.Paths.UtilityScriptUndoRedo:getNextRedoDescription(), function() self.Paths.UtilityScriptUndoRedo:redo() end, "Ctrl+Y")	
	mainMenu:addDivider()
	self.PriorityHandle = mainMenu:addSelectable("Set Priority", function() self.Paths.GUIScriptPriority:show() end, "[" .. self.Paths.DataModelClip:getPriority() .. "]")
	mainMenu:addSelectable("Add Time At Cursor", function() self.Paths.ActionAddTimeAtCursor:execute(self.Paths) end)
	mainMenu:addSelectable("Remove Time At Cursor", function() self.Paths.ActionRemoveTimeAtCursor:execute(self.Paths) end)
	mainMenu:addDivider()
	mainMenu:addSelectable("Edit Help", function() self.Paths.ActionShowContextMenu:execute(self.Paths, self.Paths.ActionShowContextMenu.Type.EditHelp) end)
end

function createFileMenu(self)
	local mainMenu = addMenu(self, self.TargetWidget.File)
	mainMenu:setWidth(106)
	mainMenu:addSelectable("New", function() self.Paths.ActionNew:execute(self.Paths) end)
	mainMenu:addSelectable("Load", function() self.Paths.GUIScriptLoad:show() end)
	mainMenu:addSelectable("Save", function() self.Paths.GUIScriptSave:show() end)
	mainMenu:addDivider()
	mainMenu:addSelectable("Import", function() self.Paths.ActionImport:execute(self.Paths) end)
	mainMenu:addSelectable("Export", function() self.Paths.ActionExport:execute(self.Paths) end)
	mainMenu:addDivider()
	mainMenu:addSelectable("Help", function() self.Paths.ActionShowContextMenu:execute(self.Paths, self.Paths.ActionShowContextMenu.Type.Help) end)
end

local function createMenus(self)	
	createFileMenu(self)
	createEditMenu(self)
	createSettingsMenu(self)

	if FastFlags:isDebugStudioRigImporterFlagOn() then
		createDebugMenu(self)
	end
end

local function monitorMenus(self)
	self.onUndoRedoChange = function()		
		self.Menus[self.TargetWidget.Edit]:setMainText(self.UndoHandle, "Undo " .. self.Paths.UtilityScriptUndoRedo:getNextUndoDescription())
		self.Menus[self.TargetWidget.Edit]:setEnabled(self.UndoHandle, self.Paths.UtilityScriptUndoRedo:canUndo())
		
		self.Menus[self.TargetWidget.Edit]:setMainText(self.RedoHandle, "Redo " .. self.Paths.UtilityScriptUndoRedo:getNextRedoDescription())
		self.Menus[self.TargetWidget.Edit]:setEnabled(self.RedoHandle, self.Paths.UtilityScriptUndoRedo:canRedo())
	end
	self.Paths.UtilityScriptUndoRedo.ChangeEvent:connect(self.onUndoRedoChange)
	
	self.onPriorityChange = function()			
		self.Menus[self.TargetWidget.Edit]:setSideText(self.PriorityHandle, "[" .. self.Paths.DataModelClip:getPriority() .. "]")	
	end
	self.Paths.DataModelClip.AnimationPriorityChangeEvent:connect(self.onPriorityChange)
	
	self.onPreferenceChange = function(prefType, newVal)
		if self.Paths.DataModelPreferences.Type.Interpolation == prefType then
			self.Menus[self.TargetWidget.Settings]:setToggle(self.InterpolationHandle, newVal)
		elseif self.Paths.DataModelPreferences.Type.TransparentSelect == prefType then
			self.Menus[self.TargetWidget.Settings]:setToggle(self.SelectInvisibleHandle, newVal)
		elseif self.Paths.DataModelPreferences.Type.Tooltips == prefType then
			self.Menus[self.TargetWidget.Settings]:setToggle(self.ShowToolTipsHandle, newVal)
		elseif self.Paths.DataModelPreferences.Type.SnapIncrement == prefType then			
			self.Menus[self.TargetWidget.Settings]:setSideText(self.SnapIncrementHandle, "[" .. tostring(newVal) .. "]")								
		elseif self.Paths.DataModelPreferences.Type.CursorPoseSnapping == prefType then					
			self.Menus[self.TargetWidget.Settings]:setToggle(self.PoseSnappingHandle, newVal)
		end
	end
	self.Paths.DataModelPreferences.EditPreferenceEvent:connect(self.onPreferenceChange)
end

function TopDropdownMenuBar:init(Paths)
	self.Paths = Paths
	self.TargetWidget = Paths.GUITopDropDownMenuBar
	
	createMenus(self)
	monitorMenus(self)
	
	self.onInput = function(input, menu)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			local visibleMenu = getVisibleMenu(self)
			if not visibleMenu then
				menu:turnOn(true)
			else
				visibleMenu:turnOn(false)
			end
		end
	end
	
	self.onMouseOver = function(over)
		local visibleMenu = getVisibleMenu(self)
		if visibleMenu then
			visibleMenu:turnOn(false)
			self.Menus[over]:turnOn(true)
		end	
		
		for buttonFrame, menu in pairs(self.Menus) do			
			buttonFrame.Highlight.Visible = over == buttonFrame
			buttonFrame.TextLabel.TextColor3 = over == buttonFrame and Paths.UtilityScriptTheme:GetHighlightedTextColor() or Paths.UtilityScriptTheme:GetTextColor()
		end		
	end
	
	self.onMouseLeave = function(over)
		if not getVisibleMenu(self) then
			over.Highlight.Visible = false
			over.TextLabel.TextColor3 = Paths.UtilityScriptTheme:GetTextColor()
		end
	end
	
	for buttonFrame, menu in pairs(self.Menus) do
		table.insert(self.Connections, buttonFrame.InputBegan:connect(function(input) self.onInput(input, menu) end))
		table.insert(self.Connections, buttonFrame.MouseEnter:connect(function() self.onMouseOver(buttonFrame) end))
		buttonFrame.Highlight.Visible = false
		table.insert(self.Connections, buttonFrame.MouseLeave:connect(function() self.onMouseLeave(buttonFrame) end))	
	end	
end

function TopDropdownMenuBar:terminate()
	for _,connected in ipairs(self.Connections) do
		connected:disconnect()
	end	
	self.Connections = {}
	
	self.Paths.DataModelPreferences.EditPreferenceEvent:disconnect(self.onPreferenceChange)
	self.Paths.DataModelClip.AnimationPriorityChangeEvent:disconnect(self.onPriorityChange)
	self.Paths.UtilityScriptUndoRedo.ChangeEvent:disconnect(self.onUndoRedoChange)
	self.UndoHandle = nil
	self.RedoHandle = nil	
	self.SelectInvisibleHandle = nil
	self.PriorityHandle = nil
	self.InterpolationHandle = nil
	self.ShowToolTipsHandle = nil
	self.SnapIncrementHandle = nil
	self.PoseSnappingHandle = nil
	
	self.Menus = {}
	self.Paths = nil
	
	for _, menu in pairs(self.Menus) do
		menu:terminate()
	end
end

return TopDropdownMenuBar
