local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local ReactUtils = require(Packages.ReactUtils)
local useClock = ReactUtils.useClock

local NUM_DEGREES = 360

-- Returns a binding representing a rotation based on the current clock time
local function useRotation(speed: number?): React.Binding<number>
	local clockBinding = useClock()

	return clockBinding:map(function(value: number)
		return value * NUM_DEGREES * (speed or 1)
	end)
end

return useRotation
