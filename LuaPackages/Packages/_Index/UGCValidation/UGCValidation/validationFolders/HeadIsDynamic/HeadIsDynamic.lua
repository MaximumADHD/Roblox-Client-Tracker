local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local getFIntUGCValidationDynamicHeadMinimumQualityPercent =
	require(root.flags.getFIntUGCValidationDynamicHeadMinimumQualityPercent)

local getFFlagUGCValidationAddGeometryToExports = require(root.flags.getFFlagUGCValidationAddGeometryToExports)

local HeadIsDynamic = {}

HeadIsDynamic.categories = { ValidationEnums.UploadCategory.DYNAMIC_HEAD }
HeadIsDynamic.fflag = require(root.flags.getFFlagUGCValidateIsDynamicHead)
HeadIsDynamic.shadowFlag = require(root.flags.getFFlagUGCValidationShadowIsDynamicHead)
HeadIsDynamic.expectedAqsData = {
	Measure_Dynamic_Head = {},
}

HeadIsDynamic.knownAqsUserErrors = {
	INVALID_LANDMARKS = ErrorSourceStrings.Keys.DynamicHeadCageMisaligned,
	NO_FACS = ErrorSourceStrings.Keys.DynamicHeadNOFACS,
	MISSING_CAGE_INFO = ErrorSourceStrings.Keys.DynamicHeadMISSINGCAGE,
}

local head_metric: { [string]: string } = {
	left_eye_close = ErrorSourceStrings.Keys.DynamicHeadLeftEyeNotClose,
	right_eye_close = ErrorSourceStrings.Keys.DynamicHeadRightEyeNotClose,
	mouth_open = ErrorSourceStrings.Keys.DynamicHeadMouthNotOpen,
	is_happy = ErrorSourceStrings.Keys.DynamicHeadHappyNotShown,
	is_sad = ErrorSourceStrings.Keys.DynamicHeadSadNotShown,
}

HeadIsDynamic.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local dynamicHeadScores = nil
	if getFFlagUGCValidationAddGeometryToExports() then
		dynamicHeadScores = data.aqsSummaryData.Measure_Dynamic_Head.Head
			or data.aqsSummaryData.Measure_Dynamic_Head.Head_Geo
	else
		dynamicHeadScores = data.aqsSummaryData.Measure_Dynamic_Head.Head
	end

	if dynamicHeadScores == nil then
		reporter:fail(ErrorSourceStrings.Keys.AQSInputDataError)
	else
		for metric, error_enum in head_metric do
			if
				dynamicHeadScores[metric] ~= nil
				and tonumber(dynamicHeadScores[metric])
					<= getFIntUGCValidationDynamicHeadMinimumQualityPercent() / 100
			then
				reporter:fail(error_enum)
			end
		end
	end
end

return HeadIsDynamic :: Types.ValidationModule
