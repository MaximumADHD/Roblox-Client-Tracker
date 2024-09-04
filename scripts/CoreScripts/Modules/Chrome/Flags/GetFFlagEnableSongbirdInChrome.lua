local IsExperienceMenuABTestEnabled = require(script.Parent.Parent.Parent.IsExperienceMenuABTestEnabled)
local ExperienceMenuABTestManager = require(script.Parent.Parent.Parent.ExperienceMenuABTestManager)

game:DefineFastFlag("EnableSongbirdInChrome", false)

return function()
	if IsExperienceMenuABTestEnabled() and ExperienceMenuABTestManager.default:shouldShowSongbirdUnibar() then
		return true
	end

	return game:GetFastFlag("EnableSongbirdInChrome")
end
