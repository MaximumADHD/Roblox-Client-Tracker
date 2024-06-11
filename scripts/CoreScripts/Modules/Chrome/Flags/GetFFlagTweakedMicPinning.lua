game:DefineFastFlag("TweakedMicPinning2", false)

local IsExperienceMenuABTestEnabled = require(script.Parent.Parent.Parent.IsExperienceMenuABTestEnabled)
local ExperienceMenuABTestManager = require(script.Parent.Parent.Parent.ExperienceMenuABTestManager)

return function()
	if IsExperienceMenuABTestEnabled() and ExperienceMenuABTestManager.default:shouldDockMic() then
		return true
	end

	return game:GetFastFlag("TweakedMicPinning2")
end
