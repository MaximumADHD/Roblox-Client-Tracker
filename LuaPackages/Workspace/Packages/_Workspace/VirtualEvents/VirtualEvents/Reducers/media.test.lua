local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local JestGlobals = require(VirtualEvents.Parent.Dev.JestGlobals)
local afterEach = JestGlobals.afterEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local HttpRequest = require(VirtualEvents.Parent.HttpRequest)
local NetworkingGames = require(VirtualEvents.Parent.NetworkingGames)
local Rodux = require(VirtualEvents.Parent.Rodux)
local RoduxNetworking = require(VirtualEvents.Parent.RoduxNetworking)
local ExperienceMediaModel = require(VirtualEvents.Models.ExperienceMediaModel)
local mediaImpl = require(script.Parent["media.impl"])

local roduxNetworking = RoduxNetworking.config({
	keyPath = "networkStatus",
	networkImpl = HttpRequest.config({
		requestFunction = HttpRequest.requestFunctions.HttpRbxApi,
	}),
})

local networkingGames = NetworkingGames.config({
	roduxNetworking = roduxNetworking,
})

local reducer = Rodux.combineReducers({
	networkStatus = roduxNetworking.installReducer(),
	media = mediaImpl(networkingGames),
})

local MOCK_UNIVERSE_ID = "3531439676"

local mockMediaResponse = ExperienceMediaModel.mock()

afterEach(function()
	networkingGames.GetExperienceMedia.Mock.clear()
end)

describe("GetExperienceMedia", function()
	describe("Succeeded", function()
		it("should add a table for the event", function()
			networkingGames.GetExperienceMedia.Mock.reply({
				responseBody = {
					data = {
						mockMediaResponse,
					},
				},
			})

			local store = Rodux.Store.new(reducer, nil, {
				Rodux.thunkMiddleware,
			})

			store:dispatch(networkingGames.GetExperienceMedia.API({ MOCK_UNIVERSE_ID }))

			local state = store:getState()

			expect(state.media).toHaveProperty(MOCK_UNIVERSE_ID)
		end)

		it("should return an array of ExperienceMedia objects", function()
			networkingGames.GetExperienceMedia.Mock.reply({
				responseBody = {
					data = {
						mockMediaResponse,
					},
				},
			})

			local store = Rodux.Store.new(reducer, nil, {
				Rodux.thunkMiddleware,
			})

			store:dispatch(networkingGames.GetExperienceMedia.API({ MOCK_UNIVERSE_ID }))

			local state = store:getState()

			expect(state.media[MOCK_UNIVERSE_ID]).toEqual({ mockMediaResponse })
		end)
	end)

	describe("Failed", function()
		it("should not change the state", function()
			local errorMessage = "failed"

			networkingGames.GetExperienceMedia.Mock.reply({
				responseBody = {
					data = {
						mockMediaResponse,
					},
				},
			})

			local store = Rodux.Store.new(reducer, nil, {
				Rodux.thunkMiddleware,
			})

			store:dispatch(networkingGames.GetExperienceMedia.API({ MOCK_UNIVERSE_ID }))

			local state = store:getState()

			networkingGames.GetExperienceMedia.Mock.clear()
			networkingGames.GetExperienceMedia.Mock.replyWithError(errorMessage)

			local errorFromRequest
			store:dispatch(networkingGames.GetExperienceMedia.API()):catch(function(expectedError)
				errorFromRequest = expectedError
			end)

			local newState = store:getState()

			-- Ensure the state is unchanged
			expect(state.media).toEqual(newState.media)
			expect(errorFromRequest).toBe(errorMessage)
		end)
	end)
end)

return {}
