local root = script.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
game:DefineFastFlag("DebugUGCValidationNewRunner", false)
local debugPrints = game:GetFastFlag("DebugUGCValidationNewRunner")

local ValidationReporter = {}
ValidationReporter.__index = ValidationReporter

local function toTitleCase(input_string: string): string
	local title_case_parts = {}
	for _, part in input_string:split("_") do
		table.insert(title_case_parts, part:sub(1, 1):upper() .. part:sub(2):lower())
	end

	return table.concat(title_case_parts)
end

function ValidationReporter.new(testEnum: string)
	local self = {}
	self._startTime = tick()
	self._testEnum = testEnum
	self._status = ValidationEnums.Status.PASS
	self._failureMessages = {}
	self._internalData = {}

	return setmetatable(self, ValidationReporter)
end

function ValidationReporter:fail(
	errorLabelVariables: { [string]: any }?,
	errorKeyOverride: string?,
	internalContext: {}?,
	_telemetryContext: any
)
	self._status = ValidationEnums.Status.FAIL
	table.insert(self._internalData, internalContext)
	local errorKey
	if errorKeyOverride then
		errorKey = errorKeyOverride
	else
		errorKey = toTitleCase(self._testEnum)
	end

	table.insert(self._failureMessages, {
		["key"] = errorKey,
		["params"] = errorLabelVariables or {},
	})

	-- TODO: Telemetry
end

function ValidationReporter:_err(_logMessage: string)
	self._status = ValidationEnums.Status.ERROR
	self._internalData = {}
	self._failureMessages = {} -- Should we add error message for a test that could not run?

	-- TODO: Telemetry
end

function ValidationReporter:_complete(): Types.SingleValidationResult
	local duration = tick() - self._startTime
	if debugPrints then
		print("Reporting:", self._testEnum, "has status", self._status, "in", duration)
	end

	return {
		status = self._status,
		errorTranslationContexts = self._failureMessages,
		internalData = self._internalData,
	}
end

return ValidationReporter
