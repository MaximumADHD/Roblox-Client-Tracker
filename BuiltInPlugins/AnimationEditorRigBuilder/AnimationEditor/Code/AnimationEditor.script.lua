local FastFlags = require(script.Parent.FastFlags)
local Paths = require(script.Parent.Paths)

local mainPluginName = "AnimationEditor"
local displayName = "Animation Editor"

-- inDevelopment enables small hacks which make development easier e.g allowing more than one Animation Editor on the ribbon, and using the
-- Animation Editor when the game is running
local inDevelopment = false
if inDevelopment then
	local timeDate = os.date("*t")
	local timeDateString = timeDate.month .. "/" ..timeDate.day .. " - " .. timeDate.hour .. ":" .. timeDate.min .. ":" .. timeDate.sec
	mainPluginName = mainPluginName .. "U" .. tostring(timeDateString)
	displayName = displayName .. " (U)" .. tostring(timeDateString)
end

local dockWidgetPluginGuiInfo = DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Float, false, true, 1000, 500)
local pluginGui = plugin:CreateDockWidgetPluginGui(mainPluginName, dockWidgetPluginGuiInfo)
pluginGui.Name = mainPluginName
pluginGui.Title = displayName

local toolbar = plugin:CreateToolbar("Animations")
local button = toolbar:CreateButton(
	displayName,
	"Create, preview and publish animations for character rigs", -- The text next to the icon. Leave Othis blank if the icon is sufficient.
	"http://www.roblox.com/asset/?id=620849296" -- The icon file's name
)

Paths:init()
Paths.Globals.Plugin = plugin
Paths.Globals.PluginGUI = pluginGui
Paths.Globals.CoreGUI = game:GetService("CoreGui")
if FastFlags:isIKModeFlagOn() then
	Paths.Globals.TextService = game:GetService("TextService")
	Paths.Globals.PhysicsService = game:GetService("PhysicsService")
end
Paths.Globals.Selection = game:GetService("Selection")

local DoNotRunAnimationEditorInPlayModeFlagExists, DoNotRunAnimationEditorInPlayModeFlagValue = pcall(function() return settings():GetFFlag("DoNotRunAnimationEditorInPlayMode") end)
Paths.DataModelPreferences:populatePreferencesTable(Paths)

local function setAnimationEditorStatusForRigBuilder()
	-- the rig builder reads the value of _G["AnimationEdit"] so as not to make new rigs while the animation editor is open
	_G["AnimationEdit"] = pluginGui.Enabled
end
setAnimationEditorStatusForRigBuilder()

local function isMainGUIOnScreen()
	return nil ~= Paths.GUI
end

local function isGUIOnScreen()
	return Paths.GUIScriptStartScreen:isOnScreen() or isMainGUIOnScreen()
end

-- if we get a pluginGui changed event while this is false, we know it's from the user pressing the 'x' button
local disablingFromCode = false
local function disablePluginGui()
	disablingFromCode = true
	pluginGui.Enabled = false;
	disablingFromCode = false
end

local function createMainGUI()
	if not isMainGUIOnScreen() then
		Paths.UtilityScriptTheme:initPreGUICreate()
		Paths.UtilityScriptUndoRedo:init(Paths)
		Paths.HelperFunctionsTable:init(Paths)

		Paths.DataModelClip:init(Paths)
		Paths.DataModelKeyframes:init(Paths)
		Paths.DataModelSession:init(Paths)
		Paths.DataModelRig:init(Paths)
		Paths.DataModelPreferences:init(Paths)
		Paths.DataModelPlayState:init(Paths)
		Paths.DataModelIKManipulator:init(Paths)
		if FastFlags:isAnimationEventsOn() then
			Paths.DataModelAnimationEvents:init(Paths)
		end

		Paths.UtilityScriptDisplayArea:init(Paths)

		Paths:cacheGUIPaths(Paths.GUIClonableAnimationEditorMainGUI:clone())
		Paths.GUI.Parent = pluginGui

		Paths.InputKeyboard:init(Paths)
		Paths.DataModelPartManipulator:init(Paths)
		Paths.InputMouse:init(Paths)
		Paths.UtilityScriptCopyPaste:init(Paths)

		if FastFlags:isFlyCameraOn() then
			Paths.ViewportScriptFlyCamera:init(Paths)
		end

		Paths.GUIScriptPopUpInput:init(Paths)
		Paths.GUIScriptToolTip:init(Paths)
		Paths.GUIScriptAnimationTarget:init(Paths)
		Paths.GUIScriptMediaControls:init(Paths)
		Paths.GUIScriptScrollingJointTimeline:init(Paths)
		Paths.GUIScriptNotchesDisplayArea:init(Paths)
		Paths.GUIScriptScrollZoomControl:init(Paths)
		Paths.GUIScriptTopDropDownMenuBar:init(Paths)
		Paths.GUIScriptLoad:init(Paths)
		Paths.GUIScriptSave:init(Paths)
		Paths.GUIScriptPoseOverwriteWarning:init(Paths)
		Paths.GUIScriptPriority:init(Paths)
		Paths.GUIScriptScrubberDisplayArea:init(Paths)
		Paths.GUIScriptTimelineMenu:init(Paths)
		Paths.GUIScriptEasingOptions:init(Paths)
		Paths.GUIScriptPromptOKCancel:init(Paths)
		Paths.GUIScriptPositionOrientationPanel:init(Paths)
		Paths.GUIScriptPartManipulator:init(Paths)
		Paths.GUIScriptIndicatorArea:init(Paths)
		Paths.GUIScriptMultiSelectArea:init(Paths)
		if FastFlags:isAnimationEventsOn() then
			Paths.GUIScriptManageEvents:init(Paths)
			Paths.GUIScriptEditAnimationEvents:init(Paths)
			Paths.GUIScriptAnimationEventBar:init(Paths)
			Paths.GUIScriptAnimationEventMenu:init(Paths)
		end

		if FastFlags:isIKModeFlagOn() then
			Paths.GUIScriptPromptYesNo:init(Paths)
			Paths.GUIScriptWaitingDialog:init(Paths)
			Paths.GUIScriptAlertMessage:init(Paths)
			Paths.GUIScriptIKMenu:init(Paths)
		end

		if FastFlags:isScaleKeysOn() then
			Paths.GUIScriptScaleControls:init(Paths)
			Paths.GUIScriptChangeDuration:init(Paths)
			Paths.GUIScriptNotificationTip:init(Paths)
			Paths.UtilityScriptScalePoses:init(Paths)
		end
		Paths.UtilityScriptMoveItems:init(Paths)

		Paths.DataModelSession:initPostGUICreate()
		if FastFlags:isIKModeFlagOn() then
			Paths.DataModelRig:initPostGUICreate()
		end
		Paths.UtilityScriptUndoRedo:initPostGUICreate()
		Paths.DataModelKeyframes:initPostGUICreate()
		Paths.DataModelPlayState:initPostGUICreate()
		if FastFlags:isAnimationEventsOn() then
			Paths.DataModelAnimationEvents:initPostGUICreate()
		end
		Paths.UtilityScriptTheme:initPostGUICreate()
		if FastFlags:isScaleKeysOn() then
			Paths.GUIScriptScaleControls:initPostGUICreate()
		end

		if FastFlags:isIKModeFlagOn() then
			Paths.GUIScriptAnimationTarget:initPostGUICreate(Paths)
		end

		if not FastFlags:isAnimationEventsOn() then
			Paths.GUIMain.AnimationEventBar.Visible = false
			Paths.GUI.Size = UDim2.new(1, -2, 1, 24)
		end

		Paths.ViewportScriptGrid:init(Paths)
	end
end

local function destroyMainGUI()
	disablePluginGui()

	if isMainGUIOnScreen() then
		Paths.DataModelClip:autoSave()

		Paths.DataModelSession:resetAnimation()

		Paths.ViewportScriptGrid:terminate()

		Paths.DataModelPlayState:terminatePreGUIDestroy()
		Paths.DataModelKeyframes:terminatePreGUIDestroy()
		Paths.UtilityScriptUndoRedo:terminatePreGUIDestroy()
		Paths.DataModelSession:terminatePreGUIDestroy()

		if FastFlags:isScaleKeysOn() then
			Paths.GUIScriptNotificationTip:terminate()
			Paths.GUIScriptChangeDuration:terminate()
			Paths.GUIScriptScaleControls:terminate()
			Paths.UtilityScriptScalePoses:terminate()
		end

		if FastFlags:isIKModeFlagOn() then
			Paths.GUIScriptAlertMessage:terminate()
			Paths.GUIScriptWaitingDialog:terminate()
			Paths.GUIScriptPromptYesNo:terminate()
			Paths.GUIScriptIKMenu:terminate()
		end

		Paths.GUIScriptPartManipulator:terminate()
		Paths.GUIScriptPositionOrientationPanel:terminate()
		Paths.GUIScriptPromptOKCancel:terminate()
		Paths.GUIScriptEasingOptions:terminate()
		Paths.GUIScriptTimelineMenu:terminate()
		Paths.GUIScriptScrubberDisplayArea:terminate()
		Paths.GUIScriptPriority:terminate()
		Paths.GUIScriptSave:terminate()
		Paths.GUIScriptLoad:terminate()
		Paths.GUIScriptPoseOverwriteWarning:terminate()
		Paths.GUIScriptTopDropDownMenuBar:terminate()
		Paths.GUIScriptScrollZoomControl:terminate()
		Paths.GUIScriptNotchesDisplayArea:terminate()
		Paths.GUIScriptMediaControls:terminate()
		Paths.GUIScriptScrollingJointTimeline:terminate()
		Paths.GUIScriptAnimationTarget:terminate()
		Paths.GUIScriptToolTip:terminate()
		Paths.GUIScriptPopUpInput:terminate()
		Paths.GUIScriptIndicatorArea:terminate()
		if FastFlags:isAnimationEventsOn() then
			Paths.GUIScriptManageEvents:terminate()
			Paths.GUIScriptEditAnimationEvents:terminate()
			Paths.GUIScriptAnimationEventBar:terminate()
			Paths.GUIScriptAnimationEventMenu:terminate()
		end

		Paths.GUIScriptMultiSelectArea:terminate()
		Paths.UtilityScriptMoveItems:terminate()

		Paths.UtilityScriptCopyPaste:terminate()
		Paths.DataModelPartManipulator:terminate()
		Paths.InputKeyboard:terminate()
		Paths.InputMouse:terminate()

		if FastFlags:isFlyCameraOn() then
				Paths.ViewportScriptFlyCamera:terminate()
		end

		Paths.UtilityScriptDisplayArea:terminate()

		if FastFlags:isAnimationEventsOn() then
			Paths.DataModelAnimationEvents:terminate()
		end
		Paths.DataModelIKManipulator:terminate()
		Paths.DataModelPlayState:terminate()
		Paths.DataModelPreferences:terminate()
		Paths.DataModelRig:terminate()
		Paths.DataModelSession:terminate()
		Paths.DataModelKeyframes:terminate()
		Paths.DataModelClip:terminate()

		Paths.HelperFunctionsTable:terminate()
		Paths.UtilityScriptUndoRedo:terminate()

		Paths.UtilityScriptThemeData:terminate()
		Paths.UtilityScriptTheme:terminate()

		if FastFlags:isScaleKeysOn() then
			Paths.UtilityScriptScalePoses:terminate()
		end

		Paths.GUI:Destroy()
		Paths.GUI = nil
	end
	Paths.GUIScriptStartScreen:terminate()
end

function exitPlugin()
	Paths.DataModelClip:setLength(Paths.DataModelClip:getLength(), true)
	Paths.DataModelPreferences:serializePreferencesTable(Paths)

	local handleExit = function()
		destroyMainGUI()
		plugin:Activate(false)
		button:SetActive(false)

		game:GetService("ChangeHistoryService"):SetEnabled(true)
		game:GetService("ChangeHistoryService"):ResetWaypoints()
	end
	if isMainGUIOnScreen() then
		Paths.GUIScriptPromptOKCancel:show("You will lose unsaved progress. Are you sure?", handleExit)
	else
		handleExit()
	end
end

local function onEnableChanged()
    if isGUIOnScreen() then
		exitPlugin()
    elseif not inDevelopment and DoNotRunAnimationEditorInPlayModeFlagExists and DoNotRunAnimationEditorInPlayModeFlagValue == true and game:GetService('RunService'):IsRunning() then
        Paths.GUIScriptWarningDialog:show(Paths, "Cannot run the Animation Editor while the game is running!")
	else
		plugin:Activate(true)
		button:SetActive(true)

		game:GetService("ChangeHistoryService"):SetEnabled(false)
		game:GetService("ChangeHistoryService"):ResetWaypoints()

		local retFunc = function(selectedObject)
			if selectedObject ~= nil then
				Paths.DataModelRig:create(Paths, selectedObject)
				createMainGUI()
				wait(0.1)
				Paths.DataModelSession:resetAnimation()
				Paths.ViewportScriptGrid:create(selectedObject)
			else
				exitPlugin()
			end
		end
		pluginGui.Enabled = true
		Paths.UtilityScriptThemeData:init()
		Paths.UtilityScriptTheme:init(Paths)
		Paths.GUIScriptStartScreen:init(Paths)
		Paths.GUIScriptStartScreen:show(retFunc)
		Paths.UtilityScriptTheme:setColorsToTheme(Paths.GUIScriptStartScreen.gui)
	end
end
button.Click:connect(onEnableChanged)

if AnimationEditorDeleteFix then
	pluginGui.WindowFocused:connect(function()
		local session = Paths.DataModelSession
		plugin:Activate(true)
		if session and isMainGUIOnScreen() then
			session:deselectItemsInStudioHierarchy()
		end
	end)
end

if FastFlags:isUsePluginBindToCloseOn() then
	pluginGui:BindToClose(function()
	    if isGUIOnScreen() then
			exitPlugin()
		end
	end)
else
	pluginGui.Changed:connect(function(property)
		setAnimationEditorStatusForRigBuilder()
		local wasPluginGuiXButtonPressed = not pluginGui.Enabled and not disablingFromCode and property == "Enabled" and isGUIOnScreen()
	   	if wasPluginGuiXButtonPressed then
			pluginGui.Enabled = isMainGUIOnScreen() -- this allows the pluginGui to stay on screen to show the confirmation of closure dialog
	    	onEnableChanged()
	   	end
	end)
end
