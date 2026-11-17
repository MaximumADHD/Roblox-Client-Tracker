local root = script.Parent.Parent.Parent

local Constants = require(root.Constants)
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local GetFStringUGCValidateMaxAnimationMovementPerPart =
	require(root.flags.GetFStringUGCValidateMaxAnimationMovementPerPart)
local CurveAnimPositionBounded = {}

CurveAnimPositionBounded.categories =
	{ ValidationEnums.UploadCategory.EMOTE_ANIMATION, ValidationEnums.UploadCategory.ANIMATION }
CurveAnimPositionBounded.requiredData = {
	ValidationEnums.SharedDataMember.curveAnimations,
	ValidationEnums.SharedDataMember.curveAnimComputedFrames,
}
CurveAnimPositionBounded.expectedFailures = {}
CurveAnimPositionBounded.prereqTests = { ValidationEnums.ValidationModule.CurveAnimDataAvailable }

local function validateCurveAnimClip(reporter: Types.ValidationReporter, computed: Types.CurveAnimClipComputedFrames)
	local animationName = computed.animation and computed.animation:GetFullName()
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
				local failureParams: { [string]: any } = {
					bodyPart = bodyPartName :: string,
					maxMovement = tostring(maxMovementsCached[bodyPartName]),
				}
				if animationName then
					failureParams.animationName = animationName
				end
				reporter:fail(ErrorSourceStrings.Keys.CurveAnim_PositionSeparation, failureParams, computed.animation)
				return
			end
		end
	end
end

CurveAnimPositionBounded.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	for _, computed in data.curveAnimComputedFrames do
		validateCurveAnimClip(reporter, computed)
	end
end

return CurveAnimPositionBounded :: Types.ValidationModule
