game:DefineFastFlag("EnableCapturesInChrome", false)

local IsExperienceMenuABTestEnabled = require(script.Parent.Parent.Parent.IsExperienceMenuABTestEnabled)
local ExperienceMenuABTestManager = require(script.Parent.Parent.Parent.ExperienceMenuABTestManager)

return function()
	if IsExperienceMenuABTestEnabled() and ExperienceMenuABTestManager.default:shouldShowCaptures() then
		return true
	end

	return game:GetFastFlag("EnableCapturesInChrome")
end
