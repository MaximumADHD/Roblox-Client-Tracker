local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFIntUGCValidateMaxAnimationFPS = require(root.flags.getFIntUGCValidateMaxAnimationFPS)

local GetFStringUGCValidateMaxJointRotationPerPart = require(script.Parent.GetFStringUGCValidateMaxJointRotationPerPart)

local CurveAnimJointRotationLimited = {}

CurveAnimJointRotationLimited.categories = { ValidationEnums.UploadCategory.ANIMATION }
CurveAnimJointRotationLimited.requiredData = {
	ValidationEnums.SharedDataMember.curveAnimations,
	ValidationEnums.SharedDataMember.curveAnimComputedFrames,
}
CurveAnimJointRotationLimited.expectedFailures = {}
CurveAnimJointRotationLimited.prereqTests = { ValidationEnums.ValidationModule.CurveAnimDataAvailable }

local function validateCurveAnimClip(reporter: Types.ValidationReporter, computed: Types.CurveAnimClipComputedFrames)
	local animationName = computed.animation and computed.animation:GetFullName()
	local animLength = computed.animLength
	local tracks = computed.tracks
	local frameDelta = 1.0 / getFIntUGCValidateMaxAnimationFPS()

	local maxRotationCached = {}

	for bodyPartName, track in tracks do
		if not track.rot then
			continue
		end

		local partName = tostring(bodyPartName)

		if not maxRotationCached[partName] then
			maxRotationCached[partName] = GetFStringUGCValidateMaxJointRotationPerPart.asNumber(partName)
		end
		local maxRotation = maxRotationCached[partName]

		local time = 0
		while time <= animLength do
			local rotCFrame = (track.rot :: EulerRotationCurve):GetRotationAtTime(time)
			local _, angle = (rotCFrame :: any):ToAxisAngle()
			local degrees = math.deg(math.abs(angle))

			if degrees > maxRotation then
				local failureParams: { [string]: any } = {
					time = string.format("%.2f", time),
					bodyPart = partName,
					rotation = string.format("%.2f", degrees),
					maxRotation = tostring(maxRotation),
				}
				if animationName then
					failureParams.animationName = animationName
				end
				reporter:fail(
					ErrorSourceStrings.Keys.CurveAnim_JointRotationExceeded,
					failureParams,
					computed.animation
				)
				return
			end

			time += frameDelta
		end

		if animLength >= 0 then
			local rotCFrame = (track.rot :: EulerRotationCurve):GetRotationAtTime(animLength)
			local _, angle = (rotCFrame :: any):ToAxisAngle()
			local degrees = math.deg(math.abs(angle))

			if degrees > maxRotation then
				local failureParams: { [string]: any } = {
					time = string.format("%.2f", animLength),
					bodyPart = partName,
					rotation = string.format("%.2f", degrees),
					maxRotation = tostring(maxRotation),
				}
				if animationName then
					failureParams.animationName = animationName
				end
				reporter:fail(
					ErrorSourceStrings.Keys.CurveAnim_JointRotationExceeded,
					failureParams,
					computed.animation
				)
				return
			end
		end
	end
end

CurveAnimJointRotationLimited.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	for _, computed in data.curveAnimComputedFrames do
		validateCurveAnimClip(reporter, computed)
	end
end

return CurveAnimJointRotationLimited :: Types.ValidationModule
