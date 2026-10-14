local Axis = table.freeze({
	X = "x" :: "x",
	Y = "y" :: "y",
})

export type Axis = typeof(Axis.X) | typeof(Axis.Y)

return Axis
