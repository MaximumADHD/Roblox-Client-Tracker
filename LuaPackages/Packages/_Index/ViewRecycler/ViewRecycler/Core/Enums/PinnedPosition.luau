local PinnedPosition = table.freeze({
	Start = "start" :: "start",
	Finish = "finish" :: "finish",
})

export type PinnedPosition = typeof(PinnedPosition.Start) | typeof(PinnedPosition.Finish)

return PinnedPosition
