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
local ValidationReporter = require(root.validationSystem.ValidationReporter)

local function ValidationTestWrapper(
	testEnum: string,
	sharedData: Types.SharedData,
	testStates: { string: string }
): Types.SingleValidationResult
	-- First ensure we can start the test
	local validationModule: Types.PreloadedValidationModule = ValidationModuleLoader.getValidationModule(testEnum)
	for _, reqData in validationModule.required_data do
		if sharedData[reqData:lower()] == nil then
			return {
				status = ValidationEnums.Status.CANNOT_START,
				errorTranslationContexts = {},
				internalData = {},
			}
		end
	end

	for _, reqTest in validationModule.prereq_tests do
		if testStates[reqTest] ~= ValidationEnums.Status.PASS then
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
		reporter:_err(issues)
	end

	return reporter:_complete()
end

return ValidationTestWrapper
