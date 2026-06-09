local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFFlagUGCValidateMigrateCurveAnim = require(root.flags.getFFlagUGCValidateMigrateCurveAnim)
local getFFlagUGCValidateCurveAnimMinTimeFix = require(root.flags.getFFlagUGCValidateCurveAnimMinTimeFix)
local GetFStringUGCValidateCurveAnimationMinLength = require(root.flags.GetFStringUGCValidateCurveAnimationMinLength)
local GetFStringUGCValidationMaxAnimationLength = require(root.flags.GetFStringUGCValidationMaxAnimationLength)
local getFFlagUGCValidationAnimationPackSupport = require(root.flags.getFFlagUGCValidationAnimationPackSupport)

local CurveAnimLengthBounded = {}

CurveAnimLengthBounded.categories = { ValidationEnums.UploadCategory.EMOTE_ANIMATION }
if getFFlagUGCValidationAnimationPackSupport() then
	table.insert(CurveAnimLengthBounded.categories, ValidationEnums.UploadCategory.ANIMATION)
end
CurveAnimLengthBounded.requiredData = {
	ValidationEnums.SharedDataMember.curveAnimations,
	ValidationEnums.SharedDataMember.curveAnimComputedFrames,
}
CurveAnimLengthBounded.fflag = getFFlagUGCValidateMigrateCurveAnim
CurveAnimLengthBounded.expectedFailures = {}
CurveAnimLengthBounded.prereqTests = { ValidationEnums.ValidationModule.CurveAnimDataAvailable }

CurveAnimLengthBounded.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local computed = data.curveAnimComputedFrames
	local length = computed.animLength

	local minLength = if getFFlagUGCValidateCurveAnimMinTimeFix()
		then GetFStringUGCValidateCurveAnimationMinLength.asNumber()
		else 0

	if length <= minLength or length > GetFStringUGCValidationMaxAnimationLength.asNumber() then
		reporter:fail(ErrorSourceStrings.Keys.CurveAnim_InvalidLength, {
			minLength = tostring(minLength),
			maxLength = GetFStringUGCValidationMaxAnimationLength.asString(),
		})
	end
end

return CurveAnimLengthBounded :: Types.ValidationModule
