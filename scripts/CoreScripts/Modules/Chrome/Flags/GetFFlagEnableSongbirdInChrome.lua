-- TODO: Remove when cleaning up FFlagSongbirdCleanupExperiment
local Chrome = script:FindFirstAncestor("Chrome")

local IsExperienceMenuABTestEnabled = require(Chrome.Parent.IsExperienceMenuABTestEnabled)
local ExperienceMenuABTestManager = require(Chrome.Parent.ExperienceMenuABTestManager)
local GetFFlagSongbirdDisableExperienceAccess = require(Chrome.Flags.GetFFlagSongbirdDisableExperienceAccess)

game:DefineFastFlag("EnableSongbirdInChrome2", false)

return function()
	-- This flag acts as a shutoff to exclude certain experiences from the
	-- experiment. The main reason for this is Songbird doesn't yet have support
	-- for the new Audio API, which high-profile experiences like Clip It have
	-- started to adopt. In cases like this Songbird cannot give a good user
	-- experience, so we disable it in those experiences.
	if GetFFlagSongbirdDisableExperienceAccess() then
		return false
	end

	if IsExperienceMenuABTestEnabled() and ExperienceMenuABTestManager.default:shouldShowSongbirdUnibar() then
		return true
	end

	return game:GetFastFlag("EnableSongbirdInChrome2")
end
