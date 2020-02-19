--[[
	LongOperation.lua
	Wraps an operation that can take a long time so that it doesn't block the main thread, and can be paused, resumed
	and canceled once started.


	Usage:

		function FooComponent:init()
			self.operation = LongOperation.new({
				onStart = function(data) -- data is a table shared between and passed to all callbacks
					data.tasks = getTasks()
					data.totalTasks = #data.tasks
					data.currentIndex = 1
				end,

				onStep = function(data)
					local currentIndex
					local tasksPerStep = 100
					for i = 1, tasksPerStep, 1 do
						local index = data.currentIndex + i
						currentIndex = index
						if index > data.totalTasks then
							break
						end

						performTask(data.tasks[index])
					end

					-- Save how far we got for the next time
					data.currentIndex = currentIndex
					if currentIndex > data.totalTasks then
						-- Reached the end of the list so return false
						return false, 0
					else
						-- Haven't reached the end of the list yet
						-- Return true to continue, and then a number that is the progress so far
						return true, currentIndex / data.totalTasks
					end
				end,
			})

			self.state = {
				paused = false,
				progress = 0,
				running = false,
			}
		end

		function FooComponent:didMount()
			self.pauseChangedConnection = self.operation.PausedChanged:connect(function(newPaused)
				self:setState({
					paused = newPaused,
				})
			end
			self.runningChangedConnection = self.operation.RunningChanged:connect(function(newRunning)
				self:setState({
					running = newRunning,
				})
			end)
			self.progressChangedConnection = self.operation.ProgressChanged:connect(function(progress)
				self:setState({
					progress = progress,
				})
			end

			self.operation:start()
		end

		function FooComponent:willUnmount()
			self.pauseChanged:disconnect()
			self.runningChangedConnection:disconnect()
			self.progressChangedConnection:disconnect()
			self.operation:destroy()
		end

		function FooComponent:render()
			return Roact.createFragment({
				Progress = Roact.createElement("TextLabel", {
					Text = ("%i%%"):format(math.floor((self.state.progress * 100) + 0.5)),
				}),

				PauseButton = self.state.running and Roact.createElement("TextButton", {
					Text = self.state.paused and "Resume" or "Pause",
					[Roact.Event.Activated] = function()
						self.operation:togglePause()
					end,
				}),

				CancelButton = self.state.running and Roact.createElement("TextButton", {
					Text = "Cancel",
					[Roact.Event.Activated] = function()
						self.operation:cancel()
					end,
				})
			})
		end


	Constructor options
		callback onStep(data : table, self : LongOperation) -> (bool, number)
			Fired each step of the operation. Perform the work of the operation in this callback.
			Once you've done enough and would like to yield before continuing, return from this callback
			Returns are:
				bool continue : True if we should keep going, false if the operation has finished
				number progress : A value to indicate how far along the operation is
				                  LongOperation class doesn't use this value, so you can use any range, but 0-1 is recommended

		callback onStart(data : table, self : LongOperation) optional
			Fired when the operation starts

		callback onPause(data : table, self : LongOperation) optional
			Fired when the operation pauses

		callback onResume(data : table, self : LongOperation) optional
			Fired when the operation resumes

		callback onCancel(data : table, self : LongOperation) optional
			Fired when the operation is canceled

		callback onFinish(data : table, self : LongOperation) optional
			Fired when the operation is finished

		number timeBetweenSteps = 0 seconds
			How long to wait between each step. Defaults to 0 which is the shortest time a wait() call can yield

		number timeBetweenPauseChecks = 0.1 seconds
			How long to wait between checking if the operation has resumed. Defaults to 0.1 seconds
]]

local Plugin = script.Parent.Parent.Parent
local UILibrary = Plugin.Packages.UILibrary
local Signal = require(UILibrary.Utils.Signal)
local quickWait = require(Plugin.Src.Util.quickWait)

local LongOperation = {}
LongOperation.__index = LongOperation

function LongOperation.new(options)
	local self = setmetatable({
		Started = Signal.new(),
		Paused = Signal.new(),
		Resumed = Signal.new(),
		PausedChanged = Signal.new(), -- Instead of listening to both Paused and Resumed
		Canceled = Signal.new(),
		Finished = Signal.new(),
		RunningChanged = Signal.new(), -- Instead of listening to both Started and Finished
		ProgressChanged = Signal.new(),

		_name = options.name or "",

		_onStartFunc = options.onStart,
		_onStepFunc = options.onStep,
		_onPauseFunc = options.onPause,
		_onResumeFunc = options.onResume,
		_onCancelFunc = options.onCancel,
		_onFinishFunc = options.onFinish,

		_timeBetweenSteps = options.timeBetweenSteps or 0,
		_timeBetweenPauseChecks = options.timeBetweenPauseChecks or 0.1,

		_operationData = {},

		_hasStarted = false,
		_isPaused = false,
		_wasCanceled = false,
		_hasFinished = false,
		_isRunning = false,
		_operationProgress = 0,

		_startTime = 0,
		_endTime = 0,
		_yieldTime = 0,
	}, LongOperation)

	assert(self._onStepFunc, "LongOperation.new() requires an onStep callback")

	return self
end

function LongOperation:destroy()
	if self._hasStarted then
		if not self._hasFinished and not self._wasCanceled then
			self:cancel()
		end
	end
end

function LongOperation:start(initialData)
	if self._hasStarted then
		return
	end

	if initialData then
		assert(type(initialData) == "table", "LongOperation:start() initialData should be nil or table")
		self._operationData = initialData
	end

	self._hasStarted = true
	self._isRunning = true
	self._startTime = tick()
	self.Started:fire()
	self.RunningChanged:fire(true)

	spawn(function()
		self:_runOperation()
	end)
end

function LongOperation:pause()
	if not self._hasStarted or self._hasFinished or self._wasCanceled or self._isPaused then
		return
	end
	self._isPaused = true
	self.Paused:fire()
	self.PausedChanged:fire(true)
end

function LongOperation:resume()
	if not self._hasStarted or self._hasFinished or self._wasCanceled or not self._isPaused then
		return
	end
	self._isPaused = false
	self.Resumed:fire()
	self.PausedChanged:fire(false)
end

function LongOperation:togglePause()
	if not self._hasStarted or self._hasFinished or self._wasCanceled then
		return
	end

	if self._isPaused then
		self:resume()
	else
		self:pause()
	end
end

function LongOperation:cancel()
	if not self._hasStarted or self._hasFinished or self._wasCanceled then
		return
	end
	self._wasCanceled = true
	self.Canceled:fire()
end

function LongOperation:getName()
	return self._name
end

function LongOperation:getOperationData()
	return self._operationData
end

function LongOperation:hasStarted()
	return self._hasStarted
end

function LongOperation:isPaused()
	return self._isPaused
end

function LongOperation:wasCanceled()
	return self._wasCanceled
end

function LongOperation:hasFinished()
	return self._hasFinished
end

function LongOperation:isRunning()
	return self._isRunning
end

function LongOperation:getProgress()
	return self._operationProgress
end

function LongOperation:_setProgress(progress)
	if self._operationProgress ~= progress then
		self._operationProgress = progress
		self.ProgressChanged:fire(progress)
	end
end

function LongOperation:getTimeTaken()
	if not self._hasFinished then
		return 0
	end
	return self._endTime - self._startTime
end

function LongOperation:getYieldTime()
	return self._yieldTime
end

function LongOperation:getWorkTime()
	if not self._hasFinished then
		return 0
	end
	return self:getTimeTaken() - self:getYieldTime()
end

function LongOperation:_yield(...)
	local startYieldTime = tick()
	quickWait(...)
	local endYieldTime = tick()
	self._yieldTime = self._yieldTime + (endYieldTime - startYieldTime)
end

-- Assume it's running on a new thread so it won't block
function LongOperation:_runOperation()
	-- Tell the world we're starting
	if self._onStartFunc then
		self._onStartFunc(self._operationData, self)
		self:_yield(self._timeBetweenSteps)
	end

	local wasPaused = false
	repeat
		if self._wasCanceled then
			-- Operation was cancelled so tell the world and stop the loop
			if self._onCancelFunc then
				self._onCancelFunc(self._operationData, self)
			end
			break
		end

		if self._isPaused then
			-- We've gone from not-paused to paused, so tell the world about the change
			if not wasPaused then
				if self._onPauseFunc then
					self._onPauseFunc(self._operationData, self)
				end
			end
			wasPaused = true

			-- Yield for a bit before checking if we're still paused
			self:_yield(self._timeBetweenPauseChecks)

		else
			-- We've gone from paused to not-paused, so tell the world about the change
			if wasPaused then
				if self._onResumeFunc then
					self._onResumeFunc(self._operationData, self)
				end
			end
			wasPaused = false

			-- Do a step of the operation and update the progress
			local continue, progress = self._onStepFunc(self._operationData, self)
			self:_setProgress(progress)

			-- Operation said it's finished so stop the loop
			if not continue then
				break
			end

			-- Yield a bit between each step
			self:_yield(self._timeBetweenSteps)
		end
	until false

	-- Tell the world we've finished
	self._hasFinished = true
	self._isRunning = false
	self._endTime = tick()
	self.RunningChanged:fire(false)
	if self._onFinishFunc then
		self._onFinishFunc(self._operationData, self)
	end
	self.Finished:fire()
end

return LongOperation
