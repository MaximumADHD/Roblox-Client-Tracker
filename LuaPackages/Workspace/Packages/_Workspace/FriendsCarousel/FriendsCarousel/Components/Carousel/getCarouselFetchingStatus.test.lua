local FriendsCarousel = script.Parent.Parent.Parent
local devDependencies = require(FriendsCarousel.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it
local baseTestStates = devDependencies.baseTestStates
local RODUX_KEY = require(FriendsCarousel.Common.Constants).RODUX_KEY

local getCarouselFetchingStatus = require(script.Parent.getCarouselFetchingStatus)

local shouldShowRecommendationsTRUE = true
local shouldShowRecommendationsFALSE = false
describe("Fetching status", function()
	it("SHOULD return fetchingStatus Fetching if friends endpoint is still fetching", function()
		local state = baseTestStates.friendsAndRecommendations

		state[RODUX_KEY].NetworkStatus = {
			["https://friends.roblox.com//v1/users/test/friends"] = "Fetching",
		}

		jestExpect(getCarouselFetchingStatus(state, state.LocalUserId, shouldShowRecommendationsTRUE)).toEqual(
			"Fetching"
		)
	end)

	describe("WHEN shouldShowRecommendations = false", function()
		it("SHOULD return fetchingStatus Done WHEN friends endpoint is Done", function()
			local state = baseTestStates.manyFriendsAndRecommendations

			state[RODUX_KEY].NetworkStatus = {
				["https://friends.roblox.com//v1/users/test/friends"] = "Done",
				["https://friends.roblox.com//v1/users/test/friends/recommendations"] = "NotStarted",
			}

			jestExpect(getCarouselFetchingStatus(state, state.LocalUserId, shouldShowRecommendationsFALSE)).toEqual(
				"Done"
			)
		end)

		it("SHOULD return fetchingStatus Done WHEN friends endpoint is Failed", function()
			local state = baseTestStates.manyFriendsAndRecommendations

			state[RODUX_KEY].NetworkStatus = {
				["https://friends.roblox.com//v1/users/test/friends"] = "Failed",
				["https://friends.roblox.com//v1/users/test/friends/recommendations"] = "NotStarted",
			}

			jestExpect(getCarouselFetchingStatus(state, state.LocalUserId, shouldShowRecommendationsFALSE)).toEqual(
				"Done"
			)
		end)
	end)

	describe("WHEN shouldShowRecommendations = true", function()
		it("SHOULD return fetchingStatus Fetching WHEN recommendations is still fetching", function()
			local state = baseTestStates.friendsAndRecommendations

			state[RODUX_KEY].NetworkStatus = {
				["https://friends.roblox.com//v1/users/test/friends"] = "Done",
				["https://friends.roblox.com//v1/users/test/friends/recommendations"] = "Fetching",
			}

			jestExpect(getCarouselFetchingStatus(state, state.LocalUserId, shouldShowRecommendationsTRUE)).toEqual(
				"Fetching"
			)
		end)
	end)

	it("SHOULD return fetchingStatus Fetching WHEN recommendations request is not started", function()
		local state = baseTestStates.friendsAndRecommendations

		state[RODUX_KEY].NetworkStatus = {
			["https://friends.roblox.com//v1/users/test/friends"] = "Done",
			["https://friends.roblox.com//v1/users/test/friends/recommendations"] = "NotStarted",
		}

		jestExpect(getCarouselFetchingStatus(state, state.LocalUserId, shouldShowRecommendationsTRUE)).toEqual(
			"Fetching"
		)
	end)

	it("SHOULD return fetchingStatus Done WHEN recommendations endpoint is Done", function()
		local state = baseTestStates.friendsAndRecommendations

		state[RODUX_KEY].NetworkStatus = {
			["https://friends.roblox.com//v1/users/test/friends"] = "Done",
			["https://friends.roblox.com//v1/users/test/friends/recommendations"] = "Done",
		}

		jestExpect(getCarouselFetchingStatus(state, state.LocalUserId, shouldShowRecommendationsTRUE)).toEqual("Done")
	end)

	it("SHOULD return fetchingStatus Done WHEN friends endpoint Failed", function()
		local state = baseTestStates.friendsAndRecommendations

		state[RODUX_KEY].NetworkStatus = {
			["https://friends.roblox.com//v1/users/test/friends"] = "Failed",
			["https://friends.roblox.com//v1/users/test/friends/recommendations"] = "Done",
		}

		jestExpect(getCarouselFetchingStatus(state, state.LocalUserId, shouldShowRecommendationsTRUE)).toEqual("Done")
	end)

	it("SHOULD return fetchingStatus Done WHEN recommendations endpoint Failed", function()
		local state = baseTestStates.friendsAndRecommendations

		state[RODUX_KEY].NetworkStatus = {
			["https://friends.roblox.com//v1/users/test/friends"] = "Done",
			["https://friends.roblox.com//v1/users/test/friends/recommendations"] = "Failed",
		}

		jestExpect(getCarouselFetchingStatus(state, state.LocalUserId, shouldShowRecommendationsTRUE)).toEqual("Done")
	end)

	it("SHOULD return fetchingStatus Done WHEN both endpoints Failed", function()
		local state = baseTestStates.friendsAndRecommendations

		state[RODUX_KEY].NetworkStatus = {
			["https://friends.roblox.com//v1/users/test/friends"] = "Failed",
			["https://friends.roblox.com//v1/users/test/friends/recommendations"] = "Failed",
		}

		jestExpect(getCarouselFetchingStatus(state, state.LocalUserId, shouldShowRecommendationsTRUE)).toEqual("Done")
	end)
end)
