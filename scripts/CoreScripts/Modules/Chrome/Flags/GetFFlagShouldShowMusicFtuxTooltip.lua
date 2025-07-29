-- TODO: Remove when cleaning up FFlagSongbirdCleanupMusicTooltip
game:DefineFastFlag("ShouldShowMusicFtuxTooltip3", false)

return function()
	return game:GetFastFlag("ShouldShowMusicFtuxTooltip3")
end
