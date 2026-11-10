local ScrollHostLifecyclePhase = table.freeze({
	Disconnected = "disconnected" :: "disconnected",
	Priming = "priming" :: "priming",
	Synchronized = "synchronized" :: "synchronized",
})

export type ScrollHostLifecyclePhase =
	typeof(ScrollHostLifecyclePhase.Disconnected)
	| typeof(ScrollHostLifecyclePhase.Priming)
	| typeof(ScrollHostLifecyclePhase.Synchronized)

return ScrollHostLifecyclePhase
