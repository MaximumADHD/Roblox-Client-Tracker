local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local CurveAnimationHierarchyUtils = require(root.util.CurveAnimationHierarchyUtils)

local getFFlagUGCValidateMigrateCurveAnim = require(root.flags.getFFlagUGCValidateMigrateCurveAnim)
local getFFlagUGCValidateDuplicatesInAnimation = require(root.flags.getFFlagUGCValidateDuplicatesInAnimation)
local getFFlagUGCValidationAnimationPackSupport = require(root.flags.getFFlagUGCValidationAnimationPackSupport)

local CurveAnimJointsManipulated = {}

CurveAnimJointsManipulated.categories = { ValidationEnums.UploadCategory.EMOTE_ANIMATION }
if getFFlagUGCValidationAnimationPackSupport() then
	table.insert(CurveAnimJointsManipulated.categories, ValidationEnums.UploadCategory.ANIMATION)
end
CurveAnimJointsManipulated.requiredData = {
	ValidationEnums.SharedDataMember.curveAnimations,
}
CurveAnimJointsManipulated.fflag = getFFlagUGCValidateMigrateCurveAnim
CurveAnimJointsManipulated.expectedFailures = {}
CurveAnimJointsManipulated.prereqTests = { ValidationEnums.ValidationModule.CurveAnimDataAvailable }

CurveAnimJointsManipulated.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	for _, inst in data.curveAnimations do
		local curveAnim = inst :: CurveAnimation
		local instancesToCheck = nil
		if getFFlagUGCValidateDuplicatesInAnimation() then
			local bodyPartFolderRootOpt = CurveAnimationHierarchyUtils.getBodyPartFolderRoot(curveAnim)
			if not bodyPartFolderRootOpt then
				reporter:fail(ErrorSourceStrings.Keys.CurveAnim_NoJointManipulation)
				return
			end
			local bodyPartFolderRoot = bodyPartFolderRootOpt :: Folder

			instancesToCheck = bodyPartFolderRoot:GetDescendants()
			table.insert(instancesToCheck, bodyPartFolderRoot)
		else
			instancesToCheck = curveAnim:GetDescendants()
		end
		local found = false
		for _, desc in instancesToCheck do
			if desc:IsA("Folder") then
				if CurveAnimationHierarchyUtils.getBodyPartToParentMap()[desc.Name] then
					local pos = desc:FindFirstChild("Position")
					local rot = desc:FindFirstChild("Rotation")
					if pos and pos:IsA("Vector3Curve") and rot and rot:IsA("EulerRotationCurve") then
						found = true
						break
					end
				end
			end
		end
		if not found then
			reporter:fail(ErrorSourceStrings.Keys.CurveAnim_NoJointManipulation)
			return
		end
	end
end

return CurveAnimJointsManipulated :: Types.ValidationModule
