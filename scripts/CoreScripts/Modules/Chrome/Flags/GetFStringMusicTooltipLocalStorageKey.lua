-- TODO: Remove when cleaning up FFlagSongbirdCleanupMusicTooltip
game:DefineFastString("MusicTooltipLocalStorageKey", "HasSeenMusicTooltipFTUX_v2")

return function()
	return game:GetFastString("MusicTooltipLocalStorageKey")
end
