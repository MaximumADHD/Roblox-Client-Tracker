local enums = {}

export type CameraState = "idle" | "moving"
enums.CameraState = {
	Idle = "idle" :: "idle",
	Moving = "moving" :: "moving",
}

return enums
