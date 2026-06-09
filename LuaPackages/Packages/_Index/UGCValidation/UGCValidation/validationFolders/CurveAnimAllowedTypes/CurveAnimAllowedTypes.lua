local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFFlagUGCValidateMigrateCurveAnim = require(root.flags.getFFlagUGCValidateMigrateCurveAnim)
local getFFlagUGCValidateAddObjectValueToAcceptableTypes =
	require(root.flags.getFFlagUGCValidateAddObjectValueToAcceptableTypes)
local getFFlagUGCValidationAnimationPackSupport = require(root.flags.getFFlagUGCValidationAnimationPackSupport)

local CurveAnimAllowedTypes = {}

CurveAnimAllowedTypes.categories = { ValidationEnums.UploadCategory.EMOTE_ANIMATION }
if getFFlagUGCValidationAnimationPackSupport() then
	table.insert(CurveAnimAllowedTypes.categories, ValidationEnums.UploadCategory.ANIMATION)
end
CurveAnimAllowedTypes.requiredData = {
	ValidationEnums.SharedDataMember.curveAnimations,
}
CurveAnimAllowedTypes.fflag = getFFlagUGCValidateMigrateCurveAnim
CurveAnimAllowedTypes.expectedFailures = {}
CurveAnimAllowedTypes.prereqTests = { ValidationEnums.ValidationModule.CurveAnimDataAvailable }

local acceptableHierarchyInstanceTypes = {
	"MarkerCurve",
	"AnimationRigData",
	"Folder",
	"Vector3Curve",
	"EulerRotationCurve",
	"FloatCurve",
}

if getFFlagUGCValidateAddObjectValueToAcceptableTypes() then
	table.insert(acceptableHierarchyInstanceTypes, "ObjectValue")
end

CurveAnimAllowedTypes.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	for _, inst in data.curveAnimations do
		local curveAnim = inst :: CurveAnimation
		for _, child in curveAnim:GetDescendants() do
			local isAcceptableType = false
			for _, acceptableType in acceptableHierarchyInstanceTypes do
				if child:IsA(acceptableType) then
					isAcceptableType = true
					break
				end
			end

			if not isAcceptableType then
				reporter:fail(ErrorSourceStrings.Keys.CurveAnim_InvalidInstanceTypes, {
					allowedTypes = table.concat(acceptableHierarchyInstanceTypes, ", "),
				})
				return
			end
		end
	end
end

return CurveAnimAllowedTypes :: Types.ValidationModule
