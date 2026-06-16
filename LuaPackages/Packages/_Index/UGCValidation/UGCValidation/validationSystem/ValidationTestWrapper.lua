--[[
ValidationManager uses ValidationTestWrapper to run an individual test.
This wrapper will ensure all prerequisite tests have passed already and that all requested data is available.
We will then run the test, track the state, and report analytics.
Once complete, we return
	- Status of the test 
	- Error message info
	- Failure context for internal data

	CANNOT_START = "CANNOT_START",
	TIMEOUT = "TIMEOUT",
	ERROR = "ERROR",
	FAIL = "FAIL",
	PASS = "PASS",
--]]

local root = script.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ValidationModuleLoader = require(root.validationSystem.ValidationModuleLoader)
local FetchAllDesiredData = require(root.validationSystem.dataFetchModules.FetchAllDesiredData)
local ValidationReporter = require(root.validationSystem.ValidationReporter)
local getFFlagDebugUGCValidationPrintNewStructureResults =
	require(root.flags.getFFlagDebugUGCValidationPrintNewStructureResults)
local getEngineFeatureEngineUGCValidationExpandReturnSchema =
	require(root.flags.getEngineFeatureEngineUGCValidationExpandReturnSchema)
local getFFlagUGCValidateMigrateSchemaProperties = require(root.flags.getFFlagUGCValidateMigrateSchemaProperties)
local getFFlagUGCValidationFetchErrorMethod = require(root.flags.getFFlagUGCValidationFetchErrorMethod)
local ValidateConstants = require(root.validationSystem.ValidationConstants)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local TelemetryService = game:GetService("TelemetryService")
game:DefineFastInt("SingleValidationTelemetryThrottleHundrethsPercent", 10000)

local telemetryConfig = {
	eventName = "UgcSingleValidationFinished",
	backends = {
		"EventIngest",
	},
	throttlingPercentage = game:GetFastInt("SingleValidationTelemetryThrottleHundrethsPercent"),
	lastUpdated = { 25, 9, 24 },
	description = [[Report single ugc validation result to EventIngest backend.]],
	links = "https://create.roblox.com/docs/art/validation-errors",
}

local function reportSingleResult(
	testEnum: string,
	sharedData: Types.SharedData,
	status: string,
	telemetryContext: string,
	duration: number
)
	local telemetryResult = {
		validationJobId = sharedData.jobId,
		validationSource = sharedData.consumerConfig.source,
		validationEnum = testEnum,
		status = status,
		durationMs = duration,
		additional_info = telemetryContext,
	}

	TelemetryService:LogEvent(telemetryConfig, { customFields = telemetryResult })
end

local function getMissingData(sharedData: Types.SharedData, desiredData: { string }): { string }
	local missing = {}
	for _, reqData in desiredData do
		if sharedData[reqData] == nil or sharedData[reqData] == FetchAllDesiredData.DATA_FETCH_FAILURE then
			table.insert(missing, reqData)
		end
	end

	return missing
end

local function checkAqsReturnSchema(summary: any, expectation: any)
	if typeof(summary) ~= "table" then
		return false
	end

	for k, v in expectation do
		if type(v) == "table" and not checkAqsReturnSchema(summary[k], v) then
			return false
		elseif type(v) == "string" and not tonumber(summary[v]) then
			return false
		end
	end

	return true
end

local function complete(testEnum: string, sharedData: Types.SharedData, reporter: any)
	local data = reporter:complete()
	reportSingleResult(testEnum, sharedData, data.status, data.telemetryContext, data.duration)
	return data
end

local function ValidationTestWrapper(
	testEnum: string,
	sharedData: Types.SharedData,
	testStates: { string: string }
): Types.SingleValidationResult
	local validationModule: Types.PreloadedValidationModule = ValidationModuleLoader.getValidationModule(testEnum)
	local reporter = ValidationReporter.new(
		testEnum,
		if getEngineFeatureEngineUGCValidationExpandReturnSchema() then sharedData else nil
	) :: any

	-- Check 1: if a prereq already failed, just dont start this one
	for _, reqTest in validationModule.prereqTests do
		if testStates[reqTest] ~= ValidationEnums.Status.PASS then
			return complete(testEnum, sharedData, reporter)
		end
	end

	-- Check 2: if data we expect is missing, throw an error for the user to report
	local missingRequiredData = getMissingData(sharedData, validationModule.requiredData)
	if #missingRequiredData > 0 then
		local dataString = table.concat(missingRequiredData, ", ")
		reporter:err(`Missing required data: {dataString}`)
		return complete(testEnum, sharedData, reporter)
	end

	-- Check 3: if this is AQS data, check the format for any version mismatches
	if getEngineFeatureEngineUGCValidationExpandReturnSchema() then
		if validationModule.isAssetQualityModule then
			local summary = sharedData.aqsSummaryData[testEnum]

			if summary and summary["Error"] then
				local recievedAQSInternalError = false
				for _, errorEnum: string in summary["Error"] :: any do
					if validationModule.knownAqsUserErrors[errorEnum] ~= nil then
						reporter:fail(validationModule.knownAqsUserErrors[errorEnum])
					elseif
						table.find(ValidateConstants.AQSInternalErrorEnum, errorEnum) ~= nil
						and recievedAQSInternalError == false
					then
						reporter:fail(ErrorSourceStrings.Keys.AQSInternalError)
						recievedAQSInternalError = true
					else
						reporter:err(`Unexpected error enum {errorEnum}`)
						return complete(testEnum, sharedData, reporter)
					end
				end

				return complete(testEnum, sharedData, reporter)
			end
		end
	elseif
		not getEngineFeatureEngineUGCValidationExpandReturnSchema()
		and next(validationModule.expectedAqsData) ~= nil
	then
		local recievedKnownErrors = false
		for aqCheckName, _ in validationModule.expectedAqsData do
			local summary = sharedData.aqsSummaryData[aqCheckName]

			local recievedAQSInternalError = false
			if summary and summary["Error"] then
				for _, errorEnum: string in summary["Error"] :: any do
					if validationModule.knownAqsUserErrors[errorEnum] ~= nil then
						reporter:fail(validationModule.knownAqsUserErrors[errorEnum])
						recievedKnownErrors = true
					else
						if
							table.find(ValidateConstants.AQSInternalErrorEnum, errorEnum) ~= nil
							and recievedAQSInternalError == false
						then
							reporter:fail(ErrorSourceStrings.Keys.AQSInternalError)
							recievedKnownErrors = true
							recievedAQSInternalError = true
						else
							reporter:err(`Unexpected error enum {errorEnum}`)
							return complete(testEnum, sharedData, reporter)
						end
					end
				end

				return complete(testEnum, sharedData, reporter)
			end
		end

		if recievedKnownErrors then
			return complete(testEnum, sharedData, reporter)
		elseif not checkAqsReturnSchema(sharedData.aqsSummaryData, validationModule.expectedAqsData) then
			reporter:err(`Missing expected AQS schema`)
			return complete(testEnum, sharedData, reporter)
		end
	end

	-- Run validation once we have all conditional data
	reporter:begin()
	if #getMissingData(sharedData, validationModule.conditionalData) > 0 then
		-- auto pass when missing conditional data
		return complete(testEnum, sharedData, reporter)
	end

	local success, issues = pcall(function()
		validationModule.run(reporter, sharedData)
	end)

	if not success then
		-- forceError sentinel: re-raise so it escapes ValidationManager.
		if getFFlagUGCValidateMigrateSchemaProperties() and type(issues) == "table" and issues.__forceError then
			error(issues.message, 0)
		end
		-- fetchError sentinel: backend re-raises so RCC reschedules; Studio/IEC reports as err.
		if getFFlagUGCValidationFetchErrorMethod() and type(issues) == "table" and issues.__fetchError then
			if sharedData.consumerConfig.consumerEnv == ValidationEnums.ConsumerEnv.Backend then
				error(issues.message, 0)
			end
			reporter:err(issues.message)
			return complete(testEnum, sharedData, reporter)
		end
		if getFFlagDebugUGCValidationPrintNewStructureResults() then
			print("Validation error:", issues)
			print("As this is in debug mode, we will re-call the function for a full error trace: ")
			validationModule.run(reporter, sharedData)
		end
		reporter:err(issues)
	end

	return complete(testEnum, sharedData, reporter)
end

return ValidationTestWrapper
