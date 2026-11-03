local ScrollDirection = table.freeze({
	Forward = "forward" :: "forward",
	Backward = "backward" :: "backward",
	None = "none" :: "none",
})

export type ScrollDirection =
	typeof(ScrollDirection.Forward) | typeof(ScrollDirection.Backward) | typeof(ScrollDirection.None)

return ScrollDirection
