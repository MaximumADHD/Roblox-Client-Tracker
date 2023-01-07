local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local Packages = FriendsLanding.Parent
local FriendsLandingDependencies = require(FriendsLanding.dependencies)
local llama = FriendsLandingDependencies.llama

return llama.Dictionary.join(FriendsLandingDependencies, {
	Signal = require(Packages.AppCommonLib).Signal,
})
