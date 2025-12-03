local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local ReactUtils = require(Packages.ReactUtils)
local useClock = ReactUtils.useClock

local DEFAULT_RANGE = NumberRange.new(0, 1)

--[[
	Creates a pulsating animation binding that rotates every `cycleTime`.
	Custom pulsing range can be supplied through `pulseRange`.
	Used in Skeleton and Progress (reduced motion) for reference.
]]
local function usePulseBinding(cycleTime: number?, pulseRange: NumberRange?)
	local clock = useClock()

	local period = if cycleTime then cycleTime else 1
	local range = if pulseRange then pulseRange else DEFAULT_RANGE

	return React.useMemo(function()
		return clock:map(function(value: number)
			return math.map(math.sin(value * math.pi / period) ^ 2, 0, 1, range.Min, range.Max)
		end)
	end, { cycleTime :: unknown, pulseRange })
end

return usePulseBinding
