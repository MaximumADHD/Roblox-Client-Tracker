local root = script.Parent.Parent.Parent

local Constants = require(root.Constants)
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFFlagUGCValidateMigrateCurveAnim = require(root.flags.getFFlagUGCValidateMigrateCurveAnim)
local GetFStringUGCValidateMaxAnimationMovementPerPart =
	require(root.flags.GetFStringUGCValidateMaxAnimationMovementPerPart)
local getFFlagUGCValidationAnimationPackSupport = require(root.flags.getFFlagUGCValidationAnimationPackSupport)

local CurveAnimPositionBounded = {}

CurveAnimPositionBounded.categories = { ValidationEnums.UploadCategory.EMOTE_ANIMATION }
if getFFlagUGCValidationAnimationPackSupport() then
	table.insert(CurveAnimPositionBounded.categories, ValidationEnums.UploadCategory.ANIMATION)
end
CurveAnimPositionBounded.requiredData = {
	ValidationEnums.SharedDataMember.curveAnimations,
	ValidationEnums.SharedDataMember.curveAnimComputedFrames,
}
CurveAnimPositionBounded.fflag = getFFlagUGCValidateMigrateCurveAnim
CurveAnimPositionBounded.expectedFailures = {}
CurveAnimPositionBounded.prereqTests = { ValidationEnums.ValidationModule.CurveAnimDataAvailable }

CurveAnimPositionBounded.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local computed = data.curveAnimComputedFrames

	local maxMovementsCached = {}
	for _, frame in computed.positionMagnitudeFrames do
		for bodyPartName, magnitude in frame do
			if bodyPartName == Constants.NAMED_R15_BODY_PARTS.LowerTorso then
				continue
			end

			if not maxMovementsCached[bodyPartName] then
				maxMovementsCached[bodyPartName] =
					GetFStringUGCValidateMaxAnimationMovementPerPart.asNumber(bodyPartName :: string)
			end
			if (magnitude :: number) > maxMovementsCached[bodyPartName] then
				reporter:fail(ErrorSourceStrings.Keys.CurveAnim_PositionSeparation, {
					bodyPart = bodyPartName :: string,
					maxMovement = tostring(maxMovementsCached[bodyPartName]),
				})
				return
			end
		end
	end
end

return CurveAnimPositionBounded :: Types.ValidationModule
