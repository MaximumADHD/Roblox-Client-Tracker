local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local CurveAnimBoneHierarchyUtils = require(root.util.CurveAnimBoneHierarchyUtils)

local getFFlagUGCValidateEmotesBonesAllowed = require(root.flags.getFFlagUGCValidateEmotesBonesAllowed)

local CurveAnimBonesRotationOnly = {}

CurveAnimBonesRotationOnly.categories = { ValidationEnums.UploadCategory.EMOTE_ANIMATION }
CurveAnimBonesRotationOnly.requiredData = {
	ValidationEnums.SharedDataMember.curveAnimations,
}
CurveAnimBonesRotationOnly.conditionalData = { ValidationEnums.SharedDataMember.curveAnimBoneData }
CurveAnimBonesRotationOnly.fflag = getFFlagUGCValidateEmotesBonesAllowed
CurveAnimBonesRotationOnly.expectedFailures = {}
CurveAnimBonesRotationOnly.prereqTests = { ValidationEnums.ValidationModule.CurveAnimDataAvailable }

local function bonePositionHasKeyframes(boneFolder: Folder): boolean
	local pos = boneFolder:FindFirstChild("Position")
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

CurveAnimBonesRotationOnly.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	for _, inst in data.curveAnimations do
		local curveAnim = inst :: CurveAnimation
		for _, desc in curveAnim:GetDescendants() do
			if desc:IsA("Folder") and CurveAnimBoneHierarchyUtils.isBoneFolderName(desc.Name) then
				if bonePositionHasKeyframes(desc) then
					reporter:fail(ErrorSourceStrings.Keys.CurveAnim_BonePositionNotAllowed, {
						boneName = desc.Name,
					})
				end
			end
		end
	end
end

return CurveAnimBonesRotationOnly :: Types.ValidationModule
