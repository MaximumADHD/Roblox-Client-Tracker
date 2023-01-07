local PYMKCarousel = script:FindFirstAncestor("PYMKCarousel")
local Analytics = require(PYMKCarousel.Analytics)
local devDependencies = require(PYMKCarousel.devDependencies)
local dependencies = require(PYMKCarousel.dependencies)
local UnitTestHelpers = devDependencies.UnitTestHelpers
local jest = devDependencies.jest
local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local it = JestGlobals.it

local Roact = dependencies.Roact
local RecommendationContextType = dependencies.RoduxFriends.Enums.RecommendationContextType
local runWhileMounted = UnitTestHelpers.runWhileMounted
local mockStore = require(PYMKCarousel.TestHelpers.mockStore)
local createTreeWithProviders = require(PYMKCarousel.TestHelpers.createTreeWithProviders)
local useUserSeenEvent = Analytics.useUserSeenEvent
local EventNames = Analytics.EventNames

local getFFlagPYMKCarouselIncomingFriendRequestAnalytics =
	require(PYMKCarousel.Flags.getFFlagPYMKCarouselIncomingFriendRequestAnalytics)

it("SHOULD fire UserSeen event when onViewableItemsChanged is called and userId not in userSeenIds", function()
	local fireAnalyticsEvent = jest.fn()

	local useUserSeenEventOutput
	local wrappedElement = function(props)
		useUserSeenEventOutput = useUserSeenEvent(fireAnalyticsEvent)
		return Roact.createElement("Frame")
	end

	local PYMKCarousel = createTreeWithProviders(wrappedElement, {
		store = mockStore({
			LocalUserId = 1,
		}),
	})

	runWhileMounted(PYMKCarousel, function(parent)
		local firstUserSeen = {
			id = "firstUserSeen",
			recommendationContextType = RecommendationContextType.MutualFriends,
			recommendationRank = 0,
			absolutePosition = 1,
		}

		local secondUserSeen = {
			id = "secondUserSeen",
			recommendationContextType = RecommendationContextType.MutualFriends,
			recommendationRank = 0,
			absolutePosition = 1,
		}

		local info = {
			viewableItems = {},
			changed = {
				{
					item = firstUserSeen,
				},
			},
		}

		local onViewableItemsChanged = useUserSeenEventOutput[1].onViewableItemsChanged
		onViewableItemsChanged(info)

		jestExpect(fireAnalyticsEvent).toHaveBeenCalledTimes(1)
		jestExpect(fireAnalyticsEvent).toHaveBeenCalledWith(EventNames.UserSeen, {
			userId = "firstUserSeen",
			recommendationContextType = RecommendationContextType.MutualFriends,
			recommendationRank = 0,
			absolutePosition = 1,
			friendStatus = if getFFlagPYMKCarouselIncomingFriendRequestAnalytics()
				then Enum.FriendStatus.NotFriend
				else nil,
		})

		local newInfo = {
			viewableItems = {},
			changed = {
				{
					item = firstUserSeen,
				},
				{
					item = secondUserSeen,
				},
			},
		}

		onViewableItemsChanged(newInfo)

		jestExpect(fireAnalyticsEvent).toHaveBeenCalledTimes(2)
		jestExpect(fireAnalyticsEvent).toHaveBeenCalledWith(EventNames.UserSeen, {
			userId = "secondUserSeen",
			recommendationContextType = RecommendationContextType.MutualFriends,
			recommendationRank = 0,
			absolutePosition = 1,
			friendStatus = if getFFlagPYMKCarouselIncomingFriendRequestAnalytics()
				then Enum.FriendStatus.NotFriend
				else nil,
		})
	end)
end)
