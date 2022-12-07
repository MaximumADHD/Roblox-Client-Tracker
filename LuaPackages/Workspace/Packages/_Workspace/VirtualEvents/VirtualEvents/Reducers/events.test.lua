local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local JestGlobals = require(VirtualEvents.Parent.Dev.JestGlobals)
local afterEach = JestGlobals.afterEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local HttpRequest = require(VirtualEvents.Parent.HttpRequest)
local NetworkingVirtualEvents = require(VirtualEvents.Parent.NetworkingVirtualEvents)
local Rodux = require(VirtualEvents.Parent.Rodux)
local RoduxNetworking = require(VirtualEvents.Parent.RoduxNetworking)
local types = require(VirtualEvents.types)
local network = require(VirtualEvents.network)
local VirtualEventModel = network.NetworkingVirtualEvents.VirtualEventModel
local eventsImpl = require(script.Parent["events.impl"])

local roduxNetworking = RoduxNetworking.config({
	keyPath = "networkStatus",
	networkImpl = HttpRequest.config({
		requestFunction = HttpRequest.requestFunctions.HttpRbxApi,
	}),
})

local networkingVirtualEvents = NetworkingVirtualEvents.config({
	roduxNetworking = roduxNetworking,
})

local reducer = Rodux.combineReducers({
	networkStatus = roduxNetworking.installReducer(),
	events = eventsImpl(networkingVirtualEvents),
})

afterEach(function()
	networkingVirtualEvents.GetActiveVirtualEvents.Mock.clear()
	networkingVirtualEvents.GetVirtualEvent.Mock.clear()
	networkingVirtualEvents.UpdateMyRsvpStatus.Mock.clear()
end)

describe("GetVirtualEvent", function()
	it("should add an event to events", function()
		local store = Rodux.Store.new(reducer, nil, {
			Rodux.thunkMiddleware,
		})

		networkingVirtualEvents.GetVirtualEvent.Mock.reply({
			responseBody = NetworkingVirtualEvents.createMockVirtualEventResponse("1"),
		})

		store:dispatch(networkingVirtualEvents.GetVirtualEvent.API("1"))

		local state = store:getState()

		expect(state.events["1"]).toBeDefined()
	end)
end)

describe("GetActiveVirtualEvents", function()
	describe("Succeeded", function()
		it("should add all events to the state", function()
			local store = Rodux.Store.new(reducer, nil, {
				Rodux.thunkMiddleware,
			})

			networkingVirtualEvents.GetActiveVirtualEvents.Mock.reply({
				responseBody = {
					nextPageCursor = "next",
					previousPageCursor = "previous",
					data = {
						NetworkingVirtualEvents.createMockVirtualEventResponse("12345"),
						NetworkingVirtualEvents.createMockVirtualEventResponse("54321"),
						NetworkingVirtualEvents.createMockVirtualEventResponse("1010101"),
						NetworkingVirtualEvents.createMockVirtualEventResponse("111222333"),
					},
				},
			})

			store:dispatch(networkingVirtualEvents.GetActiveVirtualEvents.API())

			local state = store:getState()

			expect(state.events["12345"]).toBeDefined()
			expect(state.events["54321"]).toBeDefined()
			expect(state.events["1010101"]).toBeDefined()
			expect(state.events["111222333"]).toBeDefined()
		end)

		it("should clear the old state when run again", function()
			local initialEvents: { [string]: types.VirtualEvent } = {}
			for i = 1, 4 do
				local eventId = tostring(i)
				initialEvents[eventId] = VirtualEventModel.mock(eventId)
			end

			local store = Rodux.Store.new(reducer, {
				events = initialEvents,
			}, {
				Rodux.thunkMiddleware,
			})

			networkingVirtualEvents.GetActiveVirtualEvents.Mock.reply({
				responseBody = {
					nextPageCursor = "next",
					previousPageCursor = "previous",
					data = {
						NetworkingVirtualEvents.createMockVirtualEventResponse("12345"),
					},
				},
			})

			local state = store:getState()

			expect(state.events).toHaveProperty("1")
			expect(state.events).toHaveProperty("2")
			expect(state.events).toHaveProperty("3")
			expect(state.events).toHaveProperty("4")
			expect(state.events).never.toHaveProperty("12345")

			store:dispatch(networkingVirtualEvents.GetActiveVirtualEvents.API())

			state = store:getState()

			expect(state.events).never.toHaveProperty("1")
			expect(state.events).never.toHaveProperty("2")
			expect(state.events).never.toHaveProperty("3")
			expect(state.events).never.toHaveProperty("4")
			expect(state.events).toHaveProperty("12345")
		end)

		it("should not add events with malformed dates", function()
			local good = NetworkingVirtualEvents.createMockVirtualEventResponse("1")
			local bad = NetworkingVirtualEvents.createMockVirtualEventResponse("2")
			bad.eventTime.startUtc = "foo"

			networkingVirtualEvents.GetActiveVirtualEvents.Mock.reply({
				responseBody = {
					data = { good, bad },
				},
			})

			local store = Rodux.Store.new(reducer, nil, {
				Rodux.thunkMiddleware,
			})

			store:dispatch(networkingVirtualEvents.GetActiveVirtualEvents.API())

			local state = store:getState()

			expect(state.events).toHaveProperty("1")
			expect(state.events).never.toHaveProperty("2")
		end)
	end)

	describe("Failed", function()
		it("should return an empty table", function()
			local initialEvents = {
				["12345"] = NetworkingVirtualEvents.createMockVirtualEventResponse("12345"),
			}

			local store = Rodux.Store.new(reducer, {
				-- Propagate the state with an event so we can verify that
				-- it gets removed later
				events = initialEvents,
			}, {
				Rodux.thunkMiddleware,
			})

			networkingVirtualEvents.GetActiveVirtualEvents.Mock.replyWithError("failed")

			local state = store:getState()

			-- Ensure the mock event is there
			expect(state.events).toEqual(initialEvents)

			local errorFromRequest
			store:dispatch(networkingVirtualEvents.GetActiveVirtualEvents.API()):catch(function(expectedError)
				errorFromRequest = expectedError
			end)

			state = store:getState()

			-- Ensure everything got removed
			expect(state.events).toEqual({})
			expect(errorFromRequest).toBe("failed")
		end)
	end)
end)

describe("UpdateMyRsvpStatus", function()
	it("should update userRsvpStatus to the new value", function()
		networkingVirtualEvents.UpdateMyRsvpStatus.Mock.reply({})

		local store = Rodux.Store.new(reducer, {
			events = {
				["1"] = NetworkingVirtualEvents.VirtualEventModel.mock("1"),
			},
		}, {
			Rodux.thunkMiddleware,
		})

		local state = store:getState()
		expect(state.events["1"].userRsvpStatus).never.toBe("going")

		store:dispatch(networkingVirtualEvents.UpdateMyRsvpStatus.API("1", "going"))

		state = store:getState()
		expect(state.events["1"].userRsvpStatus).toBe("going")
	end)

	it("should return the state as-is if the virtualEventId is not found", function()
		networkingVirtualEvents.UpdateMyRsvpStatus.Mock.reply({})

		local initialEvents = {
			["1"] = NetworkingVirtualEvents.VirtualEventModel.mock("1"),
		}

		local store = Rodux.Store.new(reducer, {
			events = initialEvents,
		}, {
			Rodux.thunkMiddleware,
		})

		store:dispatch(networkingVirtualEvents.UpdateMyRsvpStatus.API("2", "going"))

		expect(store:getState().events).toEqual(initialEvents)
	end)
end)
