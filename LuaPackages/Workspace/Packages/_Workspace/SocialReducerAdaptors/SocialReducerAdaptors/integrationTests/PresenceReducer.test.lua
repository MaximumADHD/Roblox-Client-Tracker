local SocialReducerAdaptors = script:FindFirstAncestor("SocialReducerAdaptors")

local devDependencies = require(SocialReducerAdaptors.devDependencies)
local RoduxPresence = devDependencies.RoduxPresence
local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local convertActions = require(script.Parent.Parent.convertActions)
local presenceActionAdaptor = require(script.Parent.Parent.presenceActionAdaptor)

local defaultState = {
	byUserId = {},
	byGameId = {},
	byGameInstanceId = {},
	byPlaceId = {},
}

local reducer = convertActions(RoduxPresence.installReducer(), presenceActionAdaptor(RoduxPresence), defaultState)

local presence = {
	type = "ReceivedUserPresence",
	presence = "IN_GAME",
	lastLocation = "LastLocation",
	placeId = 123,
	rootPlaceId = 234,
	gameInstanceId = "Game-OoooOO-Id",
	universeId = 345,
	userId = 456,
	lastOnline = 0,
}

describe("GIVEN legacy ReceivedUserPresence action", function()
	it("SHOULD set the user's presence", function()
		local action = presence
		local result = reducer(nil, action)
		expect(result.byUserId[presence.userId]).never.toBeNull()
	end)
end)
