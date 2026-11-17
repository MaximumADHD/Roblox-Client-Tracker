local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local CurveAnimationHierarchyUtils = require(root.util.CurveAnimationHierarchyUtils)
local CurveAnimBoneHierarchyUtils = require(root.util.CurveAnimBoneHierarchyUtils)
local CurveAnimTranslationUtils = require(root.util.CurveAnimTranslationUtils)

local FIntUGCValidateBodyPartTranslationMaxDistanceHundredths =
	game:DefineFastInt("UGCValidateBodyPartTranslationMaxDistanceHundredths", 100)
local FIntUGCValidateLowerTorsoTranslationMaxDistanceHundredths =
	game:DefineFastInt("UGCValidateLowerTorsoTranslationMaxDistanceHundredths", 200)

local CurveAnimPartsRotateOnlyIfBones = {}

CurveAnimPartsRotateOnlyIfBones.categories =
	{ ValidationEnums.UploadCategory.EMOTE_ANIMATION, ValidationEnums.UploadCategory.ANIMATION }
CurveAnimPartsRotateOnlyIfBones.requiredData = {
	ValidationEnums.SharedDataMember.curveAnimations,
}
CurveAnimPartsRotateOnlyIfBones.conditionalData = {}
CurveAnimPartsRotateOnlyIfBones.expectedFailures = {}
CurveAnimPartsRotateOnlyIfBones.prereqTests = { ValidationEnums.ValidationModule.CurveAnimDataAvailable }

CurveAnimPartsRotateOnlyIfBones.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local isAnimationCategory = data.uploadCategory == ValidationEnums.UploadCategory.ANIMATION

	local generalMaxDistance = FIntUGCValidateBodyPartTranslationMaxDistanceHundredths / 100
	local lowerTorsoMaxDistance = FIntUGCValidateLowerTorsoTranslationMaxDistanceHundredths / 100

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
				local maxDistance = if desc.Name == "LowerTorso" then lowerTorsoMaxDistance else generalMaxDistance
				local exceeds, distance = CurveAnimTranslationUtils.translationExceedsThreshold(desc, maxDistance)
				if exceeds then
					reporter:fail(ErrorSourceStrings.Keys.CurveAnim_BodyPartTranslationExceedsThreshold, {
						bodyPartName = desc.Name,
						distance = string.format("%.3f", distance),
						maxDistance = string.format("%.3f", maxDistance),
					})
				end
			end
		end
	end
end

return CurveAnimPartsRotateOnlyIfBones :: Types.ValidationModule
