local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local llama = dependencies.llama
local PresenceModel = dependencies.RoduxPresence.Models.Presence
local User = dependencies.RoduxUsers.Models.User
local RecommendationContextType = dependencies.RoduxFriends.Enums.RecommendationContextType

local byUserId = {}
for index = 1, 40 do
	local user = User.mock({
		id = tostring(index),
		displayName = "displayName" .. tostring(index),
		username = "username" .. tostring(index),
		hasVerifiedBadge = false,
	})

	byUserId[user.id] = user
end

local manyFriends = llama.Dictionary.keys(byUserId)
byUserId["40"].displayName = "offlineFriend1"
byUserId["39"].displayName = "offlineFriend2"
byUserId["38"].displayName = "onlineFriend"
byUserId["37"].displayName = "inGameFriend"
byUserId["36"].displayName = "inStudioFriend"

local smallGroupOfFriends = {
	byUserId["40"].id,
	byUserId["39"].id,
	byUserId["38"].id,
	byUserId["37"].id,
	byUserId["36"].id,
}

local presenceByUserId = llama.List.reduce(byUserId, function(accumulator, user)
	return llama.Dictionary.join(accumulator, {
		[user.id] = PresenceModel.format(PresenceModel.mock({ userPresenceType = 0 })),
	})
end)

local recommendations = {
	["recom1"] = {
		id = "recom1",
		mutualFriendsList = {},
		rank = 3,
		contextType = RecommendationContextType.MutualFriends,
	},
	["recom2"] = {
		id = "recom2",
		mutualFriendsList = {},
		rank = 1,
		contextType = RecommendationContextType.MutualFriends,
	},
	["recom3"] = {
		id = "recom3",
		mutualFriendsList = {},
		rank = 5,
		contextType = RecommendationContextType.MutualFriends,
	},
	["recom4"] = {
		id = "recom4",
		mutualFriendsList = {},
		rank = 4,
		contextType = RecommendationContextType.MutualFriends,
	},
}

local recommendationsByUserId = llama.List.reduce(llama.Dictionary.keys(recommendations), function(accumulator, id)
	accumulator[id] = {
		id = tostring(id),
		displayName = "displayName" .. tostring(id),
		username = "username" .. tostring(id),
		rank = recommendations[id].rank,
		contextType = recommendations[id].contextType,
	}
	return accumulator
end, {})

-- Adding some users with different presence states
presenceByUserId = {
	["40"] = PresenceModel.format(PresenceModel.mock({
		userPresenceType = 0,
	})),
	["39"] = PresenceModel.format(PresenceModel.mock({
		userPresenceType = 0,
	})),
	["38"] = PresenceModel.format(PresenceModel.mock({
		userPresenceType = 1,
	})),
	["37"] = PresenceModel.format(PresenceModel.mock({
		userPresenceType = 2,
	})),
	["36"] = PresenceModel.format(PresenceModel.mock({
		userPresenceType = 3,
	})),
}

return function(config: any?)
	local roduxKey = config and config.roduxKey or "FriendsLanding"
	return {
		noFriends = {
			LocalUserId = "test",
			[roduxKey] = {
				Friends = {
					byUserId = {},
					countsByUserId = {},
				},
				Users = {},
				Presence = {},
				NetworkStatus = {
					["https://friends.roblox.com//v1/users/test/friends"] = "Done",
				},
			},
			ScreenSize = Vector2.new(1000, 100),
		},
		smallNumbersOfFriends = {
			LocalUserId = "test",
			[roduxKey] = {
				Friends = {
					byUserId = {
						test = smallGroupOfFriends,
					},
					countsByUserId = {
						test = #smallGroupOfFriends,
					},
					friendsRankByUserId = {
						test = {
							["36"] = 10,
							["37"] = 1,
							["38"] = 3,
							["39"] = 2,
							["40"] = 5,
						},
					},
				},
				Users = {
					byUserId = byUserId,
				},
				Presence = {
					byUserId = presenceByUserId,
				},
				NetworkStatus = {
					["https://friends.roblox.com//v1/users/test/friends"] = "Done",
				},
			},
			ScreenSize = Vector2.new(1000, 100),
		},
		manyFriends = {
			LocalUserId = "test",
			[roduxKey] = {
				Friends = {
					byUserId = {
						test = manyFriends,
					},
					countsByUserId = {
						test = #manyFriends,
					},
					requests = {
						receivedCount = 12,
					},
				},
				Users = {
					byUserId = byUserId,
				},
				Presence = {
					byUserId = presenceByUserId,
				},
				NetworkStatus = {
					["https://friends.roblox.com//v1/users/test/friends"] = "Done",
				},
			},
			ScreenSize = Vector2.new(1000, 100),
		},
		deletedFriends = {
			LocalUserId = "test",
			[roduxKey] = {
				Friends = {
					byUserId = {},
					countsByUserId = {},
				},
				DeletedUsers = {
					byUserId = {},
				},
				Users = {},
				Presence = {},
				NetworkStatus = {
					["https://friends.roblox.com//v1/users/test/friends"] = "Done",
				},
			},
			ScreenSize = Vector2.new(600, 300),
		},
		friendsAndRecommendations = {
			LocalUserId = "test",
			[roduxKey] = {
				Friends = {
					byUserId = {
						test = smallGroupOfFriends,
					},
					countsByUserId = {
						test = #smallGroupOfFriends,
					},
					recommendations = {
						byUserId = {
							test = recommendations,
						},
					},
					requests = {
						receivedCount = 28,
					},
					friendshipStatus = {
						["recom1"] = Enum.FriendStatus.NotFriend,
						["recom2"] = Enum.FriendStatus.NotFriend,
						["recom3"] = Enum.FriendStatus.Unknown,
						["recom4"] = Enum.FriendStatus.FriendRequestSent,
					},
				},
				Users = {
					byUserId = llama.Dictionary.join(byUserId, recommendationsByUserId),
				},
				Presence = {
					byUserId = presenceByUserId,
				},
				NetworkStatus = {
					["https://friends.roblox.com//v1/users/test/friends"] = "Done",
				},
			},
			ScreenSize = Vector2.new(1000, 100),
		},
		manyFriendsAndRecommendations = {
			LocalUserId = "test",
			[roduxKey] = {
				Friends = {
					byUserId = {
						test = manyFriends,
					},
					countsByUserId = {
						test = #manyFriends,
					},
					recommendations = {
						byUserId = {
							test = recommendations,
						},
					},
				},
				Users = {
					byUserId = llama.Dictionary.join(byUserId, recommendationsByUserId),
				},
				Presence = {
					byUserId = presenceByUserId,
				},
				NetworkStatus = {
					["https://friends.roblox.com//v1/users/test/friends"] = "Done",
				},
			},
			ScreenSize = Vector2.new(1000, 100),
		},
	}
end
