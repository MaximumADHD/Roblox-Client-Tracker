local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFFlagUGCValidateMigrateCurveAnim = require(root.flags.getFFlagUGCValidateMigrateCurveAnim)
local getFFlagUGCValidationAnimationPackSupport = require(root.flags.getFFlagUGCValidationAnimationPackSupport)

local CurveAnimJointsAnimated = {}

CurveAnimJointsAnimated.categories = { ValidationEnums.UploadCategory.EMOTE_ANIMATION }
if getFFlagUGCValidationAnimationPackSupport() then
	table.insert(CurveAnimJointsAnimated.categories, ValidationEnums.UploadCategory.ANIMATION)
end
CurveAnimJointsAnimated.requiredData = {
	ValidationEnums.SharedDataMember.curveAnimations,
	ValidationEnums.SharedDataMember.curveAnimComputedFrames,
}
CurveAnimJointsAnimated.fflag = getFFlagUGCValidateMigrateCurveAnim
CurveAnimJointsAnimated.expectedFailures = {}
CurveAnimJointsAnimated.prereqTests = { ValidationEnums.ValidationModule.CurveAnimDataAvailable }

CurveAnimJointsAnimated.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local computed = data.curveAnimComputedFrames

	for _, track in computed.tracks do
		if track.pos or track.rot then
			return
		end
	end
	reporter:fail(ErrorSourceStrings.Keys.CurveAnim_NoJointManipulation)
end

return CurveAnimJointsAnimated :: Types.ValidationModule
