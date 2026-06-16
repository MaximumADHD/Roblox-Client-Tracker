local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local CurveAnimationHierarchyUtils = require(root.util.CurveAnimationHierarchyUtils)
local CurveAnimBoneHierarchyUtils = require(root.util.CurveAnimBoneHierarchyUtils)

local getFFlagUGCValidateEmotesBonesAllowed = require(root.flags.getFFlagUGCValidateEmotesBonesAllowed)

local CurveAnimBonesHaveValidNames = {}

CurveAnimBonesHaveValidNames.categories = { ValidationEnums.UploadCategory.EMOTE_ANIMATION }
CurveAnimBonesHaveValidNames.requiredData = {
	ValidationEnums.SharedDataMember.curveAnimations,
}
CurveAnimBonesHaveValidNames.conditionalData = { ValidationEnums.SharedDataMember.curveAnimBoneData }
CurveAnimBonesHaveValidNames.fflag = getFFlagUGCValidateEmotesBonesAllowed
CurveAnimBonesHaveValidNames.expectedFailures = {}
CurveAnimBonesHaveValidNames.prereqTests = { ValidationEnums.ValidationModule.CurveAnimDataAvailable }

CurveAnimBonesHaveValidNames.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	for _, inst in data.curveAnimations do
		local curveAnim = inst :: CurveAnimation
		for _, desc in curveAnim:GetDescendants() do
			if not desc:IsA("Folder") then
				continue
			end

			local hasAnimationTracks = CurveAnimationHierarchyUtils.folderHasAnimationTracks(desc)
			local isRecognizedBodyPart = CurveAnimationHierarchyUtils.isBodyPartFolderNameValid(desc.Name)
			local isRecognizedBone = CurveAnimBoneHierarchyUtils.isBoneFolderName(desc.Name)

			if hasAnimationTracks and not isRecognizedBodyPart and not isRecognizedBone then
				reporter:fail(ErrorSourceStrings.Keys.CurveAnim_InvalidBoneName, {
					boneName = desc.Name,
				})
			end
		end
	end
end

return CurveAnimBonesHaveValidNames :: Types.ValidationModule
