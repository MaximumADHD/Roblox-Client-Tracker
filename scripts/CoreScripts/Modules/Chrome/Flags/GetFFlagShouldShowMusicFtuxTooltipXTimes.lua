-- TODO: Remove when cleaning up FFlagSongbirdCleanupMusicTooltip
game:DefineFastFlag("ShouldShowMusicFtuxTooltipXTimes3", false)

return function()
	return game:GetFastFlag("ShouldShowMusicFtuxTooltipXTimes3")
end
