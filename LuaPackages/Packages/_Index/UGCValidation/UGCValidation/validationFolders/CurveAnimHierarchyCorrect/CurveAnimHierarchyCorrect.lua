local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local CurveAnimationHierarchyUtils = require(root.util.CurveAnimationHierarchyUtils)

local getFFlagUGCValidateMigrateCurveAnim = require(root.flags.getFFlagUGCValidateMigrateCurveAnim)
local getFFlagUGCValidateDuplicatesInAnimation = require(root.flags.getFFlagUGCValidateDuplicatesInAnimation)
local getFFlagUGCValidateMaxTotalInstances = require(root.flags.getFFlagUGCValidateMaxTotalInstances)
local getFFlagUGCValidationAnimationPackSupport = require(root.flags.getFFlagUGCValidationAnimationPackSupport)

local CurveAnimHierarchyCorrect = {}

CurveAnimHierarchyCorrect.categories = { ValidationEnums.UploadCategory.EMOTE_ANIMATION }
if getFFlagUGCValidationAnimationPackSupport() then
	table.insert(CurveAnimHierarchyCorrect.categories, ValidationEnums.UploadCategory.ANIMATION)
end
CurveAnimHierarchyCorrect.requiredData = {
	ValidationEnums.SharedDataMember.curveAnimations,
}
CurveAnimHierarchyCorrect.fflag = getFFlagUGCValidateMigrateCurveAnim
CurveAnimHierarchyCorrect.expectedFailures = {}
CurveAnimHierarchyCorrect.prereqTests = { ValidationEnums.ValidationModule.CurveAnimDataAvailable }

CurveAnimHierarchyCorrect.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	for _, inst in data.curveAnimations do
		local numDescendants = #inst:GetDescendants()
		if numDescendants > getFFlagUGCValidateMaxTotalInstances() then
			reporter:fail(ErrorSourceStrings.Keys.CurveAnim_TooManyDescendants, {
				count = tostring(numDescendants),
				maxAllowed = tostring(getFFlagUGCValidateMaxTotalInstances()),
			})
			return
		end

		local curveAnim = inst :: CurveAnimation

		local numRoots = 0
		for _, child in curveAnim:GetChildren() do
			if child:IsA("Folder") and CurveAnimationHierarchyUtils.isBodyPartFolderNameValid(child.Name) then
				numRoots += 1
				if numRoots > 1 then
					reporter:fail(ErrorSourceStrings.Keys.CurveAnim_MultipleBodyRoots)
					return
				end
			end
		end

		if getFFlagUGCValidateDuplicatesInAnimation() then
			if numRoots == 0 then
				reporter:fail(ErrorSourceStrings.Keys.CurveAnim_NoBodyRoot)
				return
			end
		end

		for _, child in curveAnim:GetChildren() do
			if child:IsA("MarkerCurve") or child:IsA("AnimationRigData") then
				if getFFlagUGCValidateDuplicatesInAnimation() then
					if #child:GetChildren() > 0 then
						reporter:fail(ErrorSourceStrings.Keys.CurveAnim_ChildrenOnMarkerOrRig)
						return
					end
				end
				continue
			end

			if child:IsA("Folder") then
				if getFFlagUGCValidateDuplicatesInAnimation() then
					if not CurveAnimationHierarchyUtils.isBodyPartFolderNameValid(child.Name) then
						reporter:fail(ErrorSourceStrings.Keys.CurveAnim_UnexpectedChild, {
							childName = child.Name,
						})
						return
					end

					if not CurveAnimationHierarchyUtils.validateCurveAnimationBodyPartFolder(child :: Folder) then
						reporter:fail(ErrorSourceStrings.Keys.CurveAnim_InvalidBodyPartHierarchy, {
							folderName = child.Name,
						})
						return
					end
				else
					if not CurveAnimationHierarchyUtils.validateCurveAnimationBodyPartFolder(child :: Folder) then
						reporter:fail(ErrorSourceStrings.Keys.CurveAnim_InvalidBodyPartHierarchy, {
							folderName = child.Name,
						})
						return
					end
				end
				continue
			end

			reporter:fail(ErrorSourceStrings.Keys.CurveAnim_UnexpectedChild, {
				childName = child.Name,
			})
			return
		end
	end
end

return CurveAnimHierarchyCorrect :: Types.ValidationModule
