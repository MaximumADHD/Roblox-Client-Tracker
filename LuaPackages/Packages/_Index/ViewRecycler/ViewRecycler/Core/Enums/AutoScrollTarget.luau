local AutoScrollTarget = table.freeze({
	Start = "start" :: "start",
	End = "end" :: "end",
})

export type AutoScrollTarget = typeof(AutoScrollTarget.Start) | typeof(AutoScrollTarget.End)

return AutoScrollTarget
