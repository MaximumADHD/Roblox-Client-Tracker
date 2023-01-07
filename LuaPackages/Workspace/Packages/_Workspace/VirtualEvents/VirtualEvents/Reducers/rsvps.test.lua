local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local JestGlobals = require(VirtualEvents.Parent.Dev.JestGlobals)
local afterEach = JestGlobals.afterEach
local beforeEach = JestGlobals.beforeEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local HttpRequest = require(VirtualEvents.Parent.HttpRequest)
local NetworkingVirtualEvents = require(VirtualEvents.Parent.NetworkingVirtualEvents)
local Rodux = require(VirtualEvents.Parent.Rodux)
local RoduxNetworking = require(VirtualEvents.Parent.RoduxNetworking)
local types = require(VirtualEvents.types)
local enums = require(VirtualEvents.enums)
local rsvpsImpl = require(script.Parent["rsvps.impl"])

local MOCK_VIRTUAL_EVENT_ID = "virtualEventId"

local roduxNetworking = RoduxNetworking.config({
	keyPath = "networkStatus",
	networkImpl = HttpRequest.config({
		requestFunction = HttpRequest.requestFunctions.HttpRbxApi,
	}),
})

local networkingVirtualEvents = NetworkingVirtualEvents.config({
	roduxNetworking = roduxNetworking,
})

local GetVirtualEventRsvps = networkingVirtualEvents.GetVirtualEventRsvps
local GetVirtualEventRsvpCounts = networkingVirtualEvents.GetVirtualEventRsvpCounts
local UpdateMyRsvpStatus = networkingVirtualEvents.UpdateMyRsvpStatus

local mockPlayers = {
	LocalPlayer = {
		UserId = "-1",
	},
}

local reducer = Rodux.combineReducers({
	networkStatus = roduxNetworking.installReducer(),
	rsvps = rsvpsImpl(networkingVirtualEvents, mockPlayers :: any),
})

local store

beforeEach(function()
	store = Rodux.Store.new(reducer, nil, {
		Rodux.thunkMiddleware,
	})
end)

afterEach(function()
	GetVirtualEventRsvps.Mock.clear()
	GetVirtualEventRsvpCounts.Mock.clear()
	UpdateMyRsvpStatus.Mock.clear()
end)

describe("page", function()
	it("should return an empty table by default", function()
		local state = store:getState()
		expect(state.rsvps.page).toEqual({})
	end)

	describe("GetVirtualEventRsvps", function()
		it("should set nextPageCursor and prevPageCursor", function()
			GetVirtualEventRsvps.Mock.reply({
				responseBody = {
					nextPageCursor = "next",
					prevPageCursor = "prev",
					data = {},
				},
			})

			store:dispatch(GetVirtualEventRsvps.API(MOCK_VIRTUAL_EVENT_ID))

			local state = store:getState()

			expect(state.rsvps.page.nextPageCursor).toBe("next")
			expect(state.rsvps.page.prevPageCursor).toBe("prev")
		end)
	end)
end)

describe("counters", function()
	it("should return an empty table by default", function()
		local state = store:getState()
		expect(state.rsvps.counters).toEqual({})
	end)

	it("should add a table with `none`, `going`, `maybeGoing`, and `notGoing` for the virtual event", function()
		local counters: types.RsvpCounters = {
			none = 0,
			going = 0,
			maybeGoing = 0,
			notGoing = 0,
		}

		GetVirtualEventRsvpCounts.Mock.reply({
			responseBody = {
				counters = counters,
			},
		})

		store:dispatch(GetVirtualEventRsvpCounts.API(MOCK_VIRTUAL_EVENT_ID))

		local state = store:getState()

		expect(state.rsvps.counters[MOCK_VIRTUAL_EVENT_ID]).toEqual(counters)
	end)
end)

describe("byVirtualEventId", function()
	it("should return an empty table by default", function()
		local state = store:getState()
		expect(state.rsvps.byVirtualEventId).toEqual({})
	end)

	describe("GetVirtualEventRsvps", function()
		it("should key RSVPs by VirtualEvent ID", function()
			GetVirtualEventRsvps.Mock.reply({
				responseBody = {
					data = {},
				},
			})

			store:dispatch(GetVirtualEventRsvps.API(MOCK_VIRTUAL_EVENT_ID))

			local state = store:getState()

			expect(state.rsvps.byVirtualEventId).toHaveProperty(MOCK_VIRTUAL_EVENT_ID)
		end)

		it("should handle multiple users", function()
			GetVirtualEventRsvps.Mock.reply({
				responseBody = {
					data = {
						{
							userId = 1,
							rsvpStatus = enums.RsvpStatus.Going,
						},
						{
							userId = 2,
							rsvpStatus = enums.RsvpStatus.MaybeGoing,
						},
						{
							userId = 3,
							rsvpStatus = enums.RsvpStatus.NotGoing,
						},
					},
				},
			})

			store:dispatch(GetVirtualEventRsvps.API(MOCK_VIRTUAL_EVENT_ID))

			local state = store:getState()
			local rsvps = state.rsvps.byVirtualEventId[MOCK_VIRTUAL_EVENT_ID]

			expect(rsvps).toHaveProperty("1")
			expect(rsvps).toHaveProperty("2")
			expect(rsvps).toHaveProperty("3")
			expect(rsvps).never.toHaveProperty("4")
		end)

		it("should add the response data as-is", function()
			local rsvp = {
				userId = 1,
				rsvpStatus = enums.RsvpStatus.Going,
			}

			GetVirtualEventRsvps.Mock.reply({
				responseBody = {
					data = { rsvp },
				},
			})

			store:dispatch(GetVirtualEventRsvps.API(MOCK_VIRTUAL_EVENT_ID))

			local state = store:getState()
			local rsvps = state.rsvps.byVirtualEventId[MOCK_VIRTUAL_EVENT_ID]
			local otherRsvp = rsvps[tostring(rsvp.userId)]

			expect(otherRsvp).toBe(rsvp)
		end)

		it("should handle two events with the same user", function()
			local virtualEventIdGoing = "1"
			local rsvpGoing = {
				userId = 1,
				rsvpStatus = enums.RsvpStatus.Going,
			}

			local virtualEventIdNotGoing = "2"
			local rsvpNotGoing = {
				userId = 1,
				rsvpStatus = enums.RsvpStatus.NotGoing,
			}

			GetVirtualEventRsvps.Mock.reply({
				responseBody = {
					data = { rsvpGoing },
				},
			})

			store:dispatch(GetVirtualEventRsvps.API(virtualEventIdGoing))

			GetVirtualEventRsvps.Mock.clear()
			GetVirtualEventRsvps.Mock.reply({
				responseBody = {
					data = { rsvpNotGoing },
				},
			})

			store:dispatch(GetVirtualEventRsvps.API(virtualEventIdNotGoing))

			local state = store:getState()

			local goingRsvps = state.rsvps.byVirtualEventId[virtualEventIdGoing]
			expect(goingRsvps).toBeDefined()
			expect(goingRsvps["1"]).toBeDefined()
			expect(goingRsvps["1"].rsvpStatus).toBe(enums.RsvpStatus.Going)

			local notGoingRsvps = state.rsvps.byVirtualEventId[virtualEventIdNotGoing]
			expect(notGoingRsvps).toBeDefined()
			expect(notGoingRsvps["1"]).toBeDefined()
			expect(notGoingRsvps["1"].rsvpStatus).toBe(enums.RsvpStatus.NotGoing)
		end)

		it("should return the state as-is on failure", function()
			GetVirtualEventRsvps.Mock.replyWithError("error")

			local state = store:getState()

			store:dispatch(GetVirtualEventRsvps.API(MOCK_VIRTUAL_EVENT_ID)):catch(function() end)

			local newState = store:getState()

			expect(newState.rsvps).toEqual(state.rsvps)
		end)
	end)

	describe("UpdateMyRsvpStatus", function()
		it("should update the user's RSVP status locally", function()
			UpdateMyRsvpStatus.Mock.reply({})

			store:dispatch(UpdateMyRsvpStatus.API(MOCK_VIRTUAL_EVENT_ID, enums.RsvpStatus.Going))

			local state = store:getState()
			local rsvps = state.rsvps.byVirtualEventId[MOCK_VIRTUAL_EVENT_ID]
			local clientRsvp = rsvps[tostring(mockPlayers.LocalPlayer.UserId)]

			expect(clientRsvp.rsvpStatus).toBe(enums.RsvpStatus.Going)
		end)

		it("should return the state as-is on failure", function()
			UpdateMyRsvpStatus.Mock.replyWithError("error")

			local state = store:getState()

			store:dispatch(UpdateMyRsvpStatus.API(MOCK_VIRTUAL_EVENT_ID, enums.RsvpStatus.Going)):catch(function() end)

			local newState = store:getState()

			expect(newState.rsvps).toEqual(state.rsvps)
		end)
	end)
end)

return {}
