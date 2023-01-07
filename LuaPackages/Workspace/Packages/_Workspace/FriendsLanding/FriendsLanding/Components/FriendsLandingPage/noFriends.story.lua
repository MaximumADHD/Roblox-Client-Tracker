local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local devDependencies = require(FriendsLanding.devDependencies)
local Mock = devDependencies.Mock
local Roact = dependencies.Roact
local llama = dependencies.llama

local FriendsLandingPage = require(script.Parent)

return function(props)
	return Roact.createElement(
		FriendsLandingPage,
		llama.Dictionary.join({
			totalFriendCount = 0,
			totalFilteredFriends = 0,
			friends = {},
			analytics = Mock.MagicMock.new({}),
		}, props)
	)
end
