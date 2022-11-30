local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local RoactCompat = require(VirtualEvents.Parent.RoactCompat)

return {
	name = VirtualEvents.Name,
	roact = RoactCompat,
	storyRoots = {
		VirtualEvents,
	},
}
