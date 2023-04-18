local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local devDependencies = require(FriendsLanding.devDependencies)

local filterStates = require(FriendsLanding.Friends.filterStates)
local Mock = devDependencies.Mock
local Promise = dependencies.Promise
local RoduxPresence = dependencies.RoduxPresence
local Roact = dependencies.Roact
local llama = dependencies.llama

local EnumPresenceType = RoduxPresence.Enums.PresenceType

local FriendsLandingPage = require(script.Parent)

local getFFlagFriendsLandingInactiveFriendsEnabled =
	require(FriendsLanding.Flags.getFFlagFriendsLandingInactiveFriendsEnabled)

return function(props)
	return if getFFlagFriendsLandingInactiveFriendsEnabled()
		then Roact.createElement(
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
				filter = filterStates.Inactive,
				unfriendTargetUser = function()
					return Promise.resolve()
				end,
				navigation = {
					navigate = function() end,
					goBack = function() end,
				},
				analytics = Mock.MagicMock.new({}),
			}, props)
		)
		else nil
end
