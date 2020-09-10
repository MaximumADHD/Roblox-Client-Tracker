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
			self.pauseChangedConnection = self.operation.PausedChanged:Connect(function(newPaused)
				self:setState({
					paused = newPaused,
				})
			end
			self.runningChangedConnection = self.operation.RunningChanged:Connect(function(newRunning)
				self:setState({
					running = newRunning,
				})
			end)
			self.progressChangedConnection = self.operation.ProgressChanged:Connect(function(progress)
				self:setState({
					progress = progress,
				})
			end

			self.operation:start()
		end

		function FooComponent:willUnmount()
			self.pauseChanged:Disconnect()
			self.runningChangedConnection:Disconnect()
			self.progressChangedConnection:Disconnect()
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

		callback onError(data : table, self : LongOperation) optional
			Fired if any callback errors. Use self:getErorrMessage() to get the error that was thrown.
			If an error does occur, then onFinish() will still be fired. Use self:didError() to check for that case.

		number timeBetweenSteps = 0 seconds
			How long to wait between each step. Defaults to 0 which is the shortest time a wait() call can yield

		number timeBetweenPauseChecks = 0.1 seconds
			How long to wait between checking if the operation has resumed. Defaults to 0.1 seconds
]]

local FFlagTerrainToolsUseDevFramework = game:GetFastFlag("TerrainToolsUseDevFramework")

local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local UILibrary = not FFlagTerrainToolsUseDevFramework and require(Plugin.Packages.UILibrary) or nil

local FrameworkUtil = FFlagTerrainToolsUseDevFramework and Framework.Util or nil
local Signal = FFlagTerrainToolsUseDevFramework and FrameworkUtil.Signal or UILibrary.Util.Signal

local quickWait = require(Plugin.Src.Util.quickWait)

local LongOperation = {}
LongOperation.__index = LongOperation

function LongOperation.new(options)
	assert(type(options) == "table", "LongOperation needs an options table")

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
		_onErrorFunc = options.onError,

		_timeBetweenSteps = options.timeBetweenSteps or 0,
		_timeBetweenPauseChecks = options.timeBetweenPauseChecks or 0.1,

		_operationData = {},

		_hasStarted = false,
		_isPaused = false,
		_wasCanceled = false,
		_hasFinished = false,
		_isRunning = false,
		_operationProgress = 0,

		-- If errorMessage is nil, then no callback has errored
		-- If it is non-nil (i.e. a string), then a callback did error
		_errorMessage = nil,

		_startTime = 0,
		_endTime = 0,
		_yieldTime = 0,
	}, LongOperation)

	assert(self._onStepFunc and type(self._onStepFunc) == "function",
		"LongOperation.new() requires an onStep callback")

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
	self.Started:Fire()
	self.RunningChanged:Fire(true)

	spawn(function()
		self:_runOperation()
	end)
end

function LongOperation:pause()
	if not self._hasStarted or self._hasFinished or self._wasCanceled or self._isPaused then
		return
	end
	self._isPaused = true
	self.Paused:Fire()
	self.PausedChanged:Fire(true)
end

function LongOperation:resume()
	if not self._hasStarted or self._hasFinished or self._wasCanceled or not self._isPaused then
		return
	end
	self._isPaused = false
	self.Resumed:Fire()
	self.PausedChanged:Fire(false)
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
	self.Canceled:Fire()
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

function LongOperation:didError()
	return not not self._errorMessage
end

function LongOperation:getErrorMessage()
	return self._errorMessage
end

function LongOperation:getProgress()
	return self._operationProgress
end

function LongOperation:_setProgress(progress)
	if self._operationProgress ~= progress then
		self._operationProgress = progress
		self.ProgressChanged:Fire(progress)
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

function LongOperation:_handleError(errorMessage)
	-- We've already thrown an error
	-- This case implies either the onError callback or onFinish callback after an onError threw an error
	-- At that point, we don't care about further errors, and don't want to get into an infinite loop
	-- So just ignore it
	if self:didError() then
		return
	end

	-- Explicitly don't allow errorMessage to be nil
	-- We check if we have errored by checking if errorMessage is not nil
	self._errorMessage = tostring(errorMessage) or ""

	-- Safely call the onError callback
	-- This could itself throw another error, but we ignore it
	self:_runCallback(self._onErrorFunc)
end

-- Safely runs the given callback
-- If it throws an error, then we use self:_handleError() to resolve it, and this method returns false
-- Else returns true and any values returned from the callback
function LongOperation:_runCallback(callback)
	if not callback then
		return false
	end

	local ret
	local success = xpcall(function()
		ret = {callback(self._operationData, self)}
	end, function(errorMessage)
		self:_handleError(errorMessage)
	end)

	if success then
		return true, unpack(ret)
	end
	return false
end

-- Assume it's running on a new thread so it won't block
function LongOperation:_runOperation()
	-- Tell the world we're starting
	self:_runCallback(self._onStartFunc)
	self:_yield(self._timeBetweenSteps)

	local wasPaused = false

	-- Loop until we either throw an error, or break is explicitly used in the loop
	while not self:didError() do
		if self._wasCanceled then
			-- Operation was cancelled so tell the world and stop the loop
			self:_runCallback(self._onCancelFunc)
			break
		end

		if self._isPaused then
			-- We've gone from not-paused to paused, so tell the world about the change
			if not wasPaused then
				if not self:_runCallback(self._onPauseFunc) then
					break
				end
			end
			wasPaused = true

			-- Yield for a bit before checking if we're still paused
			self:_yield(self._timeBetweenPauseChecks)

		else
			-- We've gone from paused to not-paused, so tell the world about the change
			if wasPaused then
				if not self:_runCallback(self._onResumeFunc) then
					break
				end
			end
			wasPaused = false

			-- Do a step of the operation and update the progress
			local success, continue, progress = self:_runCallback(self._onStepFunc)
			if not success then
				break
			end
			self:_setProgress(progress)

			-- Operation said it's finished so stop the loop
			if not continue then
				break
			end

			-- Yield a bit between each step
			self:_yield(self._timeBetweenSteps)
		end
	end

	-- Tell the world we've finished
	self._hasFinished = true
	self._isRunning = false
	self._endTime = tick()

	self.RunningChanged:Fire(false)
	self:_runCallback(self._onFinishFunc)
	self.Finished:Fire()
end

return LongOperation
