local FriendsCarousel = script:FindFirstAncestor("FriendsCarousel")
local devDependencies = require(FriendsCarousel.devDependencies)
local dependencies = require(FriendsCarousel.dependencies)
local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it

local UnitTestHelpers = devDependencies.UnitTestHelpers
local jest = devDependencies.jest
local runWhileMounted = UnitTestHelpers.runWhileMounted
local llama = dependencies.llama
local createTreeWithProviders = require(FriendsCarousel.TestHelpers.createTreeWithProviders)
local mockStore = require(FriendsCarousel.TestHelpers.mockStore)
local baseTestStates = devDependencies.baseTestStates
local RODUX_KEY = require(FriendsCarousel.Common.Constants).RODUX_KEY

local UserTileContainer = require(script.Parent.UserTileContainer)

describe("UserTileContainer", function()
	local user = {
		id = "1",
		username = "Joe",
		displayName = "Schmoe",
		isFriendWithUser = false,
		mutualFriendsList = {},
	}

	local DEFAULT_PROPS = {
		layoutOrder = 0,
		setPeopleListFrozen = function() end,
		user = user,
		onActivated = function() end,
		showToast = function() end,
		userSeen = function() end,
		absoluteIndex = 10,
	}

	local LOCAL_USER_ID = "123"

	local state = {
		LocalUserId = LOCAL_USER_ID,
		[RODUX_KEY] = {
			NetworkStatus = {},
			Friends = {
				byUserId = {},
				countsByUserId = {},
			},
			Users = {},
			Presence = {},
		},
	}

	it("SHOULD mount and unmount with default state", function()
		local UserTileContainerElement = createTreeWithProviders(UserTileContainer, {
			store = mockStore(state),
			props = DEFAULT_PROPS,
		})

		runWhileMounted(UserTileContainerElement, function(parent)
			jestExpect(#parent:GetChildren()).toBe(1)
		end)
	end)

	it("SHOULD fire user seen when loaded", function()
		local userSeen = jest.fn()
		local UserTileContainerElement = createTreeWithProviders(UserTileContainer, {
			store = mockStore(state),
			props = llama.Dictionary.join(DEFAULT_PROPS, {
				userSeen = userSeen,
			}),
		})

		runWhileMounted(UserTileContainerElement, function(parent)
			jestExpect(#parent:GetChildren()).toBe(1)

			jestExpect(userSeen).toHaveBeenCalledTimes(1)
			jestExpect(userSeen).toHaveBeenCalledWith(user, {
				absolutePosition = 10,
			})
		end)
	end)

	it("SHOULD mount and unmount with friendsAndRecommendations state", function()
		local UserTileContainerElement = createTreeWithProviders(UserTileContainer, {
			store = mockStore(baseTestStates.friendsAndRecommendations),
			props = DEFAULT_PROPS,
		})

		runWhileMounted(UserTileContainerElement, function(parent)
			jestExpect(#parent:GetChildren()).toBe(1)
		end)
	end)
end)
