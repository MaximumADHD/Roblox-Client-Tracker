local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFFlagUGCValidateMigrateCurveAnim = require(root.flags.getFFlagUGCValidateMigrateCurveAnim)
local getFFlagUGCValidationAnimationPackSupport = require(root.flags.getFFlagUGCValidationAnimationPackSupport)

local CurveAnimRigDataPresent = {}

CurveAnimRigDataPresent.categories = { ValidationEnums.UploadCategory.EMOTE_ANIMATION }
if getFFlagUGCValidationAnimationPackSupport() then
	table.insert(CurveAnimRigDataPresent.categories, ValidationEnums.UploadCategory.ANIMATION)
end
CurveAnimRigDataPresent.requiredData = {
	ValidationEnums.SharedDataMember.curveAnimations,
}
CurveAnimRigDataPresent.fflag = getFFlagUGCValidateMigrateCurveAnim
CurveAnimRigDataPresent.expectedFailures = {}
CurveAnimRigDataPresent.prereqTests = { ValidationEnums.ValidationModule.CurveAnimDataAvailable }

CurveAnimRigDataPresent.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	for _, inst in data.curveAnimations do
		local curveAnim = inst :: CurveAnimation
		local numRigData = 0
		for _, child in curveAnim:GetChildren() do
			if child:IsA("AnimationRigData") then
				numRigData += 1
				if numRigData > 1 then
					reporter:fail(ErrorSourceStrings.Keys.CurveAnim_MultipleRigData)
					return
				end
			end
		end

		if numRigData == 0 then
			reporter:fail(ErrorSourceStrings.Keys.CurveAnim_NoRigData)
			return
		end

		for _, child in curveAnim:GetChildren() do
			if not child:IsA("AnimationRigData") then
				continue
			end

			if not (child :: any):IsValidR15() then
				reporter:fail(ErrorSourceStrings.Keys.CurveAnim_InvalidRigData)
				return
			end
		end
	end
end

return CurveAnimRigDataPresent :: Types.ValidationModule
