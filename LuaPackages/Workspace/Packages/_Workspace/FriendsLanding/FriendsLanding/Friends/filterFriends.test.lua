local FriendsLanding = script:FindFirstAncestor("FriendsLanding")

local dependencies = require(FriendsLanding.dependencies)
local PresenceModel = dependencies.RoduxPresence.Models.Presence

local devDependencies = require(FriendsLanding.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local filterFriends = require(script.Parent.filterFriends)
local filterStates = require(script.Parent.filterStates)

describe("filterFriends", function()
	local onlineUser = PresenceModel.format(PresenceModel.mock({
		userPresenceType = 1,
	}))
	local offlineUser = PresenceModel.format(PresenceModel.mock({
		userPresenceType = 0,
	}))
	local inGameUser = PresenceModel.format(PresenceModel.mock({
		userPresenceType = 2,
	}))
	local inGameUserWithJoinOff = PresenceModel.format(PresenceModel.mock({
		userPresenceType = 2,
		lastLocation = "",
	}))
	local inStudioUser = PresenceModel.format(PresenceModel.mock({
		userPresenceType = 3,
	}))
	local noInfoUser = {}
	local allFriends = {
		onlineUser,
		offlineUser,
		inGameUser,
		inStudioUser,
		onlineUser,
		noInfoUser,
		inGameUser,
		inStudioUser,
	}

	it("SHOULD return all friends if filter is all", function(c)
		local filteredFriends = filterFriends(allFriends, filterStates.All)

		expect(filteredFriends).toEqual(allFriends)
	end)

	it("SHOULD return only online friends if filter has that", function(c)
		local filteredFriends = filterFriends(allFriends, filterStates.Online)

		expect(filteredFriends).toEqual({
			onlineUser,
			inGameUser,
			inStudioUser,
			onlineUser,
			inGameUser,
			inStudioUser,
		})
	end)

	it("SHOULD return only InGame and InStudio friends if filter is set to those", function(c)
		local filteredFriends = filterFriends(allFriends, filterStates.InExperience)

		expect(filteredFriends).toEqual({ inGameUser, inStudioUser, inGameUser, inStudioUser })
	end)

	it("SHOULD return an online friend if an in game user has their last location is empty", function(c)
		local filteredFriends = filterFriends({ inGameUserWithJoinOff }, filterStates.Online)

		expect(filteredFriends).toHaveLength(1)
	end)

	it("SHOULD not return an inGame friend if their last location is empty", function(c)
		local filteredFriends = filterFriends({ inGameUserWithJoinOff }, filterStates.InExperience)

		expect(filteredFriends).toHaveLength(0)
	end)

	it("SHOULD return all offline friends", function(c)
		local filteredFriends = filterFriends(allFriends, filterStates.Offline)

		expect(filteredFriends).toEqual({ offlineUser, noInfoUser })
	end)
end)
