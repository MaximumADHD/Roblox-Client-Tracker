-- How a pointer drag is treated. `Pending` is still inside the slop.
export type DragIntent = "Claim" | "Ignore" | "Pending"

local DragIntent = {
	Claim = "Claim" :: "Claim",
	Ignore = "Ignore" :: "Ignore",
	Pending = "Pending" :: "Pending",
}

return DragIntent
