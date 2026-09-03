local root = script.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)

local getFFlagDebugUGCValidationPrintNewStructureResults =
	require(root.flags.getFFlagDebugUGCValidationPrintNewStructureResults)

local getFFlagUGCValidationLogFailureInfo = require(root.flags.getFFlagUGCValidationLogFailureInfo)

local FIntUGCValidationLogFailureLength = game:DefineFastInt("UGCValidationLogFailureLength", 100)

-- Strips the root's GetFullName() prefix off the target's GetFullName(). Returns "" when the
-- target is the rootInstance itself.
local function getRelativePath(rootInstance: Instance, target: Instance?): string
	if target == nil or target == rootInstance then
		return ""
	end
	local prefix = rootInstance:GetFullName() .. "."
	local targetPath = target:GetFullName()
	assert(
		string.sub(targetPath, 1, #prefix) == prefix,
		`instance {targetPath} is not a descendant of root {rootInstance:GetFullName()}`
	)
	return string.sub(targetPath, #prefix + 1)
end

local ValidationReporter = {}
ValidationReporter.__index = ValidationReporter

function ValidationReporter.new(testEnum: string, sharedData: Types.SharedData?)
	local self = setmetatable({}, ValidationReporter)
	self._testEnum = testEnum
	self._status = ValidationEnums.Status.CANNOT_START
	self._telemetryContext = ""
	self._currentInstance = nil

	assert(sharedData, "ValidationReporter.new requires sharedData")
	self._rootInstance = sharedData.rootInstance
	self._failures = {}
	self._warnings = {}

	return self
end

function ValidationReporter:begin()
	self._startTime = os.clock()
	self._status = ValidationEnums.Status.IN_PROGRESS
end

-- Sets the default Instance used for instancePath on subsequent fail()/warn() calls when no
-- explicit instance argument is passed. Pass nil to clear.
function ValidationReporter:setReportingInstance(instance: Instance?)
	self._currentInstance = instance
end

-- Retargets the root stripped from instancePath so the R15Fixed duplicate pass reports failures
-- relative to its own root, whose descendants are not under the primary rootInstance.
function ValidationReporter:setReportingRoot(rootInstance: Instance)
	self._rootInstance = rootInstance
end

function ValidationReporter:fail(key: string, params: { [string]: any }?, instance: Instance?)
	self._status = ValidationEnums.Status.FAIL
	table.insert(self._failures, {
		failureStringKey = key,
		failureStringParams = params or {},
		instancePath = getRelativePath(self._rootInstance, instance or self._currentInstance),
	})
end

function ValidationReporter:warn(key: string, params: { [string]: any }?, instance: Instance?)
	table.insert(self._warnings, {
		failureStringKey = key,
		failureStringParams = params or {},
		instancePath = getRelativePath(self._rootInstance, instance or self._currentInstance),
	})
end

-- Backend-only: throws past ValidationManager so RCC reschedules. Studio/IEC must not call this.
function ValidationReporter:forceError(message: string)
	error({ __forceError = true, message = message })
end

-- Throws to abort the current test. ValidationTestWrapper handles the sentinel:
-- on Backend it re-raises so RCC reschedules (same as forceError); on Studio/IEC
-- it lands as reporter:err (inconclusive, not creator-facing).
function ValidationReporter:fetchError(message: string)
	error({ __fetchError = true, message = message })
end

function ValidationReporter:err(logMessage: string)
	if getFFlagDebugUGCValidationPrintNewStructureResults() then
		print("Reporting:", self._testEnum, "has error:", logMessage)
	end
	self._status = ValidationEnums.Status.ERROR
	self._telemetryContext = logMessage

	self._failures = {}
	self._warnings = {}
end

function ValidationReporter:complete(): Types.SingleValidationResult
	local duration = 0
	if self._startTime then
		duration = 1000 * (os.clock() - self._startTime)
	end

	if self._status == ValidationEnums.Status.IN_PROGRESS then
		self._status = ValidationEnums.Status.PASS
	end

	if getFFlagDebugUGCValidationPrintNewStructureResults() and self._status ~= ValidationEnums.Status.PASS then
		print("Reporting:", self._testEnum, "has status", self._status, "in", duration)
	end

	if getFFlagUGCValidationLogFailureInfo() and self._status == ValidationEnums.Status.FAIL then
		for _, failure in self._failures do
			self._telemetryContext = (self._telemetryContext :: string) .. failure.failureStringKey .. ";"
			if failure.failureStringParams then
				for _, param in failure.failureStringParams do
					self._telemetryContext = self._telemetryContext .. tostring(param) .. ";"
				end
			end
		end
		self._telemetryContext = string.sub(self._telemetryContext, 1, FIntUGCValidationLogFailureLength)
	end

	return {
		validationEnum = self._testEnum,
		status = self._status,
		failures = self._failures,
		warnings = self._warnings,
		duration = duration,
		telemetryContext = self._telemetryContext,
	} :: Types.SingleValidationResult
end

return ValidationReporter
