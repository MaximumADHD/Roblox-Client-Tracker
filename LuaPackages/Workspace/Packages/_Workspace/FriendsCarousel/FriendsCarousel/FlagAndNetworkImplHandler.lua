local FriendsCarousel = script:FindFirstAncestor("FriendsCarousel")
local dependencies = require(FriendsCarousel.dependencies)
local devDependencies = require(FriendsCarousel.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local beforeAll = JestGlobals.beforeAll

-- To avoid Jest complaining "Flag referenced from Lua isn't defined in C++ code"
local _getFIntShowFriendRecommendationsLimit = require(FriendsCarousel.Flags.getFIntShowFriendRecommendationsLimit)

beforeAll(function(c)
	game:SetFastIntForTesting("ShowFriendRecommendationsLimit", 6)

	dependencies.RoduxNetworking.setNetworkImpl(function(url)
		error(string.format("Should have replaced network implementation for url: %s", tostring(url)))
	end)
end)
