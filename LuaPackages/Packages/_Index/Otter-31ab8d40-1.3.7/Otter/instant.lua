--!strict
local types = require(script.Parent.types)
type Goal = types.Goal

local function instant(targetValue): Goal
	return {
		step = function()
			return {
				value = targetValue,
				complete = true,
			}
		end,
		startingValue = targetValue,
	}
end

return instant
