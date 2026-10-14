local HostPresentationPhase = table.freeze({
	Hidden = "hidden" :: "hidden",
	Pending = "pending" :: "pending",
	Presented = "presented" :: "presented",
})

export type HostPresentationPhase =
	typeof(HostPresentationPhase.Hidden)
	| typeof(HostPresentationPhase.Pending)
	| typeof(HostPresentationPhase.Presented)

return HostPresentationPhase
