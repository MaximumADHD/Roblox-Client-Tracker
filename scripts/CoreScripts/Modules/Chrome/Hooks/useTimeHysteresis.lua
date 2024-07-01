local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

--[[

useTimeHysteresis can be used to delay actions on a timeline

Inputs:
- lowerEdge: falling edge trigger (active == true)
- upperEdge: rising edge trigger (active == false)
- upperBound: max range.  Implisit lowerBound is zero.

Outputs:
- value: boolean
	The current value
- setRising(rising: booleam, snap: boolean?)
	Used to ramp up/down our time signal
	snap will perform an instant ramp to the bounds

Example:
	local active, setRising = useTimeHysteresis(0.25, .5, 0.75)

		Timeline signal is 0.0 to 0.75
		When time signal is over 0.5, active will become true
		When time signal falls under 0.25, active will become false
--]]

-- todo: consider moving impl to non-React version but keep hook wrapper
--       this might yield cleaner/faster code, perhaps as a loop/wait coroutine

export type seconds = number
return function(
	lowerEdge: seconds,
	upperEdge: seconds,
	upperBound: seconds?,
	initRising: boolean?,
	initSignal: seconds?
)
	if not upperBound then
		upperBound = upperEdge
	end

	local rising, setRising = React.useState(initRising or false)
	local active, setActive = React.useState(false)
	local signal = React.useRef(initRising or 0) :: { current: seconds }
	local snapped = React.useRef(false :: boolean?)

	React.useEffect(function()
		local runStart: seconds = tick()
		local timerHandle: thread | nil = nil
		local triggered = false

		local update = function(timeToTarget, targetValue, threshold)
			if timeToTarget > 0 then
				timerHandle = task.delay(timeToTarget, function()
					triggered = true
					timerHandle = nil
					signal.current = threshold
					setActive(targetValue)
				end)
			elseif active ~= targetValue then
				triggered = true
				setActive(targetValue)
			end
		end

		if rising then
			update(upperEdge - signal.current, true, upperEdge)
		else -- falling
			update(signal.current - lowerEdge, false, lowerEdge)
		end

		local wasRising = rising
		return function()
			if not triggered then
				if timerHandle then
					task.cancel(timerHandle)
				end
				if not snapped.current then
					local ranFor = tick() - runStart
					if not wasRising then
						ranFor = ranFor * -1
					end
					signal.current = math.clamp(signal.current + ranFor, 0, upperBound :: seconds)
				end
			end
			snapped.current = false
		end
	end, { rising :: any, active, lowerEdge, upperEdge, upperBound })

	local setSnappedRising = React.useCallback(function(rising: boolean, snap: boolean?)
		snapped.current = snap
		if snap then
			if rising then
				signal.current = upperBound :: seconds
			else
				signal.current = 0
			end
		end
		setRising(rising)
	end, { setRising })

	return active, setSnappedRising
end
