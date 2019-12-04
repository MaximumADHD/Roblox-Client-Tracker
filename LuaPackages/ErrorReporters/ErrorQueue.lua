local CorePackages = game:GetService("CorePackages")
local RunService = game:GetService("RunService")

local Cryo = require(CorePackages.Packages.Cryo)
local t = require(CorePackages.Packages.t)

-- Time limit is in seconds.
local DEFAULT_QUEUE_TIME_LIMIT = 30
local DEFAULT_QUEUE_ERROR_LIMIT = 30
local DEFAULT_QUEUE_KEY_LIMIT = 10

local ErrorQueue = {}
ErrorQueue.__index = ErrorQueue

local IErrorQueue = t.tuple(
	t.callback,
	t.optional(t.strictInterface({
		queueTimeLimit = t.optional(t.numberPositive),
		queueErrorLimit = t.optional(t.numberPositive),
		queueKeyLimit = t.optional(t.numberPositive),
	}))
)

function ErrorQueue.new(reportMethod, options)
	assert(IErrorQueue(reportMethod, options))

	options = options or {}

	local self = {
		_reportMethod = reportMethod,

		-- config
		_queueTimeLimit = options.queueTimeLimit or DEFAULT_QUEUE_TIME_LIMIT,
		_queueErrorLimit = options.queueErrorLimit or DEFAULT_QUEUE_ERROR_LIMIT,
		_queueKeyLimit = options.queueKeyLimit or DEFAULT_QUEUE_KEY_LIMIT,

		_errors = {},
		_totalErrorCount = 0,
		_totalKeyCount = 0,

		_runningTime = 0,
		_renderSteppedConnection = nil,
	}

	setmetatable(self, ErrorQueue)

	return self
end

function ErrorQueue:hasError(errorKey)
	if type(errorKey) ~= "string" or errorKey == "" then
		return false
	else
		return self._errors[errorKey] ~= nil
	end
end

function ErrorQueue:addError(errorKey, errorData)
	if type(errorKey) ~= "string" or errorKey == "" then
		return
	end

	if not self._errors[errorKey] then
		-- Errors with the same key will be sent together as 1 error, with a count parameter.
		-- We only keep the data from the oldest error with this key in the queue.
		self._errors[errorKey] = {
			data = errorData,
			count = 1,
		}
		self._totalKeyCount = self._totalKeyCount + 1
	else
		self._errors[errorKey].count = self._errors[errorKey].count + 1
	end

	self._totalErrorCount = self._totalErrorCount + 1

	if self:isReadyToReport() then
		self:reportAllErrors()
	end
end

function ErrorQueue:isReadyToReport()
	return self._totalKeyCount >= self._queueKeyLimit or
		self._totalErrorCount >= self._queueErrorLimit or
		(self._totalErrorCount > 0 and self._runningTime >= self._queueTimeLimit)
end

function ErrorQueue:reportAllErrors()
	-- copy the error queue and instantly clear it out
	local errors = Cryo.Dictionary.join(self._errors, {})

	self._errors = {}
	self._totalErrorCount = 0
	self._totalKeyCount = 0
	self._runningTime = 0

	-- report the errors
	for errorKey, errData in pairs(errors) do
		self._reportMethod(errorKey, errData.data, errData.count)
	end
end

function ErrorQueue:_onRenderStep(dt)
	self._runningTime = self._runningTime + dt

	if self:isReadyToReport() then
		self:reportAllErrors()
	end
end

function ErrorQueue:startTimer()
	if self._renderSteppedConnection == nil then
		self._runningTime = 0

		self._renderSteppedConnection = RunService.renderStepped:Connect(function(dt)
			self:_onRenderStep(dt)
		end)
	end
end

function ErrorQueue:stopTimer()
	if self._renderSteppedConnection ~= nil then
		self._renderSteppedConnection:Disconnect()
		self._runningTime = 0
		self._renderSteppedConnection = nil
	end
end

return ErrorQueue
