--!strict

local root = script.Parent.Parent

local Types = require(root.util.Types)
local getFIntUGCValidationMaxMsPerFrame = require(root.flags.getFIntUGCValidationMaxMsPerFrame)
local getFFlagUGCValidationShouldYield = require(root.flags.getFFlagUGCValidationShouldYield)

local MAX_SECONDS_PER_FRAME = getFIntUGCValidationMaxMsPerFrame() / 1000

return function(validationContext: Types.ValidationContext)
	if getFFlagUGCValidationShouldYield() and validationContext.shouldYield then
		local elapsedSeconds = tick() - validationContext.lastTickSeconds :: number
		if elapsedSeconds >= MAX_SECONDS_PER_FRAME then
			task.wait()
			validationContext.lastTickSeconds = tick()
		end
	end
end
