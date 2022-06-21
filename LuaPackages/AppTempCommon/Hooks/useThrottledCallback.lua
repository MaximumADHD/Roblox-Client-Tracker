--[[
	Hook that allows a callback to be invoked with a min period.

	If it is called again within that period, a delayed invocation
	will be scheduled. If it is called once again while a delayed
	invocation is already scheduled, that call will be dropped.

	The callback function must not take any parameters and should
	not return any values (because they will be dropped).
]]
local CorePackages = game:GetService("CorePackages")
local Promise = require(CorePackages.Promise)
local React = require(CorePackages.Packages.React)

type Ref<T> = { current: T }

local function useThrottledCallback(callbackParam: () -> (), minPeriodParam: number)
	-- Store the params in refs so we always use the latest version
	local callbackRef: Ref<() -> ()> = React.useRef(callbackParam) :: any
	local periodRef: Ref<number> = React.useRef(minPeriodParam) :: any
	callbackRef.current = callbackParam
	periodRef.current = minPeriodParam

	local pendingPromiseRef = React.useRef(nil)
	local lastRunTicks: Ref<number> = React.useRef(0) :: any

	local requestRun = React.useCallback(function()
		if pendingPromiseRef.current then
			return -- already scheduled
		end

		local minPeriod = (periodRef.current or 0) :: number
		local nextRunTicks = lastRunTicks.current + minPeriod
		local timeToNextRun = nextRunTicks - tick()

		local function runCallback()
			local callback = callbackRef.current :: any
			callback()
			lastRunTicks.current = tick()
			pendingPromiseRef.current = nil
		end

		if timeToNextRun > 0 then
			pendingPromiseRef.current = Promise.delay(timeToNextRun):andThen(runCallback)
		else
			runCallback()
		end
	end)

	React.useEffect(function()
		return function()
			-- Cancel any pending runs when unmounting
			local promise = pendingPromiseRef.current
			if promise then
				promise:cancel()
				-- Run the callback one last time since it was pending
				local callback = callbackRef.current :: any
				callback()
			end
		end
	end, {})

	return requestRun
end

return useThrottledCallback
