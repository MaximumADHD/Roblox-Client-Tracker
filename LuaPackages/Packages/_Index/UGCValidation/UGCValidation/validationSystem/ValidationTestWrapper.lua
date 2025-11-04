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

local function ValidationTestWrapper(
	testEnum: string,
	sharedData: Types.SharedData,
	testStates: { string: string }
): Types.SingleValidationResult
	-- First ensure we can start the test
	local validationModule: Types.PreloadedValidationModule = ValidationModuleLoader.getValidationModule(testEnum)

	for _, reqData in validationModule.required_data do
		if sharedData[reqData] == nil or sharedData[reqData] == FetchAllDesiredData.DATA_FETCH_FAILURE then
			reportSingleResult(testEnum, sharedData, ValidationEnums.Status.CANNOT_START, "", 0)
			return {
				status = ValidationEnums.Status.CANNOT_START,
				errorTranslationContexts = {},
				internalData = {},
			}
		end
	end

	for _, reqTest in validationModule.prereq_tests do
		if testStates[reqTest] ~= ValidationEnums.Status.PASS then
			reportSingleResult(testEnum, sharedData, ValidationEnums.Status.CANNOT_START, "", 0)
			return {
				status = ValidationEnums.Status.CANNOT_START,
				errorTranslationContexts = {},
				internalData = {},
			}
		end
	end

	-- run test
	local reporter = ValidationReporter.new(testEnum) :: any
	local success, issues = pcall(function() -- TODO: Add timeout
		validationModule.run(reporter, sharedData)
	end)

	if not success then
		if getFFlagDebugUGCValidationPrintNewStructureResults() then
			print("Validation error:", issues)
			print("As this is in debug mode, we will re-call the function for a full error trace: ")
			validationModule.run(reporter, sharedData)
		end
		reporter:_err(issues)
	end

	local data = reporter:_complete()
	reportSingleResult(testEnum, sharedData, data.status, data.telemetryContext, data.duration)
	return data
end

return ValidationTestWrapper
