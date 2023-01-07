local FriendsCarousel = script.Parent.Parent.Parent
local devDependencies = require(FriendsCarousel.devDependencies)
local dependencies = require(FriendsCarousel.dependencies)
local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local it = JestGlobals.it
local RoduxPresence = dependencies.RoduxPresence
local PresenceType = RoduxPresence.Enums.PresenceType

local splitSortedFriendsByPresence = require(script.Parent.splitSortedFriendsByPresence)

it("SHOULD return function", function()
	jestExpect(splitSortedFriendsByPresence).toEqual(jestExpect.any("function"))
end)

it("SHOULD return empty lists if friends list is empty", function()
	local onlineFriends, offlineFriends = splitSortedFriendsByPresence({})
	jestExpect(onlineFriends).toEqual({})
	jestExpect(offlineFriends).toEqual({})
end)

it("SHOULD return correct lists if all friends are online", function()
	local allOnline = {
		{ userPresenceType = PresenceType.InGame },
		{ userPresenceType = PresenceType.InGame },
		{ userPresenceType = PresenceType.InStudio },
		{ userPresenceType = PresenceType.Online },
		{ userPresenceType = PresenceType.Online },
	}
	local onlineFriends, offlineFriends = splitSortedFriendsByPresence(allOnline)
	jestExpect(onlineFriends).toEqual(allOnline)
	jestExpect(offlineFriends).toEqual({})
end)

it("SHOULD return correct lists if all friends are offline", function()
	local allOffline = {
		{ userPresenceType = PresenceType.Offline },
		{ userPresenceType = PresenceType.Offline },
		{ userPresenceType = PresenceType.Offline },
		{ userPresenceType = PresenceType.Offline },
		{ userPresenceType = PresenceType.Offline },
	}
	local onlineFriends, offlineFriends = splitSortedFriendsByPresence(allOffline)
	jestExpect(onlineFriends).toEqual({})
	jestExpect(offlineFriends).toEqual(allOffline)
end)

it("SHOULD return correct lists for online and offline friends", function()
	local allPresence = {
		{ userPresenceType = PresenceType.InGame },
		{ userPresenceType = PresenceType.InGame },
		{ userPresenceType = PresenceType.InStudio },
		{ userPresenceType = PresenceType.Online },
		{ userPresenceType = PresenceType.Online },
		{ userPresenceType = PresenceType.Offline },
		{ userPresenceType = PresenceType.Offline },
	}
	local onlineFriends, offlineFriends = splitSortedFriendsByPresence(allPresence)
	jestExpect(onlineFriends).toEqual({
		{ userPresenceType = PresenceType.InGame },
		{ userPresenceType = PresenceType.InGame },
		{ userPresenceType = PresenceType.InStudio },
		{ userPresenceType = PresenceType.Online },
		{ userPresenceType = PresenceType.Online },
	})
	jestExpect(offlineFriends).toEqual({
		{ userPresenceType = PresenceType.Offline },
		{ userPresenceType = PresenceType.Offline },
	})
end)
