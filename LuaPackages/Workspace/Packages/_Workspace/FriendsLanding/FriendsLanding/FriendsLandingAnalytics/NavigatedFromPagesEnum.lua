local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)

local enumerate = dependencies.enumerate

return enumerate(script.Name, {
	Home = "Home",
	More = "More",
	SocialTab = "SocialTab",
})
