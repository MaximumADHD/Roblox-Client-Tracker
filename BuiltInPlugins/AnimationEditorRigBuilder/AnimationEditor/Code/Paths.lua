local FastFlags = require(script.Parent.FastFlags)

local Paths = {}

Paths.Globals = nil

-- actions
Paths.Actions = script.Parent.Actions
Paths.ActionScrollZoom = nil
Paths.ActionEditClip = nil
Paths.ActionShowContextMenu = nil
Paths.ActionEditPreference = nil
Paths.ActionEditLength = nil
Paths.ActionMoveScrubber = nil
Paths.ActionPlay = nil
Paths.ActionPause = nil
Paths.ActionToggleLooping = nil
Paths.ActionNew = nil
Paths.ActionImport = nil
Paths.ActionImportFBXAnimation = nil
Paths.ActionExport = nil
Paths.ActionSetPriority = nil
Paths.ActionEditSnapIncrement = nil
Paths.ActionAddTimeAtCursor = nil
Paths.ActionEditKeyframeName = nil
Paths.ActionRemoveTimeAtCursor = nil
Paths.ActionEditEasingOptions = nil
Paths.ActionCut = nil
Paths.ActionPaste = nil
Paths.ActionTogglePartInclude = nil
Paths.ActionEditDisplayPrecision = nil
Paths.ActionEditStepInterval = nil
Paths.ActionMove = nil
if FastFlags:isScaleKeysOn() then
	Paths.ActionScale = nil
end
if FastFlags:isIKModeFlagOn() then
	Paths.ActionTogglePartPinned = nil
	Paths.ActionToggleIsIKModeActive = nil
	Paths.ActionConstrainKeyData = nil
end

-- gui
Paths.GUI = nil
Paths.GUIMain = nil
Paths.GUIPopUps = nil
Paths.GUIDragArea = nil
Paths.GUIAnimationTarget = nil
Paths.GUIMediaControls = nil
Paths.GUIScrollingJointTimeline = nil
Paths.GUIJointsTimeline = nil
Paths.GUINotchesDisplayArea = nil
Paths.GUIScrubberDisplayArea = nil
Paths.GUIZoomControls = nil
Paths.GUITopDropDownMenuBar = nil
Paths.GUITimelineMenu = nil
Paths.GUIToolTip = nil
Paths.GUIPositionOrientationPanel = nil
Paths.GUIMultiSelectArea = nil
Paths.GUIIndicatorArea = nil
if FastFlags:isScaleKeysOn() then
	Paths.GUIScaleControls = nil
end

-- gui scripts
Paths.GUIScripts = nil
Paths.GUIScriptAnimationTarget = nil
Paths.GUIScriptMediaControls = nil
Paths.GUIScriptJointTimeline = nil
Paths.GUIScriptScrollingJointTimeline = nil
Paths.GUIScriptJoint = nil
Paths.GUIScriptKeyframe = nil
if not FastFlags:useQWidgetsForPopupsOn() then
	Paths.GUIScriptSubWindow = nil
end
Paths.GUIScriptNotchesDisplayArea = nil
Paths.GUIScriptScrubberDisplayArea = nil
Paths.GUIScriptScrollZoomControl = nil
Paths.GUIScriptTopDropDownMenuBar = nil
Paths.GUIScriptLoad = nil
Paths.GUIScriptSave = nil
Paths.GUIScriptWarningDialog = nil
Paths.GUIScriptPoseOverwriteWarning = nil
Paths.GUIScriptPriority = nil
Paths.GUIScriptToolTip = nil
Paths.GUIScriptPromptOKCancel = nil
Paths.GUIScriptTimelineMenu = nil
Paths.GUIScriptEasingOptions = nil
Paths.GUIScriptStartScreen = nil
Paths.GUIScriptPositionOrientationPanel = nil
Paths.GUIScriptPartManipulator = nil
Paths.GUIScriptPopUpInput = nil
Paths.GUIScriptMultiSelectArea = nil
Paths.GUIScriptIndicatorArea = nil
Paths.GUIScriptKeyframeIndicator = nil
if FastFlags:isScaleKeysOn() then
	Paths.GUIScriptScaleControl = nil
	Paths.GUIScriptChangeDuration = nil
	Paths.GUIScriptNotificationTip = nil
end
if FastFlags:isIKModeFlagOn() then
	Paths.GUIScriptPromptYesNo = nil
	Paths.GUIScriptWaitingDialog = nil
	Paths.GUIScriptAlertMessage = nil
	Paths.GUIScriptViewportNotification = nil
	Paths.GUIScriptIKMenu = nil
end
if FastFlags:isAnimationEventsOn() then
	Paths.GUIScriptManageEventOption = nil
	Paths.GUIScriptManageEvents = nil
	Paths.GUIScriptAnimationEventSwizzle = nil
	Paths.GUIScriptEditAnimationEvents = nil
	Paths.GUIScriptSelectionList = nil
	Paths.GUIScriptKeyframeMarker = nil
	Paths.GUIScriptAnimationEventBar = nil
	Paths.GUIScriptAnimationEventMenu = nil
end
if FastFlags:useQWidgetsForPopupsOn() then
	Paths.GUIScriptQtWindow = nil
end

-- helper functions
Paths.HelperFunctions = script.Parent.HelperFunctions
Paths.HelperFunctionsCreation = nil
Paths.HelperFunctionsEasingStyles = nil
Paths.HelperFunctionsIteration = nil
Paths.HelperFunctionsMath = nil
Paths.HelperFunctionsTable = nil
Paths.HelperFunctionsWidget = nil
if FastFlags:isIKModeFlagOn() then
	Paths.HelperFunctionsWarningsAndPrompts = nil
end

-- widgets
Paths.Widgets = script.Parent.Widgets
Paths.WidgetCheckbox = nil
Paths.WidgetCustomImageButton = nil
Paths.WidgetKillScreen = nil
Paths.WidgetMainMenu = nil
Paths.WidgetMenuOption = nil
Paths.WidgetRadioButtonGroup = nil
Paths.WidgetRadioButton = nil
Paths.WidgetSwizzle = nil
if FastFlags:isAnimationEventsOn() then
	Paths.WidgetExpandableScrollingList = nil
	Paths.WidgetSelectAndDragBox = nil
end

-- utility scripts
Paths.Utility = script.Parent.UtilityScripts
Paths.UtilityScriptEvent = nil
Paths.UtilityScriptUndoRedo = nil
Paths.UtilityScriptColors = nil
Paths.UtilityScriptDisplayArea = nil
Paths.UtilityScriptDrag = nil
Paths.UtilityScriptResize = nil
Paths.UtilityScriptCopyPaste = nil
Paths.UtilityScriptConnections = nil
Paths.UtilityScriptPose = nil
Paths.UtilityScriptDataItem = nil
Paths.UtilityScriptCustomDragHandles = nil
Paths.UtilityScriptTween = nil
Paths.UtilityScriptCallback = nil
Paths.UtilityScriptMoveItems = nil
Paths.UtilityScriptTheme = nil
Paths.UtilityScriptThemeData = nil
if FastFlags:isScaleKeysOn() then
	Paths.UtilityScriptScalePoses = nil
end
if FastFlags:isIKModeFlagOn() then
	Paths.UtilityScriptHumanIK = nil
end
if FastFlags:isAnimationEventsOn() then
	Paths.UtilityScriptKeyframeMarker = nil
end

-- input
Paths.Input = script.Parent.Input
Paths.InputMouse = nil
Paths.InputKeyboard = nil
Paths.InputNavKeys = nil

-- model
Paths.DataModels = script.Parent.DataModels
Paths.DataModelRig = nil
Paths.DataModelClip = nil
Paths.DataModelPreferences = nil
Paths.DataModelSession = nil
Paths.DataModelKeyframes = nil
Paths.DataModelPlayState = nil
Paths.DataModelPartManipulator = nil
Paths.DataModelIKManipulator = nil
if FastFlags:isAnimationEventsOn() then
	Paths.DataModelAnimationEvents = nil
end

-- viewport scripts
Paths.ViewportScripts = script.Parent.ViewportScripts
Paths.ViewportScriptGrid = nil
Paths.ViewportScriptFlyCamera = nil

-- gui clonable
Paths.GUIClonable = script.Parent.Parent.GUIs
Paths.GUIClonableAnimationEditorMainGUI = Paths.GUIClonable.AnimationEditorMainGUI
Paths.GUIClonableJoint = Paths.GUIClonable.Joint
Paths.GUIClonableKeyframe = Paths.GUIClonable.Keyframe
Paths.GUIClonableNotch = Paths.GUIClonable.Notch
Paths.GUIClonableMenusFolder = Paths.GUIClonable.Menus
Paths.GUIClonableMenu = Paths.GUIClonableMenusFolder.Menu
Paths.GUIClonableMenuOption = Paths.GUIClonableMenusFolder.MenuOption
Paths.GUIClonableMenuDivider = Paths.GUIClonableMenusFolder.MenuDivider
Paths.GUIClonablePartManipulator = Paths.GUIClonable.PartManipulator
Paths.GUIClonableWarningDialog = Paths.GUIClonable.WarningDialog
Paths.GUIClonableKeyframeIndicator = Paths.GUIClonable.KeyframeIndicator
if FastFlags:isIKModeFlagOn() then
	Paths.GUIClonableViewportNotification = Paths.GUIClonable.ViewportNotification
end
if FastFlags:isAnimationEventsOn() then
	Paths.GUIClonableManageEventOption = Paths.GUIClonable.ManageEventOption
	if FastFlags:useQWidgetsForPopupsOn() then
		Paths.GUIClonableAnimationEventSwizzle = Paths.GUIClonable.EventItemFrame
	else
		Paths.GUIClonableAnimationEventSwizzle = Paths.GUIClonable.EventItemFrameOld
	end
	Paths.GUIClonableSelectionList = Paths.GUIClonable.SelectionList
	Paths.GUIClonableKeyframeMarker = Paths.GUIClonable.KeyframeMarker
end

-- gui popups
Paths.GUIClonablePopUps = Paths.GUIClonable.PopUps
if FastFlags:isFixAnimationsWithLongNamesOn() then
	Paths.GUIPopUpLoad = Paths.GUIClonablePopUps.Load
	Paths.GUIPopUpSave = Paths.GUIClonablePopUps.Save
else
	Paths.GUIPopUpLoad = Paths.GUIClonablePopUps.LoadOld
	Paths.GUIPopUpSave = Paths.GUIClonablePopUps.SaveOld
end
Paths.GUIPopUpPriority = Paths.GUIClonablePopUps.Priority
Paths.GUIPopUpOKCancelTemplate = Paths.GUIClonablePopUps.OkCancelTemplate
Paths.GUIPopUpInput = Paths.GUIClonablePopUps.PopUpInput
Paths.GUIPopUpStartScreen = Paths.GUIClonablePopUps.StartScreen
if not FastFlags:useQWidgetsForPopupsOn() then
	Paths.GUIPopUpSubWindow = Paths.GUIClonablePopUps.SubWindow
end
Paths.GUIPopUpEasingOptions = Paths.GUIClonablePopUps.EasingOptions
Paths.GUIPopUpAnchorWarning = Paths.GUIClonablePopUps.AnchorWarning
Paths.GUIPopUpPoseOverwriteWarning = Paths.GUIClonablePopUps.PoseOverwriteWarning
if FastFlags:isScaleKeysOn() then
	Paths.GUIChangeDuration = Paths.GUIClonablePopUps.ChangeDuration
	Paths.GUINotificationTip = Paths.GUIClonablePopUps.NotificationTip
end
if FastFlags:isIKModeFlagOn() then
	Paths.GUIPopUpYesNo = Paths.GUIClonable.PopUps.PromptYesNo
	Paths.GUIPopUpWaitingDialog = Paths.GUIClonable.PopUps.WaitingBox
	Paths.GUIPopUpAlert = Paths.GUIClonable.PopUps.Alert
end
if FastFlags:isAnimationEventsOn() then
	if FastFlags:useQWidgetsForPopupsOn() then
		Paths.GUIPopUpManageEvents = Paths.GUIClonablePopUps.ManageEvents
		Paths.GUIPopUpEditAnimationEvents = Paths.GUIClonablePopUps.EditEvents
	else
		Paths.GUIPopUpManageEvents = Paths.GUIClonablePopUps.ManageEventsOld
		Paths.GUIPopUpEditAnimationEvents = Paths.GUIClonablePopUps.EditEventsOld
	end
end

function Paths:init()
	self.Globals = require(script.Parent.Globals)

	-- actions
	self.ActionScrollZoom = require(self.Actions.ActionScrollZoom)
	self.ActionEditClip = require(self.Actions.ActionEditClip)
	self.ActionShowContextMenu = require(self.Actions.ActionShowContextMenu)
	self.ActionEditPreference = require(self.Actions.ActionEditPreference)
	self.ActionEditLength = require(self.Actions.ActionEditLength)
	self.ActionMoveScrubber = require(self.Actions.ActionMoveScrubber)
	self.ActionPlay = require(self.Actions.ActionPlay)
	self.ActionPause = require(self.Actions.ActionPause)
	self.ActionToggleLooping = require(self.Actions.ActionToggleLooping)
	self.ActionNew = require(self.Actions.ActionNew)
	self.ActionImport = require(self.Actions.ActionImport)

	if FastFlags:isDebugStudioRigImporterFlagOn() then
		self.ActionImportFBXAnimation = require(self.Actions.ActionImportFBXAnimation)
	end

	self.ActionExport = require(self.Actions.ActionExport)
	self.ActionSetPriority = require(self.Actions.ActionSetPriority)
	self.ActionEditSnapIncrement = require(self.Actions.ActionEditSnapIncrement)
	self.ActionAddTimeAtCursor = require(self.Actions.ActionAddTimeAtCursor)
	self.ActionRemoveTimeAtCursor = require(self.Actions.ActionRemoveTimeAtCursor)
	self.ActionEditEasingOptions = require(self.Actions.ActionEditEasingOptions)
	self.ActionCut = require(self.Actions.ActionCut)
	self.ActionPaste = require(self.Actions.ActionPaste)
	self.ActionTogglePartInclude = require(self.Actions.ActionTogglePartInclude)
	self.ActionEditDisplayPrecision = require(self.Actions.ActionEditDisplayPrecision)
	self.ActionEditStepInterval = require(self.Actions.ActionEditStepInterval)
	self.ActionEditKeyframeName = require(self.Actions.ActionEditKeyframeName)
	self.ActionMove = require(self.Actions.ActionMove)
	if FastFlags:isScaleKeysOn() then
		self.ActionScale = require(self.Actions.ActionScale)
	end
	if FastFlags:isIKModeFlagOn() then
		self.ActionTogglePartPinned = require(self.Actions.ActionTogglePartPinned)
		self.ActionToggleIsIKModeActive = require(self.Actions.ActionToggleIsIKModeActive)
		self.ActionConstrainKeyData = require(self.Actions.ActionConstrainKeyData)
	end

	-- gui scrips
	self.GUIScripts = script.Parent.GUIScripts
	self.GUIScriptAnimationTarget = require(self.GUIScripts.GUIScriptAnimationTarget)
	self.GUIScriptMediaControls = require(self.GUIScripts.GUIScriptMediaControls)
	self.GUIScriptJointTimeline = require(self.GUIScripts.GUIScriptJointsTimeline)
	self.GUIScriptScrollingJointTimeline = require(self.GUIScripts.GUIScriptScrollingJointsTimeline)
	self.GUIScriptJoint = require(self.GUIScripts.GUIScriptJoint)
	self.GUIScriptKeyframe = require(self.GUIScripts.GUIScriptKeyframe)
	if not FastFlags:useQWidgetsForPopupsOn() then
		self.GUIScriptSubWindow = require(self.GUIScripts.GUIScriptSubWindow_deprecated)
	end
	self.GUIScriptNotchesDisplayArea = require(self.GUIScripts.GUIScriptNotchesDisplayArea)
	self.GUIScriptScrubberDisplayArea = require(self.GUIScripts.GUIScriptScrubberDisplayArea)
	self.GUIScriptScrollZoomControl = require(self.GUIScripts.GUIScriptScrollZoomControl)
	self.GUIScriptTopDropDownMenuBar = require(self.GUIScripts.GUIScriptTopDropDownMenuBar)
	self.GUIScriptLoad = require(self.GUIScripts.GUIScriptLoad)
	self.GUIScriptSave = require(self.GUIScripts.GUIScriptSave)
	self.GUIScriptWarningDialog = require(self.GUIScripts.GUIScriptWarningDialog)
	self.GUIScriptPoseOverwriteWarning = require(self.GUIScripts.GUIScriptPoseOverwriteWarning)
	self.GUIScriptPriority = require(self.GUIScripts.GUIScriptPriority)
	self.GUIScriptPromptOKCancel = require(self.GUIScripts.GUIScriptPromptOKCancel)
	self.GUIScriptTimelineMenu = require(self.GUIScripts.GUIScriptTimelineMenu)
	self.GUIScriptEasingOptions = require(self.GUIScripts.GUIScriptEasingOptions)
	self.GUIScriptToolTip = require(self.GUIScripts.GUIScriptToolTip)
	self.GUIScriptStartScreen = require(self.GUIScripts.GUIScriptStartScreen)
	self.GUIScriptPositionOrientationPanel = require(self.GUIScripts.GUIScriptPositionOrientationPanel)
	self.GUIScriptPartManipulator = require(self.GUIScripts.GUIScriptPartManipulator)
	self.GUIScriptPopUpInput = require(self.GUIScripts.GUIScriptPopUpInput)
	self.GUIScriptMultiSelectArea = require(self.GUIScripts.GUIScriptMultiSelectArea)
	self.GUIScriptIndicatorArea = require(self.GUIScripts.GUIScriptIndicatorArea)
	self.GUIScriptKeyframeIndicator = require(self.GUIScripts.GUIScriptKeyframeIndicator)

	if FastFlags:isAnimationEventsOn() then
		self.GUIScriptManageEvents = require(self.GUIScripts.GUIScriptManageEvents)
		self.GUIScriptManageEventOption = require(self.GUIScripts.GUIScriptManageEventOption)
		self.GUIScriptAnimationEventSwizzle = require(self.GUIScripts.GUIScriptAnimationEventSwizzle)
		self.GUIScriptEditAnimationEvents = require(self.GUIScripts.GUIScriptEditAnimationEvents)
		self.GUIScriptSelectionList = require(self.GUIScripts.GUIScriptSelectionList)
		self.GUIScriptKeyframeMarker = require(self.GUIScripts.GUIScriptKeyframeMarker)
		self.GUIScriptAnimationEventBar = require(self.GUIScripts.GUIScriptAnimationEventBar)
		self.GUIScriptAnimationEventMenu = require(self.GUIScripts.GUIScriptAnimationEventMenu)
	end

	if FastFlags:isScaleKeysOn() then
		self.GUIScriptScaleControls = require(self.GUIScripts.GUIScriptScaleControls)
		self.GUIScriptChangeDuration = require(self.GUIScripts.GUIScriptChangeDuration)
		self.GUIScriptNotificationTip = require(self.GUIScripts.GUIScriptNotificationTip)
	end

	if FastFlags:isIKModeFlagOn() then
		self.GUIScriptPromptYesNo = require(self.GUIScripts.GUIScriptPromptYesNo)
		self.GUIScriptWaitingDialog = require(self.GUIScripts.GUIScriptWaitingDialog)
		self.GUIScriptAlertMessage = require(self.GUIScripts.GUIScriptAlertMessage)
		self.GUIScriptViewportNotification = require(self.GUIScripts.GUIScriptViewportNotification)
		self.GUIScriptIKMenu = require(self.GUIScripts.GUIScriptIKMenu)
	end

	if FastFlags:useQWidgetsForPopupsOn() then
		self.GUIScriptQtWindow = require(self.GUIScripts.GUIScriptQtWindow)
	end

	-- helper functions
	self.HelperFunctionsCreation = require(self.HelperFunctions.HelperFunctionsCreation)

	self.HelperFunctionsIteration = require(self.HelperFunctions.HelperFunctionsIteration)
	self.HelperFunctionsMath = require(self.HelperFunctions.HelperFunctionsMath)
	self.HelperFunctionsTable = require(self.HelperFunctions.HelperFunctionsTable)
	self.HelperFunctionsWidget = require(self.HelperFunctions.HelperFunctionsWidget)
	if FastFlags:isIKModeFlagOn() then
		self.HelperFunctionsWarningsAndPrompts = require(self.HelperFunctions.HelperFunctionsWarningsAndPrompts)
	end

	-- widgets
	self.WidgetCheckbox = require(self.Widgets.WidgetCheckbox)
	self.WidgetCustomImageButton = require(self.Widgets.WidgetCustomImageButton)
	self.WidgetKillScreen = require(self.Widgets.WidgetKillScreen)
	self.WidgetMainMenu = require(self.Widgets.WidgetMainMenu)
	self.WidgetMenuOption = require(self.Widgets.WidgetMenuOption)
	self.WidgetRadioButtonGroup = require(self.Widgets.WidgetRadioButtonGroup)
	self.WidgetRadioButton = require(self.Widgets.WidgetRadioButton)
	self.WidgetSwizzle = require(self.Widgets.WidgetSwizzle)
	if FastFlags:isAnimationEventsOn() then
		self.WidgetExpandableScrollingList = require(self.Widgets.WidgetExpandableScrollingList)
		self.WidgetSelectAndDragBox = require(self.Widgets.WidgetSelectAndDragBox)
	end

	-- utility scripts
	self.UtilityScriptEvent = require(self.Utility.UtilityScriptEvent)
	self.UtilityScriptUndoRedo = require(self.Utility.UtilityScriptUndoRedo)
	self.UtilityScriptColors = require(self.Utility.UtilityScriptColors)
	self.UtilityScriptDisplayArea = require(self.Utility.UtilityScriptDisplayArea)
	self.UtilityScriptDrag = require(self.Utility.UtilityScriptDrag)
	self.UtilityScriptResize = require(self.Utility.UtilityScriptResize)
	self.UtilityScriptCopyPaste = require(self.Utility.UtilityScriptCopyPaste)
	self.UtilityScriptConnections = require(self.Utility.UtilityScriptConnections)
	self.UtilityScriptPose = require(self.Utility.UtilityScriptPose)
	self.UtilityScriptDataItem = require(self.Utility.UtilityScriptDataItem)
	self.UtilityScriptCustomDragHandles = require(self.Utility.UtilityScriptCustomDragHandles)
	self.UtilityScriptTween = require(self.Utility.UtilityScriptTween)
	self.UtilityScriptCallback = require(self.Utility.UtilityScriptCallback)
	if FastFlags:isAnimationEventsOn() then
		self.UtilityScriptMoveItems = require(self.Utility.UtilityScriptMoveItems)
	else
		self.UtilityScriptMoveItems = require(self.Utility.UtilityScriptMovePoses)
	end
	self.UtilityScriptTheme = require(self.Utility.UtilityScriptTheme)
	self.UtilityScriptThemeData = require(self.Utility.UtilityScriptThemeData)
	if FastFlags:isScaleKeysOn() then
		self.UtilityScriptScalePoses = require(self.Utility.UtilityScriptScalePoses)
	end
	if FastFlags:isIKModeFlagOn() then
		self.UtilityScriptHumanIK = require(self.Utility.UtilityScriptHumanIK)
	end
	if FastFlags:isAnimationEventsOn() then
		self.UtilityScriptKeyframeMarker = require(self.Utility.UtilityScriptKeyframeMarker)
	end

	-- input
	self.InputMouse = require(self.Input.InputMouse)
	self.InputKeyboard = require(self.Input.InputKeyboard)
	if FastFlags:isFlyCameraOn() then
		self.InputNavKeys = require(self.Input.InputNavKeys)
	end

	-- model
	self.DataModelRig = require(self.DataModels.DataModelRig)
	self.DataModelClip = require(self.DataModels.DataModelClip)
	self.DataModelPreferences = require(self.DataModels.DataModelPreferences)
	self.DataModelSession = require(self.DataModels.DataModelSession)
	self.DataModelKeyframes = require(self.DataModels.DataModelKeyframes)
	self.DataModelPlayState = require(self.DataModels.DataModelPlayState)
	self.DataModelPartManipulator = require(self.DataModels.DataModelPartManipulator)
	self.DataModelIKManipulator = require(self.DataModels.DataModelIKManipulator)
	if FastFlags:isAnimationEventsOn() then
		self.DataModelAnimationEvents = require(self.DataModels.DataModelAnimationEvents)
	end

	self.ViewportScriptGrid = require(Paths.ViewportScripts.ViewportScriptGrid)
	if FastFlags:isFlyCameraOn() then
		self.ViewportScriptFlyCamera = require(Paths.ViewportScripts.ViewportScriptFlyCamera)
	end
end

function Paths:cacheGUIPaths(gui)
	self.GUI = gui
	self.GUIMain = self.GUI.Main

	if FastFlags:useQWidgetsForPopupsOn() then
		self.GUIDarkCover = self.GUI.DarkCover
	end
	self.GUIDragArea = self.GUI.DragAreaVersionParentScaled
	self.GUIMediaControls = self.GUIMain.MediaControlsAndTimelineHeader.MediaControls
	self.GUIScrollingJointTimeline = self.GUIMain.ScrollingJointsTimeline
	self.GUIJointsTimeline = self.GUIScrollingJointTimeline.JointsTimeline
	self.GUINotchesDisplayArea = self.GUIMain.MediaControlsAndTimelineHeader.TimelineHeader.DisplayArea.NotchesDisplayArea
	self.GUIScrubberDisplayArea = self.GUIMain.MediaControlsAndTimelineHeader.TimelineHeader.DisplayArea.ScrubberDisplayArea
	self.GUIZoomControls = self.GUIMain.PosOriPopUpAndZoomControls.ZoomControls
	self.GUITopDropDownMenuBar = self.GUIMain.TopDropDownMenuBar
	self.GUIPositionOrientationPanel = self.GUIMain.PosOriPopUpAndZoomControls.PositionOrientationPanel
	self.GUIAnimationTarget = self.GUIJointsTimeline.AnimationTargetAndDivider.AnimationTarget
	self.GUIIndicatorArea = self.GUIAnimationTarget.Parent.Divider.DisplayArea.IndicatorArea
	if FastFlags:isScaleKeysOn() then
		self.GUIScaleControls = self.GUI.ScaleControls
	end
	if FastFlags:isAnimationEventsOn() then
		self.GUIAnimationEventBar = self.GUIMain.AnimationEventBar
		self.GUIEventArea = self.GUIAnimationEventBar.Divider.DisplayArea.EventArea
		if FastFlags:isSelectEventsOnEdgeOn() then
			self.GUIEventMultiSelectBox = self.GUIEventArea.Parent.Parent.MultiSelectBox
		else
			self.GUIEventMultiSelectBox = self.GUIEventArea.MultiSelectBox
		end
	end

	self.GUIPopUps = self.GUI.PopUps
	self.GUITimelineMenu = self.GUIPopUps.TimelineMenu
	self.GUIToolTip = self.GUIPopUps.ToolTip
	self.GUIMultiSelectArea = self.GUIScrollingJointTimeline.MultiSelectArea
	if FastFlags:isIKModeFlagOn() then
		self.GUIIKMenu = self.GUIPopUps.IKMenu
	end
	if FastFlags:isAnimationEventsOn() then
		self.GUIAnimationEventMenu = self.GUIPopUps.AnimationEventMenu
	end
end

return Paths
