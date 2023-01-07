local FriendsLanding = script:FindFirstAncestor("FriendsLanding")

local dependencies = require(FriendsLanding.dependencies)
local EnumPresenceType = dependencies.RoduxPresence.Enums.PresenceType

local devDependencies = require(FriendsLanding.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local filterToPresence = require(script.Parent.filterToPresence)
local filterStates = require(script.Parent.filterStates)

describe("filterFriends", function()
	it("SHOULD return all presence if filter is all", function()
		local presenceTypes = filterToPresence(filterStates.All)

		expect(presenceTypes).toEqual({
			EnumPresenceType.Online,
			EnumPresenceType.InStudio,
			EnumPresenceType.InGame,
			EnumPresenceType.Offline,
		})
	end)

	it("SHOULD return all presence except offline if filter is online", function()
		local presenceTypes = filterToPresence(filterStates.Online)

		expect(presenceTypes).toEqual({
			EnumPresenceType.Online,
			EnumPresenceType.InStudio,
			EnumPresenceType.InGame,
		})
	end)

	it("SHOULD return InGame and InStudio Presence if filter is in experience", function()
		local presenceTypes = filterToPresence(filterStates.InExperience)

		expect(presenceTypes).toEqual({ EnumPresenceType.InGame, EnumPresenceType.InStudio })
	end)

	it("SHOULD return Offline Presence if filter is offline", function()
		local presenceTypes = filterToPresence(filterStates.Offline)

		expect(presenceTypes).toEqual({ EnumPresenceType.Offline })
	end)
end)
