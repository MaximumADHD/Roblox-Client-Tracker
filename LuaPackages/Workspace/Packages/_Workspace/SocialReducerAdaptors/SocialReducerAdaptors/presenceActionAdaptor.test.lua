local SocialReducerAdaptors = script:FindFirstAncestor("SocialReducerAdaptors")

local devDependencies = require(SocialReducerAdaptors.devDependencies)
local RoduxPresence = devDependencies.RoduxPresence
local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local presenceActionAdaptor = require(script.Parent.presenceActionAdaptor)

it("SHOULD return table", function()
	expect(presenceActionAdaptor({} :: any)).toEqual(expect.any("table"))
end)

it("SHOULD have ReceivedUserPresence property", function()
	local adaptor = presenceActionAdaptor({} :: any)
	expect(adaptor).toEqual({
		ReceivedUserPresence = expect.any("function"),
	})
end)

it("SHOULD return convert ReceivedUserPresence action if there is no payload", function()
	local adaptor = presenceActionAdaptor(RoduxPresence)
	local receivePresenceAdaptor = adaptor["ReceivedUserPresence"]
	local action = {
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
	local adaptedAction = receivePresenceAdaptor(action)
	expect(adaptedAction).toEqual(expect.any("table"))
	expect(#adaptedAction).toEqual(1)
	-- TODO: SOCCONN-1514 - update to correct naming
	local newActionName = RoduxPresence.Actions.ReceivedUserPresence and RoduxPresence.Actions.ReceivedUserPresence.name
		or RoduxPresence.Actions.UpdateUserPresence.name
	expect(adaptedAction).toEqual({
		{
			type = newActionName,
			payload = {
				userPresenceType = 2,
				lastLocation = "LastLocation",
				placeId = 123,
				rootPlaceId = 234,
				gameId = "Game-OoooOO-Id",
				universeId = 345,
				userId = 456,
				lastOnline = DateTime.fromUnixTimestamp(0):ToIsoDate(),
			},
		},
	})
end)

it("SHOULD return same ReceivedUserPresence action if there is payload", function()
	local adaptor = presenceActionAdaptor(RoduxPresence)
	local receivePresenceAdaptor = adaptor["ReceivedUserPresence"]
	local action = {
		type = "ReceivedUserPresence",
		payload = {
			userPresenceType = 2,
			lastLocation = "LastLocation",
			placeId = 123,
			rootPlaceId = 234,
			gameId = "Game-OoooOO-Id",
			universeId = 345,
			userId = 456,
			lastOnline = DateTime.fromUnixTimestamp(0):ToIsoDate(),
		},
	}
	local adaptedAction = receivePresenceAdaptor(action :: any)
	expect(adaptedAction).toEqual(expect.any("table"))
	expect(#adaptedAction).toEqual(1)
	expect(adaptedAction).toEqual({
		{
			type = "ReceivedUserPresence",
			payload = {
				userPresenceType = 2,
				lastLocation = "LastLocation",
				placeId = 123,
				rootPlaceId = 234,
				gameId = "Game-OoooOO-Id",
				universeId = 345,
				userId = 456,
				lastOnline = DateTime.fromUnixTimestamp(0):ToIsoDate(),
			},
		},
	})
end)

describe("GIVEN user presence", function()
	local action = {
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

	it("SHOULD convert it to correct one", function()
		local adaptor = presenceActionAdaptor(RoduxPresence)
		local receivePresenceAdaptor = adaptor["ReceivedUserPresence"]

		action.presence = "OFFLINE"
		expect(receivePresenceAdaptor(action)[1].payload.userPresenceType).toEqual(0)
		action.presence = "ONLINE"
		expect(receivePresenceAdaptor(action)[1].payload.userPresenceType).toEqual(1)
		action.presence = "IN_GAME"
		expect(receivePresenceAdaptor(action)[1].payload.userPresenceType).toEqual(2)
		action.presence = "IN_STUDIO"
		expect(receivePresenceAdaptor(action)[1].payload.userPresenceType).toEqual(3)
	end)
end)
