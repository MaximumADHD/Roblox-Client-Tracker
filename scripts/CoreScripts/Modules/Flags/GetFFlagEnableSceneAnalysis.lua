local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local IsExperienceMenuABTestEnabled = require(CoreGui.RobloxGui.Modules.IsExperienceMenuABTestEnabled)
local ExperienceMenuABTestManager = require(CoreGui.RobloxGui.Modules.ExperienceMenuABTestManager)
local GetFFlagSongbirdIXPVariants = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagSongbirdIXPVariants

game:DefineFastFlag("EnableSceneAnalysis", false)

return function()
	-- This is flagged with FFlagSongbirdIXPVariants to ensure that
	-- shouldEnableSceneAnalysis exists. Otherwise there are cases where
	-- IsExperienceMenuABTestEnabled will be true without the Songbird
	-- experiment running and throw an error
	if GetFFlagSongbirdIXPVariants() then
		if IsExperienceMenuABTestEnabled() and ExperienceMenuABTestManager.default:shouldEnableSceneAnalysis() then
			return true
		end
	end

	return game:GetFastFlag("EnableSceneAnalysis")
end
