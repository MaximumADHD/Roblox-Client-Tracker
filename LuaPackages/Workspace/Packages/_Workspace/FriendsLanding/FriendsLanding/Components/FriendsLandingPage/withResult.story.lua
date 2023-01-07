local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local devDependencies = require(FriendsLanding.devDependencies)

local Mock = devDependencies.Mock
local RoduxPresence = dependencies.RoduxPresence
local EnumPresenceType = RoduxPresence.Enums.PresenceType
local Roact = dependencies.Roact
local llama = dependencies.llama

local FriendsLandingPage = require(script.Parent)

return function(props)
	return Roact.createElement(
		FriendsLandingPage,
		llama.Dictionary.join({
			totalFriendCount = 2,
			totalFilteredFriends = 2,
			friends = {
				{
					displayName = "henry",
					username = "williams",
					id = "456",
					userPresenceType = EnumPresenceType.InGame,
					lastLocation = "less fun",
					universeId = "987",
				},
				{
					displayName = "rowan",
					username = "mance",
					id = "123",
					userPresenceType = EnumPresenceType.InGame,
					lastLocation = "super fun",
					universeId = "876",
				},
			},
			analytics = Mock.MagicMock.new({}),
		}, props)
	)
end
