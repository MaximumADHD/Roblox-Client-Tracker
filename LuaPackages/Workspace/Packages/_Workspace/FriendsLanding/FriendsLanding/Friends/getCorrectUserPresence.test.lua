local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local RoduxPresence = dependencies.RoduxPresence
local EnumPresenceType = RoduxPresence.Enums.PresenceType

local devDependencies = require(FriendsLanding.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local getCorrectUserPresence = require(script.Parent.getCorrectUserPresence)

local mockPresence = {
	Offline = {
		userPresenceType = EnumPresenceType.Offline,
		lastLocation = "Test location",
	},
	Online = {
		userPresenceType = EnumPresenceType.Online,
		lastLocation = "Test location",
	},
	InGame = {
		userPresenceType = EnumPresenceType.InGame,
		lastLocation = "Test location",
	},
	InGameWithoutLocation = {
		userPresenceType = EnumPresenceType.InGame,
		lastLocation = "",
	},
	InStudio = {
		userPresenceType = EnumPresenceType.InStudio,
		lastLocation = nil,
	},
}

describe("WHEN getCorrectUserPresence called", function()
	it("SHOULD return empty presence if user object is nil", function()
		expect(getCorrectUserPresence(nil)).toBeNil()
	end)

	it("SHOULD return correct text Offline presence", function()
		expect(getCorrectUserPresence(mockPresence.Offline)).toBe(EnumPresenceType.Offline)
	end)

	it("SHOULD return correct text for Online presence", function()
		expect(getCorrectUserPresence(mockPresence.Online)).toBe(EnumPresenceType.Online)
	end)

	it("SHOULD return correct text for InGame presence without last location", function()
		expect(getCorrectUserPresence(mockPresence.InGame)).toBe(EnumPresenceType.InGame)
	end)

	it("SHOULD return correct text for InGame presence with last location", function()
		expect(getCorrectUserPresence(mockPresence.InGameWithoutLocation)).toBe(EnumPresenceType.Online)
	end)

	it("SHOULD return correct text for InStudio presence", function()
		expect(getCorrectUserPresence(mockPresence.InStudio)).toBe(EnumPresenceType.InStudio)
	end)
end)
