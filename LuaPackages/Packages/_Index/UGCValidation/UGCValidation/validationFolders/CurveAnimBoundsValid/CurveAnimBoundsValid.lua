local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFFlagUGCValidateMigrateCurveAnim = require(root.flags.getFFlagUGCValidateMigrateCurveAnim)
local getFFlagUGCValidateCurveAnimTimeErrorMessageFix =
	require(root.flags.getFFlagUGCValidateCurveAnimTimeErrorMessageFix)
local GetFStringUGCValidateAnimationHeightTol = require(root.flags.GetFStringUGCValidateAnimationHeightTol)
local GetFStringUGCValidationMaxAnimationBounds = require(root.flags.GetFStringUGCValidationMaxAnimationBounds)
local getFIntUGCValidateMaxAnimationFPS = require(root.flags.getFIntUGCValidateMaxAnimationFPS)
local getFFlagUGCValidationAnimationPackSupport = require(root.flags.getFFlagUGCValidationAnimationPackSupport)

local CurveAnimBoundsValid = {}

CurveAnimBoundsValid.categories = { ValidationEnums.UploadCategory.EMOTE_ANIMATION }
if getFFlagUGCValidationAnimationPackSupport() then
	table.insert(CurveAnimBoundsValid.categories, ValidationEnums.UploadCategory.ANIMATION)
end
CurveAnimBoundsValid.requiredData = {
	ValidationEnums.SharedDataMember.curveAnimations,
	ValidationEnums.SharedDataMember.curveAnimComputedFrames,
}
CurveAnimBoundsValid.fflag = getFFlagUGCValidateMigrateCurveAnim
CurveAnimBoundsValid.expectedFailures = {}
CurveAnimBoundsValid.prereqTests = { ValidationEnums.ValidationModule.CurveAnimDataAvailable }

CurveAnimBoundsValid.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local computed = data.curveAnimComputedFrames
	local animFrames = computed.animFrames
	local animLength = computed.animLength
	local frameDelta = 1.0 / getFIntUGCValidateMaxAnimationFPS()

	if getFFlagUGCValidateCurveAnimTimeErrorMessageFix() then
		local heightTol = GetFStringUGCValidateAnimationHeightTol.asNumber()
		local boundsTol = GetFStringUGCValidationMaxAnimationBounds.asNumber()

		for frameNumberIdx, frame in animFrames do
			for bodyPartName, cframe in frame do
				if (cframe :: CFrame).Position.Y < heightTol then
					reporter:fail(ErrorSourceStrings.Keys.CurveAnim_PartTooLow, {
						time = string.format("%.2f", math.min(animLength, (frameNumberIdx - 1) * frameDelta)),
						bodyPart = bodyPartName :: string,
						height = string.format("%.2f", (cframe :: CFrame).Position.Y),
						minHeight = GetFStringUGCValidateAnimationHeightTol.asString(),
					})
					return
				end
				if (cframe :: CFrame).Position.Magnitude > boundsTol then
					reporter:fail(ErrorSourceStrings.Keys.CurveAnim_PartTooFar, {
						time = string.format("%.2f", math.min(animLength, (frameNumberIdx - 1) * frameDelta)),
						bodyPart = bodyPartName :: string,
						distance = string.format("%.2f", (cframe :: CFrame).Position.Magnitude),
						maxDistance = GetFStringUGCValidationMaxAnimationBounds.asString(),
					})
					return
				end
			end
		end
	else
		local minHeight = math.huge
		local maxBounds = 0

		for _, frame in animFrames do
			for _, cframe in frame do
				maxBounds = math.max(maxBounds, (cframe :: CFrame).Position.Magnitude)
				minHeight = math.min(minHeight, (cframe :: CFrame).Position.Y)
			end
		end

		if minHeight < GetFStringUGCValidateAnimationHeightTol.asNumber() then
			reporter:fail(ErrorSourceStrings.Keys.CurveAnim_BoundsExceeded, {
				minHeight = GetFStringUGCValidateAnimationHeightTol.asString(),
				maxDistance = GetFStringUGCValidationMaxAnimationBounds.asString(),
			})
		end
		if maxBounds > GetFStringUGCValidationMaxAnimationBounds.asNumber() then
			reporter:fail(ErrorSourceStrings.Keys.CurveAnim_BoundsExceeded, {
				minHeight = GetFStringUGCValidateAnimationHeightTol.asString(),
				maxDistance = GetFStringUGCValidationMaxAnimationBounds.asString(),
			})
		end
	end
end

return CurveAnimBoundsValid :: Types.ValidationModule
