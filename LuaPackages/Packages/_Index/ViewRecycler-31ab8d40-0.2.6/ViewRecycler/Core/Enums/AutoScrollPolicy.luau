local AutoScrollPolicy = table.freeze({
	WhenAtEnd = "whenAtEnd" :: "whenAtEnd",
})

export type AutoScrollPolicy = typeof(AutoScrollPolicy.WhenAtEnd)

return AutoScrollPolicy
