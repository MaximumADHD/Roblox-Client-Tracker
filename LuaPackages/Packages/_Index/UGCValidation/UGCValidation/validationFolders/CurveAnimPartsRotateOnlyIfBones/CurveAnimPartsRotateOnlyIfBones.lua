local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local CurveAnimationHierarchyUtils = require(root.util.CurveAnimationHierarchyUtils)
local CurveAnimBoneHierarchyUtils = require(root.util.CurveAnimBoneHierarchyUtils)
local CurveAnimTranslationUtils = require(root.util.CurveAnimTranslationUtils)

local getFFlagUGCValidateEmotesBonesAllowed = require(root.flags.getFFlagUGCValidateEmotesBonesAllowed)
local getFFlagUGCValidateAnimPartsRotationOnly = require(root.flags.getFFlagUGCValidateAnimPartsRotationOnly)
local getFFlagUGCValidationAnimationPackSupport = require(root.flags.getFFlagUGCValidationAnimationPackSupport)
local getFFlagUGCValidateAnimTranslationThreshold = require(root.flags.getFFlagUGCValidateAnimTranslationThreshold)
local FIntUGCValidateBodyPartTranslationMaxDistanceHundredths =
	game:DefineFastInt("UGCValidateBodyPartTranslationMaxDistanceHundredths", 50)

local CurveAnimPartsRotateOnlyIfBones = {}

CurveAnimPartsRotateOnlyIfBones.categories = { ValidationEnums.UploadCategory.EMOTE_ANIMATION }
if getFFlagUGCValidateAnimPartsRotationOnly() and getFFlagUGCValidationAnimationPackSupport() then
	table.insert(CurveAnimPartsRotateOnlyIfBones.categories, ValidationEnums.UploadCategory.ANIMATION)
end
CurveAnimPartsRotateOnlyIfBones.requiredData = {
	ValidationEnums.SharedDataMember.curveAnimations,
}
if getFFlagUGCValidateAnimPartsRotationOnly() then
	CurveAnimPartsRotateOnlyIfBones.conditionalData = {}
else
	CurveAnimPartsRotateOnlyIfBones.conditionalData = { ValidationEnums.SharedDataMember.curveAnimBoneData }
end
CurveAnimPartsRotateOnlyIfBones.fflag = function()
	return getFFlagUGCValidateEmotesBonesAllowed() or getFFlagUGCValidateAnimPartsRotationOnly()
end
CurveAnimPartsRotateOnlyIfBones.expectedFailures = {}
CurveAnimPartsRotateOnlyIfBones.prereqTests = { ValidationEnums.ValidationModule.CurveAnimDataAvailable }

CurveAnimPartsRotateOnlyIfBones.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local isAnimationCategory = getFFlagUGCValidateAnimPartsRotationOnly()
		and data.uploadCategory == ValidationEnums.UploadCategory.ANIMATION
	local maxDistance = FIntUGCValidateBodyPartTranslationMaxDistanceHundredths / 100

	for _, inst in data.curveAnimations do
		local curveAnim = inst :: CurveAnimation

		if not isAnimationCategory then
			local hasBones = false
			for _, desc in curveAnim:GetDescendants() do
				if desc:IsA("Folder") and CurveAnimBoneHierarchyUtils.isBoneFolderName(desc.Name) then
					hasBones = true
					break
				end
			end
			if not hasBones then
				continue
			end
		end

		for _, desc in curveAnim:GetDescendants() do
			if desc:IsA("Folder") and CurveAnimationHierarchyUtils.isBodyPartFolderNameValid(desc.Name) then
				if getFFlagUGCValidateAnimTranslationThreshold() then
					local exceeds, distance = CurveAnimTranslationUtils.translationExceedsThreshold(desc, maxDistance)
					if exceeds then
						reporter:fail(ErrorSourceStrings.Keys.CurveAnim_BodyPartTranslationExceedsThreshold, {
							bodyPartName = desc.Name,
							distance = string.format("%.3f", distance),
							maxDistance = string.format("%.3f", maxDistance),
						})
					end
				else
					if CurveAnimTranslationUtils.positionHasKeyframes(desc) then
						if isAnimationCategory then
							reporter:fail(ErrorSourceStrings.Keys.CurveAnim_BodyPartHasPosition, {
								bodyPartName = desc.Name,
							})
						else
							reporter:fail(ErrorSourceStrings.Keys.CurveAnim_BodyPartWithBoneHasPosition, {
								bodyPartName = desc.Name,
							})
						end
					end
				end
			end
		end
	end
end

return CurveAnimPartsRotateOnlyIfBones :: Types.ValidationModule
