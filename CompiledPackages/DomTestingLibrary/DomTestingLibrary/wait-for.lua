-- ROBLOX upstream: https://github.com/testing-library/dom-testing-library/blob/v8.14.0/src/wait-for.js
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean
local Error = LuauPolyfill.Error
local Object = LuauPolyfill.Object
local clearInterval = LuauPolyfill.clearInterval
local clearTimeout = LuauPolyfill.clearTimeout
local setInterval = LuauPolyfill.setInterval
local setTimeout = LuauPolyfill.setTimeout
type Error = LuauPolyfill.Error
type Promise<T> = LuauPolyfill.Promise<T>

local Promise = require(Packages.Promise)

local isCallable = require(script.Parent.jsHelpers.isCallable)
local TypeError = require(script.Parent.jsHelpers.typeError)
local waitForTypes = require(script.Parent.types["wait-for"])
type waitForOptions = waitForTypes.waitForOptions

local exports = {}

local helpersModule = require(script.Parent.helpers)
local _getWindowFromNode = helpersModule.getWindowFromNode
local getDocument = helpersModule.getDocument
local jestFakeTimersAreEnabled = helpersModule.jestFakeTimersAreEnabled
-- We import these from the helpers rather than using the global version
-- because these will be *real* timers, regardless of whether we're in
-- an environment that's faked the timers out.
local checkContainerType = helpersModule.checkContainerType
local configModule = require(script.Parent.config)
local getConfig = configModule.getConfig
local runWithExpensiveErrorDiagnosticsDisabled = configModule.runWithExpensiveErrorDiagnosticsDisabled

-- This is so the stack trace the developer sees is one that's
-- closer to their code (because async stack traces are hard to follow).
local function copyStackTrace(target: Error, source: Error)
	target.stack = if source.stack then source.stack:gsub(source.message, target.message) else target.message
end

local function waitFor(callback, ref)
	local container = if ref.container == nil then getDocument() else ref.container
	local timeout, showOriginalStackTrace, stackTraceError, interval, onTimeout, _mutationObserverOptions =
		if ref.timeout == nil then getConfig().asyncUtilTimeout else ref.timeout,
		if ref.showOriginalStackTrace == nil then getConfig().showOriginalStackTrace else ref.showOriginalStackTrace,
		ref.stackTraceError,
		if ref.interval == nil then 50 else ref.interval,
		if ref.onTimeout == nil
			then function(error_)
				error_.message = getConfig().getElementError(error_.message, container).message
				return error_
			end
			else ref.onTimeout,
		if ref.mutationObserverOptions == nil
			then { subtree = true, childList = true, attributes = true, characterData = true }
			else ref.mutationObserverOptions
	if not isCallable(callback) then
		error(TypeError.new("Received `callback` arg must be a function"))
	end

	return Promise.new(function(resolve, reject)
		local lastError, intervalId, _observer
		local finished = false
		local promiseStatus = "idle"
		local usingJestFakeTimers = jestFakeTimersAreEnabled()

		-- ROBLOX deviation START: added to hold connections to behave like MutationObserver
		local connections = {}
		-- ROBLOX deviation END

		-- ROBLOX deviation START: moved things around before usage
		local overallTimeoutTimer

		local function onDone(error_, result)
			finished = true
			clearTimeout(overallTimeoutTimer)

			if not usingJestFakeTimers then
				clearInterval(intervalId)
				-- observer:disconnect()
				-- ROBLOX deviation START: disconnect all connections
				for i = 1, #connections do
					connections[i]:Disconnect()
				end
				connections = {}
				-- ROBLOX deviation END
			end

			if Boolean.toJSBoolean(error_) then
				reject(error_)
			else
				resolve(result)
			end
		end

		local function handleTimeout()
			local error_
			if Boolean.toJSBoolean(lastError) then
				error_ = lastError
				if not showOriginalStackTrace and error_.name == "TestingLibraryElementError" then
					copyStackTrace(error_, stackTraceError)
				end
			else
				error_ = Error.new("Timed out in waitFor.")
				if not showOriginalStackTrace then
					copyStackTrace(error_, stackTraceError)
				end
			end
			onDone((onTimeout :: any)(error_), nil)
		end

		overallTimeoutTimer = setTimeout(handleTimeout, timeout)

		local function checkCallback()
			if promiseStatus == "pending" then
				return
			end

			local ok, result_ = pcall(function()
				local result = runWithExpensiveErrorDiagnosticsDisabled(callback)
				if isCallable(if typeof(result) == "table" then result["andThen"] else nil) then
					promiseStatus = "pending"
					result:andThen(function(resolvedValue)
						promiseStatus = "resolved"
						onDone(nil, resolvedValue)
					end, function(rejectedValue)
						promiseStatus = "rejected"
						lastError = rejectedValue
					end)
				else
					onDone(nil, result)
				end
			end)
			-- If `callback` throws, wait for the next mutation, interval, or timeout.
			if not ok then
				-- Save the most recent callback error to reject the promise with it in the event of a timeout
				lastError = result_
			end
		end

		local function checkRealTimersCallback(): ()
			if jestFakeTimersAreEnabled() then
				local error_ = Error.new(
					"Changed from using real timers to fake timers while using waitFor. This is not allowed and will result in very strange behavior. Please ensure you're awaiting all async things your test is doing before changing to fake timers. For more info, please go to https://github.com/testing-library/dom-testing-library/issues/830"
				)
				if not showOriginalStackTrace then
					copyStackTrace(error_, stackTraceError)
				end
				return reject(error_)
			else
				return checkCallback()
			end
		end
		-- ROBLOX deviation END

		if usingJestFakeTimers then
			-- ROBLOX deviation: import jest here instead of expecting a global
			local jest = require(Packages.JestGlobals).jest

			local advanceTimersWrapper = getConfig().unstable_advanceTimersWrapper
			checkCallback()
			-- this is a dangerous rule to disable because it could lead to an
			-- infinite loop. However, eslint isn't smart enough to know that we're
			-- setting finished inside `onDone` which will be called when we're done
			-- waiting or when we've timed out.
			-- eslint-disable-next-line no-unmodified-loop-condition
			while not finished do
				if not jestFakeTimersAreEnabled() then
					local error_ = Error.new(
						"Changed from using fake timers to real timers while using waitFor. This is not allowed and will result in very strange behavior. Please ensure you're awaiting all async things your test is doing before changing to real timers. For more info, please go to https://github.com/testing-library/dom-testing-library/issues/830"
					)
					if not showOriginalStackTrace then
						copyStackTrace(error_, stackTraceError)
					end
					reject(error_)
					return
				end
				-- we *could* (maybe should?) use `advanceTimersToNextTimer` but it's
				-- possible that could make this loop go on forever if someone is using
				-- third party code that's setting up recursive timers so rapidly that
				-- the user's timer's don't get a chance to resolve. So we'll advance
				-- by an interval instead. (We have a test for this case).
				advanceTimersWrapper(function(): ()
					jest.advanceTimersByTime(interval)
					-- ROBLOX deviation START: we need to allow tasks queued via the
					-- Roblox scheduler with `task.defer` to play out
					task.defer(coroutine.running())
					coroutine.yield()
					-- ROBLOX deviation END
				end)

				-- It's really important that checkCallback is run *before* we flush
				-- in-flight promises. To be honest, I'm not sure why, and I can't quite
				-- think of a way to reproduce the problem in a test, but I spent
				-- an entire day banging my head against a wall on this.
				checkCallback()
				if finished then
					break
				end

				-- In this rare case, we *need* to wait for in-flight promises
				-- to resolve before continuing. We don't need to take advantage
				-- of parallelization so we're fine.
				-- https://stackoverflow.com/a/59243586/971592
				-- eslint-disable-next-line no-await-in-loop
				-- ROBLOX deviation START: currently handling Promises but not thenables
				(advanceTimersWrapper(function()
					return Promise.resolve():andThen(function()
						Promise.new(function(r)
							setTimeout(r, 0)
							-- ROBLOX deviation: our version of
							-- `advanceTimersByTime` throws instead of warning,
							-- so we pcall to avoid rejecting this promise
							pcall(jest.advanceTimersByTime, 0)
						end):expect()
					end)
				end) :: Promise<any>):expect()
				-- ROBLOX deviation END
			end
		else
			-- ROBLOX FIXME Luau: checkContainer returns void but we still want to capture error if there is
			local ok, result = pcall(checkContainerType :: any, container)
			if not ok then
				reject(result)
				return
			end
			intervalId = setInterval(checkRealTimersCallback, interval)
			--[[
				ROBLOX deviation START: Mutation observer not available. May have to adjust options
				* supports adding/removing Descendants
			]]
			-- local MutationObserver = getWindowFromNode(container).MutationObserver
			-- observer = MutationObserver.new(checkRealTimersCallback)
			-- observer:observe(container, mutationObserverOptions)

			-- ROBLOX deviation START: Helper Method to replace MutationObserver
			local function observeDescendantsAddedRemoved(rbx: Instance, cb: () -> ())
				table.insert(
					connections,
					rbx.ChildAdded:Connect(function(rbx)
						observeDescendantsAddedRemoved(rbx, cb)
						cb()
					end)
				)

				table.insert(
					connections,
					rbx.ChildRemoved:Connect(function(_rbx)
						cb()
					end)
				)
			end

			observeDescendantsAddedRemoved(container, checkRealTimersCallback)
			-- ROBLOX deviation END
			checkCallback()
		end

		-- ROBLOX deviation: explicit return
		return
	end)
end
local function waitForWrapper(callback, options: waitForOptions?)
	-- create the error here so its stack trace is as close to the
	-- calling code as possible
	local stackTraceError = Error.new("STACK_TRACE_MESSAGE")
	return getConfig().asyncWrapper(function()
		return waitFor(callback, Object.assign({}, { stackTraceError = stackTraceError }, options))
	end)
end
exports.waitFor = waitForWrapper
--[[
eslint
  max-lines-per-function: ["error", {"max": 200}],
]]
return exports
