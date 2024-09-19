local CorePackages = game:GetService("CorePackages")

local IsExperienceMenuABTestEnabled = require(script.Parent.Parent.Parent.IsExperienceMenuABTestEnabled)
local ExperienceMenuABTestManager = require(script.Parent.Parent.Parent.ExperienceMenuABTestManager)
local GetFFlagSongbirdIXPVariants = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagSongbirdIXPVariants

game:DefineFastFlag("EnableSongbirdPeek", false)

return function()
	-- This is flagged with FFlagSongbirdIXPVariants to ensure that
	-- shouldShowSongbirdPeek exists. Otherwise there are cases where
	-- IsExperienceMenuABTestEnabled will be true without the Songbird
	-- experiment running and throw an error
	if GetFFlagSongbirdIXPVariants() then
		if IsExperienceMenuABTestEnabled() and ExperienceMenuABTestManager.default:shouldShowSongbirdPeek() then
			return true
		end
	end

	return game:GetFastFlag("EnableSongbirdPeek")
end
