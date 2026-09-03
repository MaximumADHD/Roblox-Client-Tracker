local ScrollObservationKind = table.freeze({
	User = "User" :: "User",
	Programmatic = "Programmatic" :: "Programmatic",
})

export type ScrollObservationKind = typeof(ScrollObservationKind.User) | typeof(ScrollObservationKind.Programmatic)

return ScrollObservationKind
