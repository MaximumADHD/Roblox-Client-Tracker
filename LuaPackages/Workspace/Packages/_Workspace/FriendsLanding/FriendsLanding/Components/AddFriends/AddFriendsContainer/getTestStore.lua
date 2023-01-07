local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local AddFriends = FriendsLanding.AddFriends
local dependencies = require(AddFriends.dependencies)
local Rodux = dependencies.Rodux
local llama = dependencies.llama
local getBaseTestStates = require(FriendsLanding.TestHelpers.getBaseTestStates)
local baseTestState = getBaseTestStates().smallNumbersOfFriends

return function(hasRequests, extraState: any?)
	local testState = baseTestState.FriendsLanding

	local byUserId = {}
	local receivedCount = 0
	local nextPageCursor
	local userFollowers = {}
	local isUserFollowing = {}
	local byGameId = {}
	local sourceUniverseIds = {}
	local mutualFriends = {}
	local showContactImporterParams = {}
	if hasRequests then
		byUserId = testState.Users.byUserId
		receivedCount = #llama.Dictionary.keys(testState.Users.byUserId)
		nextPageCursor = "next"
		sourceUniverseIds = {
			["36"] = "game_universe_id_36",
			["37"] = "game_universe_id_37",
			["38"] = "game_universe_id_39",
		}
		isUserFollowing = {
			["36"] = {
				isFollowing = true,
				isFollowed = true,
			},
		}
		byGameId = {
			["game_universe_id_36"] = { name = "test game" },
			["game_universe_id_37"] = { name = "test game" },
			["game_universe_id_38"] = { name = "test game" },
		}
		mutualFriends = {
			["1"] = { "Bob", "Corey", "Andrew" },
			["2"] = {},
			["3"] = {},
		}
		showContactImporterParams = {
			shouldShowContactImporterFeature = true,
			shouldShowContactImporterUpsellModal = true,
			isDiscoverabilityUnset = false,
		}
	end

	return Rodux.Store.new(function()
		return {
			ScreenSize = Vector2.new(540, 960),
			LocalUserId = baseTestState.LocalUserId,
			FriendStatuses = llama.Dictionary.map(testState.Users.byUserId, function()
				return Enum.FriendStatus.FriendRequestReceived
			end),
			FriendsLanding = llama.Dictionary.join({
				Friends = {
					requests = {
						byUserId = byUserId,
						receivedCount = receivedCount,
						nextPageCursor = nextPageCursor,
						sourceUniverseIds = sourceUniverseIds,
						mutualFriends = mutualFriends,
					},
				},
				Users = testState.Users,
				Presence = testState.Presence,
				NetworkStatus = testState.NetworkStatus,
				UserFollowers = userFollowers,
				IsUserFollowing = isUserFollowing,
				Games = {
					byGameId = byGameId,
				},
				ShowContactImporterParams = showContactImporterParams,
			}, extraState or {}),
		}
	end, {}, { Rodux.thunkMiddleware })
end
