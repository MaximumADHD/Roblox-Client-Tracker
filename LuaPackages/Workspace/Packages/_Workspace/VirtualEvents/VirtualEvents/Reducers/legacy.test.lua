local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local JestGlobals = require(VirtualEvents.Parent.Dev.JestGlobals)
local afterEach = JestGlobals.afterEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local HttpRequest = require(VirtualEvents.Parent.HttpRequest)
local NetworkingSponsoredEvents = require(VirtualEvents.NetworkingSponsoredEvents)
local Rodux = require(VirtualEvents.Parent.Rodux)
local RoduxNetworking = require(VirtualEvents.Parent.RoduxNetworking)
local legacyImpl = require(script.Parent["legacy.impl"])

local roduxNetworking = RoduxNetworking.config({
	keyPath = "networkStatus",
	networkImpl = HttpRequest.config({
		requestFunction = HttpRequest.requestFunctions.HttpRbxApi,
	}),
})

local networkingSponsoredEvents = NetworkingSponsoredEvents.config({
	roduxNetworking = roduxNetworking,
})

local reducer = Rodux.combineReducers({
	networkStatus = roduxNetworking.installReducer(),
	legacy = legacyImpl(networkingSponsoredEvents),
})

afterEach(function()
	networkingSponsoredEvents.GetSponsoredEvents.Mock.clear()
end)

describe("GetSponsoredEvents", function()
	describe("Succeeded", function()
		it("should add all events to the state", function()
			local store = Rodux.Store.new(reducer, nil, {
				Rodux.thunkMiddleware,
			})

			networkingSponsoredEvents.GetSponsoredEvents.Mock.reply({
				responseBody = {
					data = {
						NetworkingSponsoredEvents.createMockSponsoredEventResponse("First Event"),
						NetworkingSponsoredEvents.createMockSponsoredEventResponse("Second Event"),
					},
				},
			})

			store:dispatch(networkingSponsoredEvents.GetSponsoredEvents.API())

			local state = store:getState()

			expect(#state.legacy).toBe(2)

			expect(state.legacy[1].name).toBe("First Event")
			expect(state.legacy[2].name).toBe("Second Event")
		end)

		it("should only add events that pass validation", function()
			local store = Rodux.Store.new(reducer, nil, {
				Rodux.thunkMiddleware,
			})

			local badEvent = NetworkingSponsoredEvents.createMockSponsoredEventResponse("Second Event")
			badEvent.logoImageUrl = nil

			networkingSponsoredEvents.GetSponsoredEvents.Mock.reply({
				responseBody = {
					data = {
						NetworkingSponsoredEvents.createMockSponsoredEventResponse("First Event"),
						badEvent,
					},
				},
			})

			store:dispatch(networkingSponsoredEvents.GetSponsoredEvents.API())

			local state = store:getState()

			expect(#state.legacy).toBe(1)
		end)
	end)

	describe("Failed", function()
		it("should return the same state", function()
			local initialEvents = {
				Foo = NetworkingSponsoredEvents.createMockSponsoredEventResponse("Foo"),
			}

			local store = Rodux.Store.new(reducer, {
				-- Propagate the state with an event so we can verify that
				-- it gets removed later
				legacy = initialEvents,
			}, {
				Rodux.thunkMiddleware,
			})

			networkingSponsoredEvents.GetSponsoredEvents.Mock.replyWithError("failed")

			local state = store:getState()

			-- Ensure the mocked event is there
			expect(state.legacy).toEqual(initialEvents)

			local errorFromRequest
			store:dispatch(networkingSponsoredEvents.GetSponsoredEvents.API()):catch(function(expectedError)
				errorFromRequest = expectedError
			end)

			local newState = store:getState()

			expect(newState.legacy).toEqual(state.legacy)
			expect(errorFromRequest).toBe("failed")
		end)
	end)
end)

return {}
