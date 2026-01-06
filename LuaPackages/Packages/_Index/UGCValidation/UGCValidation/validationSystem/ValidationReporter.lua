local root = script.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)

local getFFlagDebugUGCValidationPrintNewStructureResults =
	require(root.flags.getFFlagDebugUGCValidationPrintNewStructureResults)

local ValidationReporter = {}
ValidationReporter.__index = ValidationReporter

function ValidationReporter.new(testEnum: string)
	local self = {}
	self._startTime = tick()
	self._testEnum = testEnum
	self._status = ValidationEnums.Status.PASS
	self._telemetryContext = ""
	self._failureMessages = {}
	self._internalData = {}

	return setmetatable(self, ValidationReporter)
end

function ValidationReporter:fail(
	errorKey: string,
	errorLabelVariables: { [string]: any }?,
	internalContext: {}?,
	telemetryContext: string?
)
	self._status = ValidationEnums.Status.FAIL
	table.insert(self._internalData, internalContext)
	table.insert(self._failureMessages, {
		["key"] = errorKey,
		["params"] = errorLabelVariables or {},
	})

	if telemetryContext ~= nil then
		self._telemetryContext = `{telemetryContext} -- {self._telemetryContext}`
	end
end

function ValidationReporter:err(logMessage: string)
	if getFFlagDebugUGCValidationPrintNewStructureResults() then
		print("Reporting:", self._testEnum, "has error:", logMessage)
	end
	self._status = ValidationEnums.Status.ERROR
	self._internalData = {}
	self._failureMessages = {}
	self._telemetryContext = logMessage
end

function ValidationReporter:complete(): Types.SingleValidationResult
	local duration = tick() - self._startTime
	if getFFlagDebugUGCValidationPrintNewStructureResults() then
		print("Reporting:", self._testEnum, "has status", self._status, "in", duration)
	end

	return {
		validationEnum = self._testEnum,
		status = self._status,
		errorTranslationContexts = self._failureMessages,
		internalData = self._internalData,
		duration = duration,
		telemetryContext = self._telemetryContext,
	}
end

return ValidationReporter
