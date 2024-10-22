local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local IsExperienceMenuABTestEnabled = require(CoreGui.RobloxGui.Modules.IsExperienceMenuABTestEnabled)
local ExperienceMenuABTestManager = require(CoreGui.RobloxGui.Modules.ExperienceMenuABTestManager)

game:DefineFastFlag("EnableSceneAnalysis", false)

return function()

		if IsExperienceMenuABTestEnabled() and ExperienceMenuABTestManager.default:shouldEnableSceneAnalysis() then
			return true
		end

	return game:GetFastFlag("EnableSceneAnalysis")
end
