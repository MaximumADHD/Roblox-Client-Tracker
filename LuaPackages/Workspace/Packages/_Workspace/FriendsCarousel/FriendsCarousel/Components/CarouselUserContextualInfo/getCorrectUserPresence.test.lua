local getCorrectUserPresence = require(script.Parent.getCorrectUserPresence)

local FriendsCarousel = script:FindFirstAncestor("FriendsCarousel")
local dependencies = require(FriendsCarousel.dependencies)
local RoduxPresence = dependencies.RoduxPresence
local EnumPresenceType = RoduxPresence.Enums.PresenceType
local devDependencies = require(FriendsCarousel.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it

local mockPresence = {
	Offline = {
		userPresenceType = EnumPresenceType.Offline,
		lastLocation = "Test location",
		userId = "friendInGame",
		lastOnline = "lastOnline",
		universeId = "universeId",
		rootPlaceId = "rootPlaceId",
		placeId = "placeId",
		gameId = "gameId",
	},
	Online = {
		userPresenceType = EnumPresenceType.Online,
		lastLocation = "Test location",
		userId = "friendInGame",
		lastOnline = "lastOnline",
		universeId = "universeId",
		rootPlaceId = "rootPlaceId",
		placeId = "placeId",
		gameId = "gameId",
	},
	InGame = {
		userPresenceType = EnumPresenceType.InGame,
		lastLocation = "Test location",
		userId = "friendInGame",
		lastOnline = "lastOnline",
		universeId = "universeId",
		rootPlaceId = "rootPlaceId",
		placeId = "placeId",
		gameId = "gameId",
	},
	InGameWithoutLocation = {
		userPresenceType = EnumPresenceType.InGame,
		lastLocation = "",
		userId = "friendInGame",
		universeId = "universeId",
		rootPlaceId = "rootPlaceId",
		placeId = "placeId",
		gameId = "gameId",
		lastOnline = "lastOnline",
	},
	InStudio = {
		userPresenceType = EnumPresenceType.InStudio,
		lastLocation = "",
		userId = "friendInGame",
		lastOnline = "lastOnline",
		universeId = "universeId",
		rootPlaceId = "rootPlaceId",
		placeId = "placeId",
		gameId = "gameId",
	},
}

describe("WHEN getCorrectUserPresence called", function()
	it("SHOULD return correct text Offline presence", function()
		jestExpect(getCorrectUserPresence(mockPresence.Offline)).toBe(EnumPresenceType.Offline)
	end)

	it("SHOULD return correct text for Online presence", function()
		jestExpect(getCorrectUserPresence(mockPresence.Online)).toBe(EnumPresenceType.Online)
	end)

	it("SHOULD return correct text for InGame presence without last location", function()
		jestExpect(getCorrectUserPresence(mockPresence.InGame)).toBe(EnumPresenceType.InGame)
	end)

	it("SHOULD return correct text for InGame presence with last location", function()
		jestExpect(getCorrectUserPresence(mockPresence.InGameWithoutLocation)).toBe(EnumPresenceType.Online)
	end)

	it("SHOULD return correct text for InStudio presence", function()
		jestExpect(getCorrectUserPresence(mockPresence.InStudio)).toBe(EnumPresenceType.InStudio)
	end)
end)
