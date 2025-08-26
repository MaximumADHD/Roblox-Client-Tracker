--[=[
	Creates and returns a new throttled version of the passed function which will ensure that the function is called at most once during the specified wait period. If called multiple times during the wait period, only the first call will be executed immediately, and subsequent calls will be ignored until the wait period has elapsed.

	The last call will always be done after the same delay.

	@param func The function to throttle.
	@param wait The number of seconds to throttle invocations to.
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
local function throttle<T>(func: T & (...any) -> ...any, wait: number): T
	local lastCallTime = 0
	local delayedCall: thread? = nil
	local lastArgs

	local function invoke()
		lastCallTime = os.clock()
		delayedCall = nil;
		(func :: (...any) -> ...any)(table.unpack(lastArgs))
	end

	return (
		function(...)
			local currentTime = os.clock()
			local timeSinceLastCall = currentTime - lastCallTime
			-- Keep the reference to the latest argument call even though we don't recreated a delayedCall every time
			lastArgs = { ... }

			if timeSinceLastCall >= wait then
				invoke()
			elseif not delayedCall then
				-- Schedule a call at the end of the throttle period
				local remainingTime = wait - timeSinceLastCall
				delayedCall = task.delay(remainingTime, invoke)
			end
		end :: unknown
	) :: T
end

return throttle
