local isUserInGame = require(script.Parent.isUserInGame)

local FriendsCarousel = script:FindFirstAncestor("FriendsCarousel")
local dependencies = require(FriendsCarousel.dependencies)
local RoduxPresence = dependencies.RoduxPresence
local EnumPresenceType = RoduxPresence.Enums.PresenceType
local devDependencies = require(FriendsCarousel.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local it = JestGlobals.it

it("SHOULD return true if user presence is InGame and lastLocation is not empty", function()
	jestExpect(isUserInGame({
		userPresenceType = EnumPresenceType.InGame,
		lastLocation = "Last Location",
		userId = "friendInGame",
		lastOnline = "lastOnline",
		universeId = "universeId",
		rootPlaceId = "rootPlaceId",
		placeId = "placeId",
		gameId = "gameId",
	})).toBe(true)
end)

it("SHOULD return false if user presence is InGame and lastLocation is empty", function()
	jestExpect(isUserInGame({
		userPresenceType = EnumPresenceType.InGame,
		lastLocation = "",
		userId = "friendInGame",
		lastOnline = "lastOnline",
		universeId = "universeId",
		rootPlaceId = "rootPlaceId",
		placeId = "placeId",
		gameId = "gameId",
	})).toBe(false)
end)

it("SHOULD return false if user presence is not InGame", function()
	jestExpect(isUserInGame({
		userPresenceType = EnumPresenceType.Online,
		lastLocation = "Last Location",
		userId = "friendInGame",
		lastOnline = "lastOnline",
		universeId = "universeId",
		rootPlaceId = "rootPlaceId",
		placeId = "placeId",
		gameId = "gameId",
	})).toBe(false)
end)

it("SHOULD return false if user is nil", function()
	jestExpect(isUserInGame(nil)).toBe(false)
end)
