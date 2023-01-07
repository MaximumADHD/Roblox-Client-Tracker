local FriendsCarousel = script.Parent.Parent.Parent
local devDependencies = require(FriendsCarousel.devDependencies)
local dependencies = require(FriendsCarousel.dependencies)
local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local it = JestGlobals.it
local baseTestStates = devDependencies.baseTestStates
local llama = dependencies.llama
local RODUX_KEY = require(FriendsCarousel.Common.Constants).RODUX_KEY

local getFriendsList = require(script.Parent.getFriendsList)

it("SHOULD return sorted by presence and rank list of friends with user data", function()
	local state = baseTestStates.smallNumbersOfFriends
	local friendsList = getFriendsList(state, RODUX_KEY)
	local friendsListRank = state[RODUX_KEY].Friends.friendsRankByUserId["test"]

	local offlineFriend1 =
		llama.Dictionary.join(state[RODUX_KEY].Users.byUserId["39"], state[RODUX_KEY].Presence.byUserId["39"], {
			isFriendWithUser = true,
			friendRank = friendsListRank["39"],
		})

	local offlineFriend2 =
		llama.Dictionary.join(state[RODUX_KEY].Users.byUserId["40"], state[RODUX_KEY].Presence.byUserId["40"], {
			isFriendWithUser = true,
			friendRank = friendsListRank["40"],
		})

	local onlineFriend =
		llama.Dictionary.join(state[RODUX_KEY].Users.byUserId["38"], state[RODUX_KEY].Presence.byUserId["38"], {
			isFriendWithUser = true,
			friendRank = friendsListRank["38"],
		})

	local inGameFriend =
		llama.Dictionary.join(state[RODUX_KEY].Users.byUserId["37"], state[RODUX_KEY].Presence.byUserId["37"], {
			isFriendWithUser = true,
			friendRank = friendsListRank["37"],
		})

	local inStudioFriend =
		llama.Dictionary.join(state[RODUX_KEY].Users.byUserId["36"], state[RODUX_KEY].Presence.byUserId["36"], {
			isFriendWithUser = true,
			friendRank = friendsListRank["36"],
		})

	jestExpect(friendsList[1]).toEqual(inGameFriend)
	jestExpect(friendsList[2]).toEqual(onlineFriend)
	jestExpect(friendsList[3]).toEqual(inStudioFriend)
	jestExpect(friendsList[4]).toEqual(offlineFriend1)
	jestExpect(friendsList[5]).toEqual(offlineFriend2)
end)
