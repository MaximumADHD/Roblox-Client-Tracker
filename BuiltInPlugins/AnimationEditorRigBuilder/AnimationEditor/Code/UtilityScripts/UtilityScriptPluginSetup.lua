local FastFlags = require(script.Parent.Parent.FastFlags)

local PluginSetup = {}

local function isGUIOnScreen(self)
	return nil ~= self.Paths.GUI
end

local function onEnableChanged(self)
    if isGUIOnScreen(self) then
		self:exitPlugin()
    elseif FastFlags:isDoNotRunInPlayModeOn() and game:GetService('RunService'):IsRunning() then
        self.Paths.GUIScriptWarningDialog:show(self.Paths, "Cannot run the Animation Editor while the game is running!")
	else
		self.Paths.Globals.Plugin:Activate(true)
		self.Button:SetActive(true)

		game:GetService("ChangeHistoryService"):SetEnabled(false)
		game:GetService("ChangeHistoryService"):ResetWaypoints()

		self.Paths.Globals.PluginGUI.Enabled = true
		self.Paths.UtilityScriptThemeData:init()
		self.Paths.UtilityScriptTheme:init(self.Paths)

		self.Paths:cacheGUIPaths(self.Paths.GUIClonableAnimationEditorMainGUI:clone())
		self.Paths.GUI.Parent = self.Paths.Globals.PluginGUI

		self.Paths.UtilityScriptTheme:setColorsToTheme(self.Paths.GUI)
		self.Paths.GUIScriptDarkCover:init(self.Paths)
		self.Paths.GUIScriptPromptOKCancel:init(self.Paths)
		self.Paths.GUIScriptAlertMessage:init(self.Paths)
		self.Paths.UtilityScriptRigSelection:init(self.Paths)
	end
end

function PluginSetup:init(Paths, displayName)
	self.Paths = Paths
	self.ScriptsInitialized = false
	self.TracksInitialized = false

	self.Toolbar = Paths.Globals.Plugin:CreateToolbar("Animations")
	self.Button = self.Toolbar:CreateButton(
		displayName,
		"Create, preview and publish animations for character rigs", -- The text next to the icon. Leave Othis blank if the icon is sufficient.
		"http://www.roblox.com/asset/?id=620849296" -- The icon file's name
	)

	self.Button.Click:connect(function() onEnableChanged(self) end)

	self.Paths.Globals.PluginGUI.WindowFocused:connect(function()
		local session = self.Paths.DataModelSession
		self.Paths.Globals.Plugin:Activate(true)
		if session and self.ScriptsInitialized and not self.Paths.GUIScriptDarkCover:isOn() and isGUIOnScreen(self) then
			session:deselectItemsInStudioHierarchy()
		end
	end)

	self.Paths.Globals.PluginGUI:BindToClose(function()
	    if isGUIOnScreen(self) then
			self:exitPlugin()
		end
	end)
end

local function initializeScripts(self)
	if not self.ScriptsInitialized then
		self.Paths.UtilityScriptTheme:initPreGUICreate()
		self.Paths.UtilityScriptUndoRedo:init(self.Paths)
		self.Paths.HelperFunctionsTable:init(self.Paths)

		self.Paths.DataModelClip:init(self.Paths)
		self.Paths.DataModelKeyframes:init(self.Paths)
		self.Paths.DataModelSession:init(self.Paths)
		self.Paths.DataModelRig:init(self.Paths)
		self.Paths.DataModelPreferences:init(self.Paths)
		self.Paths.DataModelPlayState:init(self.Paths)
		self.Paths.DataModelIKManipulator:init(self.Paths)
		if FastFlags:isAnimationEventsOn() then
			self.Paths.DataModelAnimationEvents:init(self.Paths)
		end

		self.Paths.UtilityScriptDisplayArea:init(self.Paths)

		self.Paths.InputKeyboard:init(self.Paths)
		self.Paths.DataModelPartManipulator:init(self.Paths)
		self.Paths.InputMouse:init(self.Paths)
		self.Paths.UtilityScriptCopyPaste:init(self.Paths)

		if FastFlags:isFlyCameraOn() then
			self.Paths.ViewportScriptFlyCamera:init(self.Paths)
		end

		self.Paths.GUIScriptPopUpInput:init(self.Paths)
		self.Paths.GUIScriptToolTip:init(self.Paths)
		self.Paths.GUIScriptAnimationTarget:init(self.Paths)
		self.Paths.GUIScriptMediaControls:init(self.Paths)

		self.Paths.GUIScriptScrollingJointTimeline:init(self.Paths)
		self.Paths.GUIScriptNotchesDisplayArea:init(self.Paths)
		self.Paths.GUIScriptScrollZoomControl:init(self.Paths)
		self.Paths.GUIScriptTopDropDownMenuBar:init(self.Paths)
		self.Paths.GUIScriptLoad:init(self.Paths)
		self.Paths.GUIScriptSave:init(self.Paths)
		self.Paths.GUIScriptPoseOverwriteWarning:init(self.Paths)
		self.Paths.GUIScriptPriority:init(self.Paths)
		self.Paths.GUIScriptScrubberDisplayArea:init(self.Paths)
		self.Paths.GUIScriptTimelineMenu:init(self.Paths)
		self.Paths.GUIScriptEasingOptions:init(self.Paths)

		self.Paths.GUIScriptPositionOrientationPanel:init(self.Paths)
		self.Paths.GUIScriptPartManipulator:init(self.Paths)
		self.Paths.GUIScriptIndicatorArea:init(self.Paths)
		self.Paths.GUIScriptMultiSelectArea:init(self.Paths)
		if FastFlags:isAnimationEventsOn() then
			self.Paths.GUIScriptManageEvents:init(self.Paths)
			self.Paths.GUIScriptEditAnimationEvents:init(self.Paths)
			self.Paths.GUIScriptAnimationEventBar:init(self.Paths)
			self.Paths.GUIScriptAnimationEventMenu:init(self.Paths)
		end

		if FastFlags:isIKModeFlagOn() then
			self.Paths.GUIScriptPromptYesNo:init(self.Paths)
			self.Paths.GUIScriptWaitingDialog:init(self.Paths)
			self.Paths.GUIScriptIKMenu:init(self.Paths)
		end

		if FastFlags:isScaleKeysOn() then
			self.Paths.GUIScriptScaleControls:init(self.Paths)
			self.Paths.GUIScriptChangeDuration:init(self.Paths)
			self.Paths.GUIScriptNotificationTip:init(self.Paths)
			self.Paths.UtilityScriptScalePoses:init(self.Paths)
		end
		self.Paths.UtilityScriptMoveItems:init(self.Paths)
		if FastFlags:useQWidgetsForPopupsOn() then
			self.Paths.UtilityScriptTheme:initPostGUICreate()
		end
		self.Paths.DataModelSession:initPostGUICreate()
		self.Paths.UtilityScriptUndoRedo:initPostGUICreate()
		self.Paths.DataModelKeyframes:initPostGUICreate()
		self.Paths.DataModelPlayState:initPostGUICreate()
		if FastFlags:isAnimationEventsOn() then
			self.Paths.DataModelAnimationEvents:initPostGUICreate()
		end
		if not FastFlags:useQWidgetsForPopupsOn() then
			self.Paths.UtilityScriptTheme:initPostGUICreate()
		end
		if FastFlags:isScaleKeysOn() then
			self.Paths.GUIScriptScaleControls:initPostGUICreate()
		end

		if FastFlags:isIKModeFlagOn() then
			self.Paths.GUIScriptAnimationTarget:initPostGUICreate(self.Paths)
		end

		if not FastFlags:isAnimationEventsOn() then
			self.Paths.GUIMain.AnimationEventBar.Visible = false
			self.Paths.GUI.Size = UDim2.new(1, -2, 1, 24)
		end

		self.Paths.ViewportScriptGrid:init(self.Paths)
		self.ScriptsInitialized = true
	end
end

local function terminateScripts(self)
	if self.ScriptsInitialized then
		self.Paths.ViewportScriptGrid:terminate()

		self.Paths.DataModelPlayState:terminatePreGUIDestroy()
		self.Paths.DataModelKeyframes:terminatePreGUIDestroy()
		self.Paths.UtilityScriptUndoRedo:terminatePreGUIDestroy()
		self.Paths.DataModelSession:terminatePreGUIDestroy()

		if FastFlags:isScaleKeysOn() then
			self.Paths.GUIScriptNotificationTip:terminate()
			self.Paths.GUIScriptChangeDuration:terminate()
			self.Paths.GUIScriptScaleControls:terminate()
			self.Paths.UtilityScriptScalePoses:terminate()
		end

		if FastFlags:isIKModeFlagOn() then
			self.Paths.GUIScriptWaitingDialog:terminate()
			self.Paths.GUIScriptPromptYesNo:terminate()
			self.Paths.GUIScriptIKMenu:terminate()
		end

		self.Paths.GUIScriptPartManipulator:terminate()
		self.Paths.GUIScriptPositionOrientationPanel:terminate()
		self.Paths.GUIScriptEasingOptions:terminate()
		self.Paths.GUIScriptTimelineMenu:terminate()
		self.Paths.GUIScriptScrubberDisplayArea:terminate()
		self.Paths.GUIScriptPriority:terminate()
		self.Paths.GUIScriptSave:terminate()
		self.Paths.GUIScriptLoad:terminate()
		self.Paths.GUIScriptPoseOverwriteWarning:terminate()
		self.Paths.GUIScriptTopDropDownMenuBar:terminate()
		self.Paths.GUIScriptScrollZoomControl:terminate()
		if self.TracksInitialized then
			self.Paths.GUIScriptNotchesDisplayArea:terminate()
		end
		self.Paths.GUIScriptMediaControls:terminate()
		if self.TracksInitialized then
			self.Paths.GUIScriptScrollingJointTimeline:terminate()
		end
		self.Paths.GUIScriptAnimationTarget:terminate()
		self.Paths.GUIScriptToolTip:terminate()
		self.Paths.GUIScriptPopUpInput:terminate()
		if self.TracksInitialized then
			self.Paths.GUIScriptIndicatorArea:terminate()
		end
		if FastFlags:isAnimationEventsOn() then
			self.Paths.GUIScriptManageEvents:terminate()
			self.Paths.GUIScriptEditAnimationEvents:terminate()
			if self.TracksInitialized then
				self.Paths.GUIScriptAnimationEventBar:terminate()
			end
			self.Paths.GUIScriptAnimationEventMenu:terminate()
		end

		self.Paths.GUIScriptMultiSelectArea:terminate()
		self.Paths.UtilityScriptMoveItems:terminate()

		self.Paths.UtilityScriptCopyPaste:terminate()
		self.Paths.DataModelPartManipulator:terminate()
		self.Paths.InputKeyboard:terminate()
		self.Paths.InputMouse:terminate()

		if FastFlags:isFlyCameraOn() then
				self.Paths.ViewportScriptFlyCamera:terminate()
		end

		self.Paths.UtilityScriptDisplayArea:terminate()

		if FastFlags:isAnimationEventsOn() then
			self.Paths.DataModelAnimationEvents:terminate()
		end
		self.Paths.DataModelIKManipulator:terminate()
		self.Paths.DataModelPlayState:terminate()
		self.Paths.DataModelPreferences:terminate()
		self.Paths.DataModelRig:terminate()
		self.Paths.DataModelSession:terminate()
		self.Paths.DataModelKeyframes:terminate()
		self.Paths.DataModelClip:terminate()

		self.Paths.HelperFunctionsTable:terminate()
		self.Paths.UtilityScriptUndoRedo:terminate()

		self.Paths.UtilityScriptThemeData:terminate()
		self.Paths.UtilityScriptTheme:terminate()

		if FastFlags:isScaleKeysOn() then
			self.Paths.UtilityScriptScalePoses:terminate()
		end
		self.ScriptsInitialized = false
	end
end

function PluginSetup:exitPlugin()
	self.Paths.DataModelPreferences:serializePreferencesTable(self.Paths)	

	local handleExit = function(self)
		self.Paths.Globals.PluginGUI.Enabled = false

		if self.Paths.DataModelRig:hasRig(self.Paths) then
			self.Paths.DataModelClip:autoSave()
			self.Paths.DataModelSession:resetAnimation()
		end

		if self.ScriptsInitialized then
			terminateScripts(self)
		end

		self.Paths.UtilityScriptRigSelection:terminate()
		self.Paths.GUIScriptAlertMessage:terminate()
		self.Paths.GUIScriptPromptOKCancel:terminate()
		self.Paths.GUIScriptDarkCover:terminate()

		self.Paths.GUI:Destroy()
		self.Paths.GUI = nil

		self.Paths.Globals.Plugin:Activate(false)
		self.Button:SetActive(false)

		game:GetService("ChangeHistoryService"):SetEnabled(true)
		game:GetService("ChangeHistoryService"):ResetWaypoints()
	end
	if isGUIOnScreen(self) then
		self.Paths.GUIScriptPromptOKCancel:show("You will lose unsaved progress. Are you sure?", function() handleExit(self) end)
	else
		handleExit(self)
	end
end

local function createTracks(self)
	self.Paths.GUIScriptIndicatorArea:init(self.Paths)
	self.Paths.GUIScriptAnimationEventBar:init(self.Paths)
	self.Paths.GUIScriptScrollingJointTimeline:init(self.Paths)
	self.Paths.GUIScriptNotchesDisplayArea:init(self.Paths)
	self.TracksInitialized = true
end

local function destroyTracks(self)
	self.Paths.GUIScriptNotchesDisplayArea:terminate()
	self.Paths.GUIScriptScrollingJointTimeline:terminate()
	self.Paths.GUIScriptIndicatorArea:terminate()
	self.Paths.GUIScriptAnimationEventBar:terminate()
	self.TracksInitialized = false
end

function PluginSetup:clearEditor(rigInvalidated)
	if not rigInvalidated then
		self.Paths.DataModelClip:autoSave()
		if self.Paths.DataModelIKManipulator:isIKModeEnabled() then
			self.Paths.HelperFunctionsCreation:tag(self.Paths.DataModelRig:getModel(), self.Paths.DataModelRig.TagName)
		else
			self.Paths.HelperFunctionsCreation:removeTag(self.Paths.DataModelRig:getModel(), self.Paths.DataModelRig.TagName)
		end
		self.Paths.DataModelSession:resetAnimation()
	end
	self.Paths.GUIScriptAnimationTarget:updateTarget()
	destroyTracks(self)
	self.Paths.DataModelPartManipulator:resetSelection()
	self.Paths.DataModelRig:destroyRig()
end

local function repopulateEditor(self, rigData)
	self.Paths.DataModelRig:create(self.Paths, rigData)
	self.Paths.DataModelRig:initConnections()
	createTracks(self)
end

function PluginSetup:populateEditor(rigData)
	if not self.Paths.HelperFunctionsTable:isNilOrEmpty(rigData) then
		if not self.ScriptsInitialized then
			self.Paths.DataModelRig:create(self.Paths, rigData)
			initializeScripts(self)
		else
			repopulateEditor(self, rigData)
		end
		self.Paths.DataModelSession:resetAnimation()
		self.Paths.DataModelRig:initPostGUICreate()
		self.Paths.DataModelClip:loadCurrentAnimation("Automatic Save")
		self.Paths.ViewportScriptGrid:create(self.Paths.HelperFunctionsTable:firstValue(rigData))
		self.Paths.UtilityScriptTheme:setColorsToTheme(self.Paths.GUI)
	end
end

return PluginSetup