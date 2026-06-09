local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFFlagUGCValidateMigrateCurveAnim = require(root.flags.getFFlagUGCValidateMigrateCurveAnim)
local getFFlagUGCValidationAnimationPackSupport = require(root.flags.getFFlagUGCValidationAnimationPackSupport)

local CurveAnimFrameDataSensible = {}

CurveAnimFrameDataSensible.categories = { ValidationEnums.UploadCategory.EMOTE_ANIMATION }
if getFFlagUGCValidationAnimationPackSupport() then
	table.insert(CurveAnimFrameDataSensible.categories, ValidationEnums.UploadCategory.ANIMATION)
end
CurveAnimFrameDataSensible.requiredData = {
	ValidationEnums.SharedDataMember.curveAnimations,
	ValidationEnums.SharedDataMember.curveAnimComputedFrames,
}
CurveAnimFrameDataSensible.fflag = getFFlagUGCValidateMigrateCurveAnim
CurveAnimFrameDataSensible.expectedFailures = {}
CurveAnimFrameDataSensible.prereqTests = { ValidationEnums.ValidationModule.CurveAnimDataAvailable }

local function areNumbersGood(...): boolean
	local function isNaN(value: number): boolean
		return value ~= value
	end

	local function isInfinite(value: number): boolean
		return value == math.huge or value == -math.huge
	end

	for _, value in { ... } do
		if isNaN(value) then
			return false
		end
		if isInfinite(value) then
			return false
		end
	end
	return true
end

CurveAnimFrameDataSensible.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local computed = data.curveAnimComputedFrames

	for _, frame in computed.animFrames do
		for _, cframe in frame do
			if not areNumbersGood((cframe :: CFrame):GetComponents()) then
				reporter:fail(ErrorSourceStrings.Keys.CurveAnim_InvalidNumericalData)
				return
			end
		end
	end

	for _, frame in computed.positionMagnitudeFrames do
		for _, magnitude in frame do
			if not areNumbersGood(magnitude) then
				reporter:fail(ErrorSourceStrings.Keys.CurveAnim_InvalidNumericalData)
				return
			end
		end
	end
end

return CurveAnimFrameDataSensible :: Types.ValidationModule
