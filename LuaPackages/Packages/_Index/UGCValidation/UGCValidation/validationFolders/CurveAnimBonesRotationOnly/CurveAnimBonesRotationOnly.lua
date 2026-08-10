local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local CurveAnimBoneHierarchyUtils = require(root.util.CurveAnimBoneHierarchyUtils)
local CurveAnimTranslationUtils = require(root.util.CurveAnimTranslationUtils)

local getFFlagUGCValidateEmotesBonesAllowed = require(root.flags.getFFlagUGCValidateEmotesBonesAllowed)
local getFFlagUGCValidateAnimBonesSupport = require(root.flags.getFFlagUGCValidateAnimBonesSupport)
local getFFlagUGCValidationAnimationPackSupport = require(root.flags.getFFlagUGCValidationAnimationPackSupport)
local getFFlagUGCValidateAnimTranslationThreshold = require(root.flags.getFFlagUGCValidateAnimTranslationThreshold)
local FIntUGCValidateBoneTranslationMaxDistanceHundredths =
	game:DefineFastInt("UGCValidateBoneTranslationMaxDistanceHundredths", 50)

local CurveAnimBonesRotationOnly = {}

CurveAnimBonesRotationOnly.categories = { ValidationEnums.UploadCategory.EMOTE_ANIMATION }
if getFFlagUGCValidateAnimBonesSupport() and getFFlagUGCValidationAnimationPackSupport() then
	table.insert(CurveAnimBonesRotationOnly.categories, ValidationEnums.UploadCategory.ANIMATION)
end
CurveAnimBonesRotationOnly.requiredData = {
	ValidationEnums.SharedDataMember.curveAnimations,
}
CurveAnimBonesRotationOnly.conditionalData = { ValidationEnums.SharedDataMember.curveAnimBoneData }
CurveAnimBonesRotationOnly.fflag = function()
	return getFFlagUGCValidateEmotesBonesAllowed() or getFFlagUGCValidateAnimBonesSupport()
end
CurveAnimBonesRotationOnly.expectedFailures = {}
CurveAnimBonesRotationOnly.prereqTests = { ValidationEnums.ValidationModule.CurveAnimDataAvailable }

CurveAnimBonesRotationOnly.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local maxDistance = FIntUGCValidateBoneTranslationMaxDistanceHundredths / 100

	for _, inst in data.curveAnimations do
		local curveAnim = inst :: CurveAnimation
		for _, desc in curveAnim:GetDescendants() do
			if desc:IsA("Folder") and CurveAnimBoneHierarchyUtils.isBoneFolderName(desc.Name) then
				if getFFlagUGCValidateAnimTranslationThreshold() then
					local exceeds, distance = CurveAnimTranslationUtils.translationExceedsThreshold(desc, maxDistance)
					if exceeds then
						reporter:fail(ErrorSourceStrings.Keys.CurveAnim_BoneTranslationExceedsThreshold, {
							boneName = desc.Name,
							distance = string.format("%.3f", distance),
							maxDistance = string.format("%.3f", maxDistance),
						})
					end
				else
					if CurveAnimTranslationUtils.positionHasKeyframes(desc) then
						reporter:fail(ErrorSourceStrings.Keys.CurveAnim_BonePositionNotAllowed, {
							boneName = desc.Name,
						})
					end
				end
			end
		end
	end
end

return CurveAnimBonesRotationOnly :: Types.ValidationModule
