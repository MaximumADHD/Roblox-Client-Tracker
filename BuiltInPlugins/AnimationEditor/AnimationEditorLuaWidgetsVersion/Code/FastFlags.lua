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
	return isFlagOn("StudioAnimationEditorUsePluginBindToClose")
end

function FastFlags:isPartIncludeFixOn()
	return isFlagOn("StudioAnimationEditorPartIncludeFix")
end

function FastFlags:isUseNewThemeAPIOn()
	return isFlagOn("StudioAnimationEditorUseNewThemeAPIV2")
end

function FastFlags:isUseAnimationNameAsTitleOn()
	return isFlagOn("StudioAnimationEditorUseAnimationNameAsTitle")
end

function FastFlags:isIKModeFlagOn()
	return isFlagOn("StudioAnimationEditorIKMode") and self:isScaleKeysOn() and self:isScrubbingPlayingMatchFlagOn()
end

function FastFlags:isScaleKeysOn()
	return isFlagOn("StudioAnimationEditorScaleKeys")
end

function FastFlags:isParentScaledDragAreaEnabled()
	return isFlagOn("StudioAnimationEditorParentScaledDragArea")
end

function FastFlags:isAnimationEditorRenameKeyFrameFlagOn()
	return isFlagOn("AnimationEditorRenameKeyFrame")
end

function FastFlags:isAnimationEditorMaxLengthRestrictionFlagOn()
	return isFlagOn("AnimationEditorMaxLengthRestriction")
end

function FastFlags:isScrubbingPlayingMatchFlagOn()
	return isFlagOn("AnimationEditorScrubbingPlayingMatch")
end

function FastFlags:isResetLockedJointsFlagOn()
	return isFlagOn("StudioAnimationEditorResetLockedJoints")
end

function FastFlags:isNewWikiDocumentationFlagOn()
	return isFlagOn("AnimationEditorNewWikiDocumentation")
end

function FastFlags:isDefinedBoundaryNotchesFlagOn()
	return isFlagOn("StudioAnimationEditorDefinedBoundaryNotches")
end

function FastFlags:isDebugStudioRigImporterFlagOn()
	return isFlagOn("DebugStudioRigImporter")
end

return FastFlags