local VerifiedBadges = script:FindFirstAncestor("VerifiedBadges")

local RoactCompat = require(VerifiedBadges.Parent.Dev.RoactCompat)

return {
	name = script.Parent.Name,
	storyRoots = {
		script.Parent.Components,
	},
	roact = RoactCompat,
}
