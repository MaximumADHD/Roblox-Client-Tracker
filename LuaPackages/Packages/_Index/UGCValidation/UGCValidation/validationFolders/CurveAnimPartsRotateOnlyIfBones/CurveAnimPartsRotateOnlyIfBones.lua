local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local CurveAnimationHierarchyUtils = require(root.util.CurveAnimationHierarchyUtils)
local CurveAnimBoneHierarchyUtils = require(root.util.CurveAnimBoneHierarchyUtils)

local getFFlagUGCValidateEmotesBonesAllowed = require(root.flags.getFFlagUGCValidateEmotesBonesAllowed)
local getFFlagUGCValidateAnimPartsRotationOnly = require(root.flags.getFFlagUGCValidateAnimPartsRotationOnly)
local getFFlagUGCValidationAnimationPackSupport = require(root.flags.getFFlagUGCValidationAnimationPackSupport)

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

local function bodyPartPositionHasKeyframes(bodyPartFolder: Folder): boolean
	local pos = bodyPartFolder:FindFirstChild("Position")
	if not pos or not pos:IsA("Vector3Curve") then
		return false
	end
	for _, axis in { "X", "Y", "Z" } do
		local floatCurve = pos:FindFirstChild(axis)
		if floatCurve and floatCurve:IsA("FloatCurve") and #(floatCurve :: FloatCurve):GetKeys() > 0 then
			return true
		end
	end
	return false
end

CurveAnimPartsRotateOnlyIfBones.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local isAnimationCategory = getFFlagUGCValidateAnimPartsRotationOnly()
		and data.uploadCategory == ValidationEnums.UploadCategory.ANIMATION

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
				if bodyPartPositionHasKeyframes(desc) then
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

return CurveAnimPartsRotateOnlyIfBones :: Types.ValidationModule
