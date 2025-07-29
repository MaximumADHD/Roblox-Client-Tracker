-- TODO: Remove when cleaning up FFlagSongbirdCleanupMusicTooltip
game:DefineFastFlag("ShouldShowSimpleMusicFtuxTooltip2", false)

return function()
	return game:GetFastFlag("ShouldShowSimpleMusicFtuxTooltip2")
end
