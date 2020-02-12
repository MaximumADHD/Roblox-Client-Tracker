--[[
	Specialized reporter for sending data to Backtrace.
	Useful for reporting Lua errors.
]]

local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Cryo)
local t = require(CorePackages.Packages.t)

local BacktraceReport = require(script.Parent.BacktraceReport)
local ErrorQueue = require(script.Parent.Parent.ErrorQueue)

local DEVELOPMENT_IN_STUDIO = game:GetService("RunService"):IsStudio()

local BacktraceReporter = {}
BacktraceReporter.__index = BacktraceReporter

local IBacktraceReporter = t.strictInterface({
	httpService = t.some(t.instanceOf("HttpService"), t.interface({
		JSONEncode = t.callback,
		RequestInternal = t.callback,
	})),
	token = t.string,
	processErrorReportMethod = t.optional(t.callback),
	queueOptions = t.optional(t.table),
})

function BacktraceReporter.new(arguments)
	local valid, message = IBacktraceReporter(arguments)
	local self

	if valid then
		self = {
			_isEnabled = true,
			_httpService = arguments.httpService,
			_errorQueue = nil,
			_reportUrl = game:GetFastString("ErrorUploadToBacktraceBaseUrl") .. "token=" .. arguments.token .. "&format=json",
			_processErrorReportMethod = arguments.processErrorReportMethod,

			_sharedAttributes = {},
			_sharedAnnotations = {},
		}
	elseif (DEVELOPMENT_IN_STUDIO or _G.__TESTEZ_RUNNING_TEST__) then
		error("invalid arguments for BacktraceReporter: " .. message)
	else
		self = {
			_isEnabled = false,
		}
	end

	setmetatable(self, BacktraceReporter)

	-- Create and start the ErrorQueue for deferred reports.
	if self._isEnabled then
		self._errorQueue = ErrorQueue.new(function(...)
			self:_reportErrorFromErrorQueue(...)
		end, arguments.queueOptions)

		self._errorQueue:startTimer()
	end

	return self
end

function BacktraceReporter:sendErrorReport(report)
	if not self._isEnabled then
		return false
	end

	-- Validating the report can be slow;
	-- And an invalid report might still be able to be processed, sent, and accepted by Backtrace.
	-- So we don't validate reports in production.
	if DEVELOPMENT_IN_STUDIO or _G.__TESTEZ_RUNNING_TEST__ then
		assert(report:validate())
	end

	local encodeSuccess, jsonData = pcall(function()
		return self._httpService:JSONEncode(report)
	end)

	if not encodeSuccess then
		warn("Cannot convert report to Json")
		return false
	end

	local success = pcall(function()
		local httpRequest = self._httpService:RequestInternal({
			Url = self._reportUrl,
			Method = "POST",
			Headers = {
				["Content-Type"] = "application/json",
			},
			Body = jsonData,
		})

		httpRequest:Start(function(success, response)
			-- To inspect http call result you can add code here.
			-- However, be aware that even when a response is 200, the report
			-- might still be rejected/deleted by Backtrace after it is received.
		end)
	end)

	return success
end

function BacktraceReporter:_generateErrorReport(errorMessage, errorStack, details)
	local report = BacktraceReport.fromMessageAndStack(errorMessage, errorStack)

	report:addAttributes(self._sharedAttributes)
	report:addAnnotations(self._sharedAnnotations)

	if type(details) == "string" and details ~= "" then
		report:addAnnotations({
			["stackDetails"] = details,
		})
	end

	return report
end

-- Immediate reports
-- You most likely should not use this. Use reportErrorDeferred instead.
function BacktraceReporter:reportErrorImmediately(errorMessage, errorStack, details)
	if not self._isEnabled then
		return
	end

	local newReport = self:_generateErrorReport(errorMessage, errorStack, details)

	if self._processErrorReportMethod ~= nil then
		newReport = self._processErrorReportMethod(newReport)
	end

	return self:sendErrorReport(newReport)
end

-- Deferred reports using an error queue
function BacktraceReporter:reportErrorDeferred(errorMessage, errorStack, details)
	if not self._isEnabled then
		return
	end

	local errorKey = string.format("%s | %s", errorMessage, errorStack)
	local errorData = {}

	-- If this error is a new one, we want a full report on it.
	-- Similar errors following this one will be squashed in the queue and share report with this one
	-- before they're flushed out and reported.
	if not self._errorQueue:hasError(errorKey) then
		local newReport = self:_generateErrorReport(errorMessage, errorStack, details)

		if self._processErrorReportMethod ~= nil then
			newReport = self._processErrorReportMethod(newReport)
		end

		errorData = newReport
	end

	self._errorQueue:addError(errorKey, errorData)
end

function BacktraceReporter:_reportErrorFromErrorQueue(errorKey, errorData, errorCount)
	local errorReport = errorData

	errorReport:addAttributes({
		ErrorCount = errorCount,
	})

	self:sendErrorReport(errorReport)
end

-- API for updating shared attributes/annotations
local IAttributes = BacktraceReport.IAttributes

function BacktraceReporter:updateSharedAttributes(newAttributes)
	-- Merge with current one first. This allows usage of Cryo.None.
	local mergedAttributes = Cryo.Dictionary.join(self._sharedAttributes, newAttributes)

	-- Validate the merged result, and only update if it's valid.
	local valid, message = IAttributes(mergedAttributes)
	if not valid then
		if DEVELOPMENT_IN_STUDIO or _G.__TESTEZ_RUNNING_TEST__ then
			assert(valid, message)
		else
			return
		end
	end

	self._sharedAttributes = mergedAttributes
end

local IAnnotations = BacktraceReport.IAnnotations

function BacktraceReporter:updateSharedAnnotations(newAnnotations)
	-- Although annotations can be nested tables, this is not a recursive merge.
	local mergedAnnotations = Cryo.Dictionary.join(self._sharedAnnotations, newAnnotations)

	local valid, message = IAnnotations(mergedAnnotations)
	if not valid then
		if DEVELOPMENT_IN_STUDIO or _G.__TESTEZ_RUNNING_TEST__ then
			assert(valid, message)
		else
			return
		end
	end

	self._sharedAnnotations = mergedAnnotations
end

-- Flush all reports in the queue.
function BacktraceReporter:reportAllErrors()
	if self._errorQueue ~= nil then
		self._errorQueue:reportAllErrors()
	end
end

function BacktraceReporter:stop()
	self._isEnabled = false

	if self._errorQueue ~= nil then
		self:reportAllErrors()
		self._errorQueue:stopTimer()
	end
end

return BacktraceReporter
