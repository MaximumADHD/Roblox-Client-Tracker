-- TODO: Remove when cleaning up FFlagSongbirdCleanupExperiment
game:DefineFastFlag("SongbirdDisableExperienceAccess", false)

return function()
	return game:GetFastFlag("SongbirdDisableExperienceAccess")
end
