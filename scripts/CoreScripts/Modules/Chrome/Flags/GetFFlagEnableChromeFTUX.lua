local IsExperienceMenuABTestEnabled = require(script.Parent.Parent.Parent.IsExperienceMenuABTestEnabled)
local ExperienceMenuABTestManager = require(script.Parent.Parent.Parent.ExperienceMenuABTestManager)

game:DefineFastFlag("EnableChromeFTUX", false)

return function()
	if IsExperienceMenuABTestEnabled() and ExperienceMenuABTestManager.default:shouldShowFTUX() then
		return true
	end

	return game:GetFastFlag("EnableChromeFTUX")
end
