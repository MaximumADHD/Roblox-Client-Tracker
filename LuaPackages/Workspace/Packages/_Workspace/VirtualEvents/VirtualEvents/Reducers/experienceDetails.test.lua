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
local ExperienceDetailsModel = require(VirtualEvents.Models.ExperienceDetailsModel)
local experienceDetailsImpl = require(script.Parent["experienceDetails.impl"])

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
	experienceDetails = experienceDetailsImpl(networkingGames),
})

local mockUniverseId = "3531439676"
local mockExperienceDetails = ExperienceDetailsModel.mock()

afterEach(function()
	networkingGames.GetExperiencesDetails.Mock.clear()
end)

describe("GetExperiencesDetails", function()
	describe("Succeeded", function()
		it("should add the details to the state", function()
			networkingGames.GetExperiencesDetails.Mock.reply({
				responseBody = {
					data = {
						mockExperienceDetails,
					},
				},
			})

			local store = Rodux.Store.new(reducer, nil, {
				Rodux.thunkMiddleware,
			})

			store:dispatch(networkingGames.GetExperiencesDetails.API({ mockUniverseId }))

			local state = store:getState()

			expect(state.experienceDetails).toHaveProperty(mockUniverseId)
		end)
	end)

	describe("Failed", function()
		it("should not change the state", function()
			local errorMessage = "failed"

			networkingGames.GetExperiencesDetails.Mock.reply({
				responseBody = {
					data = {
						mockExperienceDetails,
					},
				},
			})

			local store = Rodux.Store.new(reducer, nil, {
				Rodux.thunkMiddleware,
			})

			store:dispatch(networkingGames.GetExperiencesDetails.API({ mockUniverseId }))

			local state = store:getState()

			networkingGames.GetExperiencesDetails.Mock.clear()
			networkingGames.GetExperiencesDetails.Mock.replyWithError(errorMessage)

			local errorFromRequest
			store:dispatch(networkingGames.GetExperiencesDetails.API({ mockUniverseId })):catch(function(expectedError)
				errorFromRequest = expectedError
			end)

			local newState = store:getState()

			-- Ensure the state is unchanged
			expect(state.experienceDetails).toEqual(newState.experienceDetails)
			expect(errorFromRequest).toBe(errorMessage)
		end)
	end)
end)

return {}
