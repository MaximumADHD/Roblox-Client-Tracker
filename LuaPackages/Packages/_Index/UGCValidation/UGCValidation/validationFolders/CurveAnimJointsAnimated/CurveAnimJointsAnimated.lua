local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local CurveAnimJointsAnimated = {}

CurveAnimJointsAnimated.categories =
	{ ValidationEnums.UploadCategory.EMOTE_ANIMATION, ValidationEnums.UploadCategory.ANIMATION }
CurveAnimJointsAnimated.requiredData = {
	ValidationEnums.SharedDataMember.curveAnimations,
	ValidationEnums.SharedDataMember.curveAnimComputedFrames,
}
CurveAnimJointsAnimated.expectedFailures = {}
CurveAnimJointsAnimated.prereqTests = { ValidationEnums.ValidationModule.CurveAnimDataAvailable }

local function validateCurveAnimClip(reporter: Types.ValidationReporter, computed: Types.CurveAnimClipComputedFrames)
	local animationName = computed.animation and computed.animation:GetFullName()
	for _, track in computed.tracks do
		if track.pos or track.rot then
			return
		end
	end
	reporter:fail(
		ErrorSourceStrings.Keys.CurveAnim_NoJointManipulation,
		{ animationName = animationName },
		computed.animation
	)
end

CurveAnimJointsAnimated.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	for _, computed in data.curveAnimComputedFrames do
		validateCurveAnimClip(reporter, computed)
	end
end

return CurveAnimJointsAnimated :: Types.ValidationModule
