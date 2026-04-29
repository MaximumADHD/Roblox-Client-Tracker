local Dash = script.Parent
local assign = require(Dash.assign)

type ThrottleOptions = {
	leading: boolean?,
	trailing: boolean?,
}

type ThrottleOptionsInternal = {
	leading: boolean,
	trailing: boolean,
}

-- `& (...any) -> ...any` in the function type is a funky way to mimick `T extends function`
type AnyVoidFunction = (...any) -> ()
type Throttled<T> = T & AnyVoidFunction

--[=[
	Creates and returns a new throttled version of the passed function which will ensure that the function is
	called at most once during the specified wait period. If called multiple times during the wait period, only
	the first call will be executed immediately, and subsequent calls will be ignored until the wait period has elapsed.

	The last call will always be done after the same delay.
	```

	@param func The function to throttle.
	@param wait The number of seconds to throttle invocations to.
	@param options Optional throttle options:
		- leading: boolean? (if true, call at the start of the window; default true)
		- trailing: boolean? (if true, call at the end of the window; default true)
	@return The new throttled function.
	@example
	```luau
		local throttled = throttle(function(v) print(v) end, 0.1)
		for i = 1, 10 do
			throttled(i)
		end
		-- Would result in:
		-- 1
		-- 10
	```
]=]
local function throttle<T>(func: T & AnyVoidFunction, wait: number, options: ThrottleOptions?): Throttled<T>
	local defaultOptions: ThrottleOptionsInternal = {
		leading = true,
		trailing = true,
	}

	local resolvedOptions = assign(defaultOptions, options) :: ThrottleOptionsInternal

	local delay = math.max(0, wait)
	local leading = resolvedOptions.leading
	local trailing = resolvedOptions.trailing

	local lastExecutionTime = -math.huge
	local scheduledThread: thread? = nil
	local lastArgs: { unknown } = {}

	local function clearScheduled()
		if scheduledThread then
			task.cancel(scheduledThread)
			scheduledThread = nil
		end
	end

	local function invoke()
		lastExecutionTime = os.clock()
		scheduledThread = nil;
		(func :: AnyVoidFunction)(table.unpack(lastArgs))
	end

	return (
		function(...)
			local now = os.clock()
			lastArgs = { ... }

			--[[
				We calculate timeSinceExecution to determine if enough time has passed since the last execution
				to allow a new "leading" call. This is important for the very first call, where
				lastExecutionTime is initialized to -math.huge, so timeSinceExecution will be very large,
				ensuring the first call is always allowed if leading is enabled.
			]]
			local timeSinceExecution = now - lastExecutionTime

			if leading and timeSinceExecution >= delay then
				clearScheduled()
				invoke()
				return
			end

			--[[
				For trailing calls, we need to schedule the function to run after the remaining time in the throttle window.
				We calculate (now - baseTime) separately because:
				  - On the very first call (lastExecutionTime == -math.huge), we want the trailing call to be scheduled
				    after the full delay from now, not some huge negative value.
				  - On subsequent calls, baseTime is lastExecutionTime, so (now - baseTime) gives us the elapsed time
				    since the last execution, and (delay - (now - baseTime)) is the remaining time to wait.
				This ensures that the trailing call is always scheduled to run at the end of the throttle window,
				regardless of when the first or last call happened.
			]]
			if trailing and not scheduledThread then
				local baseTime = (lastExecutionTime == -math.huge) and now or lastExecutionTime
				local remaining = delay - (now - baseTime)
				if remaining < 0 then
					remaining = 0
				end
				scheduledThread = task.delay(remaining, invoke)
			end
		end :: unknown
	) :: Throttled<T>
end

return throttle
