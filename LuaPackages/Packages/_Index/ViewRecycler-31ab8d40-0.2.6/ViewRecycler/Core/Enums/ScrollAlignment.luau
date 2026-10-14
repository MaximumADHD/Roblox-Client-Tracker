local ScrollAlignment = table.freeze({
	Start = "start" :: "start",
	Center = "center" :: "center",
	End = "end" :: "end",
})

export type ScrollAlignment = typeof(ScrollAlignment.Start) | typeof(ScrollAlignment.Center) | typeof(ScrollAlignment.End)

return ScrollAlignment
