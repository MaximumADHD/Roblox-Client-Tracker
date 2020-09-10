--[[
	LongOperationQueue.lua
	Manages a queue of LongOperation objects.
	When one finishes, this will automatically start the next in queue and pass the data from one operation to the next.

	Example:
		local loq = LongOperationQueue.new()
		loq.QueueRunningChanged:Connect(function(running)
			if running then
				print("Started running")
			else
				print("Finished!")
			end
		end)
		loq.NextOperationStarted:Connect(function(operation)
			print("Now starting operation:", operation:getName())
		end)
		loq
			:addToQueue(initialTask)
			:addToQueue(someOtherTask)
			:addToQueue(oneMoreTask)
			:start({
				initialData = "Goes here",
				andPassesBetweenOperations = true,
			})
]]

local FFlagTerrainToolsUseDevFramework = game:GetFastFlag("TerrainToolsUseDevFramework")

local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local UILibrary = not FFlagTerrainToolsUseDevFramework and require(Plugin.Packages.UILibrary) or nil

local FrameworkUtil = FFlagTerrainToolsUseDevFramework and Framework.Util or nil
local Signal = FFlagTerrainToolsUseDevFramework and FrameworkUtil.Signal or UILibrary.Util.Signal

local quickWait = require(Plugin.Src.Util.quickWait)

local LongOperationQueue = {}
LongOperationQueue.__index = LongOperationQueue

function LongOperationQueue.new(options)
	options = options or {}
	local self = setmetatable({
		_timeBetweenOperations = options.timeBetweenOperations or 0,

		_queue = {},

		_currentOperationIndex = 0,
		_currentOperation = nil,
		_currentOperationConnections = nil,

		-- Used to pass the result from one operation to the next
		_lastOperationData = {},
		_lastOperationErrorMessage = nil,

		_queueRunning = false,
		QueueRunningChanged = Signal.new(),

		NextOperationStarted = Signal.new(),

		_paused = false,
		PausedChanged = Signal.new(),

		_progress = 0,
		ProgressChanged = Signal.new(),

		_wasCanceled = false,
	}, LongOperationQueue)

	self._updateProgress = function(newProgress)
		self._progress = newProgress
		self.ProgressChanged:Fire(newProgress)
	end

	self._updatePaused = function(newPaused)
		self._paused = newPaused
		self.PausedChanged:Fire(newPaused)
	end

	self._updateRunning = function(newRunning)
		if newRunning then
			self:_setQueueRunning(true)
		end
	end

	self._operationFinished = function()
		self:_cleanupCurrentOperation()

		if self._wasCanceled or self:didError() then
			-- If we were canceled or an operation threw an error then just stop
			-- Don't try to run the next in the queue
			self:_setQueueRunning(false)

		else
			if self:_hasNextOperation() then
				quickWait(self._timeBetweenOperations)
				self:_moveToNextOperation()
				self:_startCurrentOperation()
			else
				self:_setQueueRunning(false)
			end
		end
	end

	return self
end

function LongOperationQueue:reset()
	self:destroy()

	self._queue = {}
	self._currentOperationIndex = 0
	self._lastOperationData = {}
	self._queueRunning = false
	self._paused = false
	self._progress = 0
	self._wasCanceled = false

	return self
end

function LongOperationQueue:destroy()
	if self._currentOperation then
		self:_cleanupCurrentOperation()
	end
end

function LongOperationQueue:addToQueue(operation)
	table.insert(self._queue, operation)
	return self
end

function LongOperationQueue:start(initialData)
	assert(not self._currentOperation, "LongOperationQueue is already running an operation")
	assert(self:_hasNextOperation(), "LongOperationQueue has no operation to run")

	if initialData then
		assert(type(initialData) == "table", "LongOperationQueue:start() initialData should be nil or table")
		self._lastOperationData = initialData
	end

	self:_moveToNextOperation()
	self:_startCurrentOperation()
end

function LongOperationQueue:pause()
	if self._currentOperation then
		self._currentOperation:pause()
	end
end

function LongOperationQueue:resume()
	if self._currentOperation then
		self._currentOperation:resume()
	end
end

function LongOperationQueue:togglePause()
	if self._currentOperation then
		self._currentOperation:togglePause()
	end
end

function LongOperationQueue:cancel()
	self._wasCanceled = true
	if self._currentOperation then
		self._currentOperation:cancel()
	end
end

function LongOperationQueue:isQueueRunning()
	return self._queueRunning
end

function LongOperationQueue:getProgress()
	return self._progress
end

function LongOperationQueue:isPaused()
	return self._paused
end

function LongOperationQueue:didError()
	return not not self._lastOperationErrorMessage
end

function LongOperationQueue:getErrorMessage()
	return self._lastOperationErrorMessage
end

function LongOperationQueue:_setQueueRunning(queueRunning)
	if self._queueRunning ~= queueRunning then
		self._queueRunning = queueRunning
		self.QueueRunningChanged:Fire(queueRunning)
	end
end

function LongOperationQueue:_startCurrentOperation()
	local operation = self._currentOperation
	assert(operation, "LongOperationQueue:_startCurrentOperation() has no operation to start)")
	self._updateProgress(0)
	self.NextOperationStarted:Fire(operation)
	operation:start(self._lastOperationData or {})
end

function LongOperationQueue:_hasNextOperation()
	return self._currentOperationIndex + 1 <= #self._queue
end

function LongOperationQueue:_moveToNextOperation()
	assert(not self._currentOperation, "LongOperationQueue is already running an operation")

	if not self:_hasNextOperation() then
		return false
	end

	self._currentOperationIndex = self._currentOperationIndex + 1
	self._currentOperation = self._queue[self._currentOperationIndex]
	self._currentOperationConnections = {
		progressChanged = self._currentOperation.ProgressChanged:Connect(self._updateProgress),
		pausedChanged = self._currentOperation.PausedChanged:Connect(self._updatePaused),
		runningChanged = self._currentOperation.RunningChanged:Connect(self._updateRunning),
		finished = self._currentOperation.Finished:Connect(self._operationFinished),
	}

	return true
end

function LongOperationQueue:_cleanupCurrentOperation()
	assert(self._currentOperation, "LongOperationQueue has no operation to clean up")

	self._lastOperationData = self._currentOperation:getOperationData()
	self._lastOperationErrorMessage = self._currentOperation:getErrorMessage()

	for _, connection in pairs(self._currentOperationConnections) do
		connection:Disconnect()
	end
	self._currentOperationConnections = nil

	self._currentOperation:destroy()
	self._currentOperation = nil
end

return LongOperationQueue
