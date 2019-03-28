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

function FastFlags:isUsePluginBindToCloseOn()
	return isFlagOn("StudioAnimationEditorUsePluginBindToClose2") and self:useQWidgetsForPopupsOn()
end

function FastFlags:isRightClickAddKeyFixOn()
	return isFlagOn("StudioAnimationEditorRightClickAddKeyFix")
end

function FastFlags:isPartIncludeFixOn()
	return isFlagOn("StudioAnimationEditorPartIncludeFix")
end

function FastFlags:isFixRenameKeyOptionOn()
	return isFlagOn("StudioAnimationEditorFixRenameKeyOption2")
end

function FastFlags:isUseNewThemeAPIOn()
	return isFlagOn("StudioAnimationEditorUseNewThemeAPIV2")
end

function FastFlags:isUseAnimationNameAsTitleOn()
	return isFlagOn("StudioAnimationEditorUseAnimationNameAsTitle")
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

function FastFlags:isStudioFbxAnimationImportEnabled()
	return isFlagOn("StudioEnableFbxAnimationImport")
end

function FastFlags:isUseDevHubHelpLinksOn()
	return isFlagOn("StudioAnimationEditorUseDevHubHelpLinks2")
end

function FastFlags:isFixResetJointOn()
	return isFlagOn("StudioAnimationEditorFixResetJoint")
end

function FastFlags:isImportAndExportFixOn()
	return isFlagOn("StudioAnimationEditorImportAndExportFix")
end

function FastFlags:isAutoAddBeginningKeyframeOn()
	return isFlagOn("StudioAnimationEditorAutoAddBeginningKeyframe")
end

function FastFlags:isUseRigNameForPromptsOn()
	return isFlagOn("StudioAnimationEditorUseRigNameForPrompts")
end

function FastFlags:isSelectAndDragOn()
	return isFlagOn("StudioAnimationEditorSelectAndDrag")
end

function FastFlags:isLockedPartStaysAnimatableOn()
	return isFlagOn("StudioAnimationEditorLockedPartStaysAnimatable")
end

function FastFlags:isUseHipHeightInKeyframeSequencesOn()
	return isFlagOn("UseHipHeightInKeyframeSequences2")
end

function FastFlags:clearIKOnNew()
	return isFlagOn("StudioAnimationEditorFixClearIKOnNew")
end

function FastFlags:isFlyCameraOn()
	return isFlagOn("StudioAnimationEditorFlyCamera")
end

function FastFlags:fixIKWarning()
	return isFlagOn("StudioAnimationEditorFixIKWarning")
end

function FastFlags:fixFullBodyIKPinning()
	return isFlagOn("StudioAnimationEditorFixFullBodyIKPinning")
end

function FastFlags:fixJointSelectionInputSinking()
	return isFlagOn("StudioAnimationEditorFixJointSelectionInputSinking")
end

function FastFlags:fixKeyframeScaleHandlesPositioning()
	return isFlagOn("StudioAnimationEditorFixKeyframeScaleHandlesPositioning")
end

function FastFlags:isAnimationEventsOn()
	return isFlagOn("UseKeyframeMarkersForEvents2")
end

function FastFlags:isFixSubWindowsOn()
	return isFlagOn("StudioAnimationEditorFixSubWindows")
end

function FastFlags:useQWidgetsForPopupsOn()
	return isFlagOn("StudioAnimationEditorUseQWidgetsForPopups")
end

function FastFlags:isSelectEventsOnEdgeOn()
	return isFlagOn("StudioAnimationEditorSelectEventsOnEdge")
end

function FastFlags:supportExplicitJointsMode()
	return isFlagOn("StudioAnimationEditorSupportExplicitJointsMode") and self:fixFullBodyIKPinning()
end

function FastFlags:isFixIKWhileLockedOn()
	return isFlagOn("StudioAnimationEditorFixIKWhileLocked2")
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

return FastFlags