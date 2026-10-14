local AutoScrollPolicy = table.freeze({
	WhenAtStart = "whenAtStart" :: "whenAtStart",
	WhenAtEnd = "whenAtEnd" :: "whenAtEnd",
})

export type AutoScrollPolicy = typeof(AutoScrollPolicy.WhenAtStart) | typeof(AutoScrollPolicy.WhenAtEnd)

return AutoScrollPolicy
