local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local RoduxPresence = dependencies.RoduxPresence
local EnumPresenceType = RoduxPresence.Enums.PresenceType

local devDependencies = require(FriendsLanding.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local expect = JestGlobals.expect
local it = JestGlobals.it

local isUserInGame = require(script.Parent.isUserInGame)

it("SHOULD return true if user presence is InGame and lastLocation is not empty", function()
	expect(isUserInGame({
		userPresenceType = EnumPresenceType.InGame,
		lastLocation = "Last Location",
	})).toBe(true)
end)

it("SHOULD return false if user presence is InGame and lastLocation is empty", function()
	expect(isUserInGame({
		userPresenceType = EnumPresenceType.InGame,
		lastLocation = "",
	})).toBe(false)
end)

it("SHOULD return false if user presence is not InGame", function()
	expect(isUserInGame({
		userPresenceType = EnumPresenceType.Online,
		lastLocation = "Last Location",
	})).toBe(false)
end)

it("SHOULD return false if user is nil", function()
	expect(isUserInGame(nil)).toBe(false)
end)
