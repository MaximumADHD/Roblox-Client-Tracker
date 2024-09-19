game:DefineFastFlag("DisableSelfViewDefaultOpen", false)

local IsExperienceMenuABTestEnabled = require(script.Parent.Parent.Parent.IsExperienceMenuABTestEnabled)
local ExperienceMenuABTestManager = require(script.Parent.Parent.Parent.ExperienceMenuABTestManager)

return function()
	if IsExperienceMenuABTestEnabled() and ExperienceMenuABTestManager.default:shouldCloseSelfViewAtStartup() then
		return true
	end

	return game:GetFastFlag("DisableSelfViewDefaultOpen")
end
