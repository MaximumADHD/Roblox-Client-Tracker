-- singleton

local FastFlags = {}

FastFlags.FlagExists = {}
FastFlags.FlagValue = {}

local function isFlagOn(theFlag)
	if nil == FastFlags.FlagExists[theFlag] then
		local status, result = pcall(function () return settings():GetFFlag(theFlag) end)
		FastFlags.FlagExists[theFlag] = status
		if status then
			FastFlags.FlagValue[theFlag] = result
		end
	end
	return FastFlags.FlagExists[theFlag] and FastFlags.FlagValue[theFlag]
end

function FastFlags:isFixRigBugsOn()
	return isFlagOn("StudioAnimationEditorFixRigBugs")
end

function FastFlags:isUsePluginBindToCloseOn()
	return isFlagOn("StudioAnimationEditorUsePluginBindToClose2") and self:useQWidgetsForPopupsOn()
end

function FastFlags:isFixRenameKeyOptionOn()
	return isFlagOn("StudioAnimationEditorFixRenameKeyOption2")
end

function FastFlags:isIKModeFlagOn()
	return isFlagOn("StudioAnimationEditorIKMode") and self:isScaleKeysOn()
end

function FastFlags:isScaleKeysOn()
	return isFlagOn("StudioAnimationEditorScaleKeys")
end

function FastFlags:isDebugStudioRigImporterFlagOn()
	return isFlagOn("DebugStudioRigImporter")
end

function FastFlags:isAutoAddBeginningKeyframeOn()
	return isFlagOn("StudioAnimationEditorAutoAddBeginningKeyframe")
end

function FastFlags:isFixInterpolationSettingOn()
	return isFlagOn("StudioAnimationEditorFixInterpolationSetting")
end

function FastFlags:isLockedPartStaysAnimatableOn()
	return isFlagOn("StudioAnimationEditorLockedPartStaysAnimatable")
end

function FastFlags:isUseHipHeightInKeyframeSequencesOn()
	return isFlagOn("UseHipHeightInKeyframeSequences2")
end

function FastFlags:isAnimationEventsOn()
	return isFlagOn("UseKeyframeMarkersForEvents2")
end

function FastFlags:useQWidgetsForPopupsOn()
	return isFlagOn("StudioAnimationEditorUseQWidgetsForPopups")
end

function FastFlags:isSelectEventsOnEdgeOn()
	return isFlagOn("StudioAnimationEditorSelectEventsOnEdge")
end

function FastFlags:isFixAnimationsWithLongNamesOn()
	return isFlagOn("StudioAnimationEditorFixAnimationsWithLongNames") and FastFlags:useQWidgetsForPopupsOn()
end

function FastFlags:isFixScalingBarPositionOn() 
	return isFlagOn("StudioAnimationEditorFixScalingBarPosition")
end

function FastFlags:isEnableRigSwitchingOn()
	return isFlagOn("StudioAnimationEditorEnableRigSwitching2") and self:useQWidgetsForPopupsOn()
end

function FastFlags:isCheckForSavedChangesOn()
	return isFlagOn("StudioAnimationEditorCheckForSavedChanges")
end

function FastFlags:isFixEventTooltipsOn()
	return isFlagOn("StudioAnimationEditorFixEventsTooltips")
end

function FastFlags:isDoNotRunInPlayModeOn()
	return isFlagOn("DoNotRunAnimationEditorInPlayMode")
end

function FastFlags:isFixIKBodyPartModeOn()
	return isFlagOn("StudioAnimationEditorFixIKBodyPartMode2")
end

function FastFlags:isOptimizationsEnabledOn()
	return isFlagOn("StudioAnimationEdtiorOptimizationsEnabled2")
end

function FastFlags:isClearEventNamesOn()
	return isFlagOn("StudioAnimationEditorClearEventNames")
end

function FastFlags:isKeepClipboardAfterMoveOn()
	return isFlagOn("StudioAnimationEditorKeepClipboardAfterMove")
end

function FastFlags:isContinueScrollingWithSelectionAreaOn()
	return isFlagOn("StudioAnimationEditorContinueScrollingWithSelectionArea")
end

function FastFlags:isFixWorldSpaceJointPanelOn()
	return isFlagOn("StudioAnimationEditorFixWorldSpaceJointPanel")
end

function FastFlags:isFixRigSelectionOn()
	return isFlagOn("StudioAnimationEditorFixRigSelection")
end

function FastFlags:isShiftSelectJointsOn()
	return isFlagOn("StudioAnimationEditorShiftSelectJointsOn")
end

function FastFlags:isAdjustHumanoidRootPartToHipPositionOn()
	return isFlagOn("UserAdjustHumanoidRootPartToHipPosition")
end

function FastFlags:isHipHeightPopFixOn()
	return isFlagOn("StudioAnimationEditorHipHeightPopFix")
end

function FastFlags:isPlayPauseSpaceHotkeyEnabled()
	return isFlagOn("StudioAnimationEditorPlayPauseHotkey")
end

function FastFlags:isEnableRoactAnimationEditorOn()
	return isFlagOn("EnableRoactAnimationEditor")
end

return FastFlags