--!nonstrict

local IsExperienceMenuABTestEnabled = require(script.Parent.Parent.Parent.IsExperienceMenuABTestEnabled)
local ExperienceMenuABTestManager = require(script.Parent.Parent.Parent.ExperienceMenuABTestManager)

game:DefineFastFlag("EnableInGameMenuChromeWithoutSeenClose", false)

return function()
	if IsExperienceMenuABTestEnabled() and ExperienceMenuABTestManager.default:shouldDisableSeenClosure() then
		return true
	end

	return game:GetFastFlag("EnableInGameMenuChromeWithoutSeenClose")
end
