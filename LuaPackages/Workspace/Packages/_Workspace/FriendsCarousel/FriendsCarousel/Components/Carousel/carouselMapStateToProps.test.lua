local FriendsCarousel = script.Parent.Parent.Parent
local devDependencies = require(FriendsCarousel.devDependencies)
local dependencies = require(FriendsCarousel.dependencies)
local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it
local baseTestStates = devDependencies.baseTestStates
local llama = dependencies.llama
local RODUX_KEY = require(FriendsCarousel.Common.Constants).RODUX_KEY

local carouselMapStateToProps = require(script.Parent.carouselMapStateToProps)
local getRecommendationsList = require(script.Parent.getRecommendationsList)
local getFriendsList = require(script.Parent.getFriendsList)

describe("Correct data", function()
	it("SHOULD return correct data for default state", function()
		local state = {
			LocalUserId = "1111",
			[RODUX_KEY] = {
				NetworkStatus = {},
				Friends = {
					byUserId = {},
					countsByUserId = {},
					recommendations = {},
					requests = {
						receivedCount = 0,
					},
				},
				Users = {
					byUserId = {},
				},
				Presence = {},
				ShowContactImporterParams = {},
			},
		}
		local newProps = carouselMapStateToProps(state, {})

		local friendsAndRecList = { [1] = { isLoading = true } }

		jestExpect(newProps).toEqual({
			localUserId = state.LocalUserId,
			friendsAndRecList = friendsAndRecList,
			friendCount = 0,
			friendRequestCount = 0,
			fetchingStatus = "NotStarted",
			shouldShowContactImporterUpsellModal = nil,
			recommendationCount = 0,
		})
	end)

	it("SHOULD return correct data with not empty state", function()
		local state = baseTestStates.friendsAndRecommendations
		state[RODUX_KEY].NetworkStatus = {
			["https://friends.roblox.com//v1/users/test/friends"] = "Done",
			["https://friends.roblox.com//v1/users/test/friends/recommendations"] = "Done",
		}
		local recommendationsList = getRecommendationsList(state, RODUX_KEY)
		local friendsList = getFriendsList(state, RODUX_KEY)
		local friendsAndRecList = llama.List.join(friendsList, recommendationsList)
		local friendRequestCount = state[RODUX_KEY].Friends.requests.receivedCount

		local newProps = carouselMapStateToProps(state)
		jestExpect(newProps).toEqual({
			localUserId = state.LocalUserId,
			friendsAndRecList = friendsAndRecList,
			friendCount = #friendsList,
			friendRequestCount = friendRequestCount,
			fetchingStatus = "Done",
			recommendationCount = #recommendationsList,
		})
	end)

	it("SHOULD return correct data if friends or recommendations are fetching", function()
		local state = baseTestStates.friendsAndRecommendations
		state[RODUX_KEY].NetworkStatus = {
			["https://friends.roblox.com//v1/users/test/friends"] = "Fetching",
			["https://friends.roblox.com//v1/users/test/friends/recommendations"] = "NotStarted",
		}
		local recommendationsList = getRecommendationsList(state, RODUX_KEY)
		local friendsList = getFriendsList(state, RODUX_KEY)
		local friendsAndRecList = llama.List.join(friendsList, recommendationsList)
		local friendRequestCount = state[RODUX_KEY].Friends.requests.receivedCount

		table.insert(friendsAndRecList, { isLoading = true })

		local newProps = carouselMapStateToProps(state)
		jestExpect(newProps).toEqual({
			localUserId = state.LocalUserId,
			friendsAndRecList = friendsAndRecList,
			friendCount = #friendsList,
			friendRequestCount = friendRequestCount,
			fetchingStatus = "Fetching",
			recommendationCount = #recommendationsList,
		})
	end)
end)

describe("Fetching status", function()
	it("SHOULD return fetchingStatus Fetching if friends endpoint is still fetching", function()
		local state = baseTestStates.friendsAndRecommendations

		state[RODUX_KEY].NetworkStatus = {
			["https://friends.roblox.com//v1/users/test/friends"] = "Fetching",
		}

		local newProps = carouselMapStateToProps(state, {})
		jestExpect(newProps.fetchingStatus).toBe("Fetching")
	end)

	describe("WHEN >= 7 friends", function()
		it("SHOULD return fetchingStatus Done WHEN friends endpoint is Done", function()
			local state = baseTestStates.manyFriendsAndRecommendations

			state[RODUX_KEY].NetworkStatus = {
				["https://friends.roblox.com//v1/users/test/friends"] = "Done",
			}

			local newProps = carouselMapStateToProps(state, {})
			jestExpect(newProps.fetchingStatus).toBe("Done")
		end)
	end)

	describe("WHEN < 7 friends", function()
		it("SHOULD return fetchingStatus Fetching WHEN recommendations is still fetching", function()
			local state = baseTestStates.friendsAndRecommendations

			state[RODUX_KEY].NetworkStatus = {
				["https://friends.roblox.com//v1/users/test/friends"] = "Done",
				["https://friends.roblox.com//v1/users/test/friends/recommendations"] = "Fetching",
			}

			local newProps = carouselMapStateToProps(state, {})
			jestExpect(newProps.fetchingStatus).toBe("Fetching")
		end)
	end)

	it("SHOULD return fetchingStatus Fetching WHEN recommendations request is not started", function()
		local state = baseTestStates.friendsAndRecommendations

		state[RODUX_KEY].NetworkStatus = {
			["https://friends.roblox.com//v1/users/test/friends"] = "Done",
			["https://friends.roblox.com//v1/users/test/friends/recommendations"] = "NotStarted",
		}

		local newProps = carouselMapStateToProps(state, {})
		jestExpect(newProps.fetchingStatus).toBe("Fetching")
	end)

	it("SHOULD return fetchingStatus Done WHEN recommendations endpoint is Done", function()
		local state = baseTestStates.friendsAndRecommendations

		state[RODUX_KEY].NetworkStatus = {
			["https://friends.roblox.com//v1/users/test/friends"] = "Done",
			["https://friends.roblox.com//v1/users/test/friends/recommendations"] = "Done",
		}

		local newProps = carouselMapStateToProps(state, {})
		jestExpect(newProps.fetchingStatus).toBe("Done")
	end)

	it("SHOULD return fetchingStatus Done WHEN friends endpoint Failed", function()
		local state = baseTestStates.friendsAndRecommendations

		state[RODUX_KEY].NetworkStatus = {
			["https://friends.roblox.com//v1/users/test/friends"] = "Failed",
			["https://friends.roblox.com//v1/users/test/friends/recommendations"] = "Done",
		}

		local newProps = carouselMapStateToProps(state, {})
		jestExpect(newProps.fetchingStatus).toBe("Done")
	end)

	it("SHOULD return fetchingStatus Done WHEN recommendations endpoint Failed", function()
		local state = baseTestStates.friendsAndRecommendations

		state[RODUX_KEY].NetworkStatus = {
			["https://friends.roblox.com//v1/users/test/friends"] = "Done",
			["https://friends.roblox.com//v1/users/test/friends/recommendations"] = "Failed",
		}

		local newProps = carouselMapStateToProps(state, {})
		jestExpect(newProps.fetchingStatus).toBe("Done")
	end)

	it("SHOULD return fetchingStatus Done WHEN both endpoints Failed", function()
		local state = baseTestStates.friendsAndRecommendations

		state[RODUX_KEY].NetworkStatus = {
			["https://friends.roblox.com//v1/users/test/friends"] = "Failed",
			["https://friends.roblox.com//v1/users/test/friends/recommendations"] = "Failed",
		}

		local newProps = carouselMapStateToProps(state, {})
		jestExpect(newProps.fetchingStatus).toBe("Done")
	end)
end)
