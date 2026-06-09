local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFIntUGCValidateMaxAnimationFPS = require(root.flags.getFIntUGCValidateMaxAnimationFPS)
local getFFlagUGCValidationAnimationPackSupport = require(root.flags.getFFlagUGCValidationAnimationPackSupport)

local GetFStringUGCValidateMaxJointRotationPerPart = require(script.Parent.GetFStringUGCValidateMaxJointRotationPerPart)

local CurveAnimJointRotationLimited = {}

CurveAnimJointRotationLimited.categories = { ValidationEnums.UploadCategory.ANIMATION }
CurveAnimJointRotationLimited.requiredData = {
	ValidationEnums.SharedDataMember.curveAnimations,
	ValidationEnums.SharedDataMember.curveAnimComputedFrames,
}
CurveAnimJointRotationLimited.fflag = getFFlagUGCValidationAnimationPackSupport
CurveAnimJointRotationLimited.expectedFailures = {}
CurveAnimJointRotationLimited.prereqTests = { ValidationEnums.ValidationModule.CurveAnimDataAvailable }

CurveAnimJointRotationLimited.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local computed = data.curveAnimComputedFrames
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
				reporter:fail(ErrorSourceStrings.Keys.CurveAnim_JointRotationExceeded, {
					time = string.format("%.2f", time),
					bodyPart = partName,
					rotation = string.format("%.2f", degrees),
					maxRotation = tostring(maxRotation),
				})
				return
			end

			time += frameDelta
		end

		if animLength >= 0 then
			local rotCFrame = (track.rot :: EulerRotationCurve):GetRotationAtTime(animLength)
			local _, angle = (rotCFrame :: any):ToAxisAngle()
			local degrees = math.deg(math.abs(angle))

			if degrees > maxRotation then
				reporter:fail(ErrorSourceStrings.Keys.CurveAnim_JointRotationExceeded, {
					time = string.format("%.2f", animLength),
					bodyPart = partName,
					rotation = string.format("%.2f", degrees),
					maxRotation = tostring(maxRotation),
				})
				return
			end
		end
	end
end

return CurveAnimJointRotationLimited :: Types.ValidationModule
