local FriendsCarousel = script.Parent.Parent.Parent
local devDependencies = require(FriendsCarousel.devDependencies)
local jest = devDependencies.jest
local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it

local UnitTestHelpers = devDependencies.UnitTestHelpers
local findImageSet = devDependencies.findImageSet
local runWhileMounted = UnitTestHelpers.runWhileMounted
local createTreeWithProviders = require(FriendsCarousel.TestHelpers.createTreeWithProviders)
local mockStore = require(FriendsCarousel.TestHelpers.mockStore)
-- FIXME: APPFDN-1925
local CarouselUserTileStories = (
	require((FriendsCarousel :: any).Stories:FindFirstChild("CarouselUserTile.story")).stories
) :: any
local RhodiumHelpers = devDependencies.RhodiumHelpers()
local users = require(FriendsCarousel.TestHelpers.mockedUsers)
local RODUX_KEY = require(FriendsCarousel.Common.Constants).RODUX_KEY

local getFFlagFriendsCarouselIncomingFriendRequest =
	require(FriendsCarousel.Flags.getFFlagFriendsCarouselIncomingFriendRequest)
local getFFlagFriendsCarouselFixOnlineIcon = require(FriendsCarousel.Flags.getFFlagFriendsCarouselFixOnlineIcon)

describe("CarouselUserTile", function()
	describe("WHEN any type of user is passed", function()
		local runForAnyUserStory = function(UserType: string)
			it("SHOULD mount and unmount " .. UserType, function()
				local UserTileComponent = createTreeWithProviders(CarouselUserTileStories[UserType], {
					store = mockStore({}),
				})
				runWhileMounted(UserTileComponent, function(parent)
					jestExpect(#parent:GetChildren()).toBe(1)
				end)
			end)

			it("SHOULD render Avatar, Name " .. UserType, function()
				local UserTileComponent = createTreeWithProviders(CarouselUserTileStories[UserType], {
					store = mockStore({}),
				})
				runWhileMounted(UserTileComponent, function(parent)
					jestExpect(#parent:GetChildren()).toBe(1)

					local PlayerAvatar = RhodiumHelpers.findFirstInstance(parent, {
						Name = "PlayerAvatar",
					})
					local PlayerName = RhodiumHelpers.findFirstInstance(parent, {
						Name = "PlayerName",
					})
					jestExpect(PlayerAvatar).never.toBeNil()
					jestExpect(PlayerName).never.toBeNil()
					jestExpect(PlayerAvatar).toBeAbove(PlayerName)
				end)
			end)

			it("SHOULD call onActivated when clicked on CarouselUserTile " .. UserType, function()
				local onActivatedSpy = jest.fn()
				local UserTileComponent = createTreeWithProviders(CarouselUserTileStories[UserType], {
					store = mockStore({}),
					props = {
						onActivated = function(...)
							onActivatedSpy(...)
						end,
					},
				})
				runWhileMounted(UserTileComponent, function(parent)
					local UserTile = RhodiumHelpers.findFirstInstance(parent, {
						Name = "UserTileCircular",
					})
					RhodiumHelpers.clickInstance(UserTile)

					jestExpect(onActivatedSpy).toHaveBeenCalledTimes(1)
				end)
			end)
		end

		for userId, _user in pairs(users) do
			runForAnyUserStory(userId)
		end
	end)

	describe("WHEN friend is passed", function()
		local runForFriendStory = function(UserType, predicates)
			it("SHOULD render correct contextual info " .. UserType, function()
				local UserTileComponent = createTreeWithProviders(CarouselUserTileStories[UserType], {
					store = mockStore({}),
					props = {},
				})
				runWhileMounted(UserTileComponent, function(parent)
					jestExpect(#parent:GetChildren()).toBe(1)

					if predicates.presenceExpectation.text then
						local ContextualText = RhodiumHelpers.findFirstInstance(parent, {
							Text = predicates.presenceExpectation.text,
						})
						jestExpect(ContextualText).toEqual(jestExpect.any("Instance"))
					end

					local OnlineIndicator =
						RhodiumHelpers.findFirstInstance(parent, findImageSet("component_assets/circle_25"))

					if predicates.presenceExpectation.onlineIndicator then
						jestExpect(OnlineIndicator).toEqual(jestExpect.any("Instance"))
					else
						jestExpect(OnlineIndicator).toBeNil()
					end
				end)
			end)
		end

		runForFriendStory("friendOnline", {
			presenceExpectation = {
				onlineIndicator = true,
			},
		})
		runForFriendStory("friendOffline", {
			presenceExpectation = {
				onlineIndicator = false,
			},
		})
		runForFriendStory("friendInGame", {
			presenceExpectation = {
				onlineIndicator = true,
				text = "last Location very long name name name",
			},
		})
		if getFFlagFriendsCarouselFixOnlineIcon() then
			runForFriendStory("friendInGameWithoutLocation", {
				presenceExpectation = {
					onlineIndicator = true,
				},
			})
		end
		runForFriendStory("friendInStudio", {
			presenceExpectation = {
				onlineIndicator = true,
				text = "In Studio location",
			},
		})
	end)

	describe("WHEN recommendation is passed", function()
		local runForRecommendationStory = function(UserType)
			it("SHOULD render correct contextual text if user is recommendation" .. UserType, function()
				local UserTileComponent = createTreeWithProviders(CarouselUserTileStories[UserType], {
					store = mockStore({}),
					props = {},
				})
				runWhileMounted(UserTileComponent, function(parent)
					jestExpect(#parent:GetChildren()).toBe(1)
					local ContextualText = RhodiumHelpers.findFirstInstance(parent, {
						Text = "Feature.Friends.Label.Suggested",
					})

					jestExpect(ContextualText).toEqual(jestExpect.any("Instance"))

					local PlayerAvatar = RhodiumHelpers.findFirstInstance(parent, {
						Name = "PlayerAvatar",
					})

					jestExpect(PlayerAvatar).toBeAbove(ContextualText)
				end)
			end)
		end

		runForRecommendationStory("recommendationMutualSingle")
		runForRecommendationStory("recommendationMutual")
		runForRecommendationStory("recommendationMutualNone")
		runForRecommendationStory("recommendationFrequent")
	end)

	if getFFlagFriendsCarouselIncomingFriendRequest() then
		describe("WHEN recommendation has incoming friend request", function()
			it("SHOULD have 'Friend request' contextual info", function()
				local state = {
					LocalUserId = "localUserId",
					[RODUX_KEY] = {
						NetworkStatus = {},
						Friends = {
							byUserId = {},
							countsByUserId = {},
							recommendations = {
								hasIncomingFriendRequest = {
									["2326285850"] = true,
								},
							},
						},
						Users = {},
						Presence = {},
					},
				}

				local UserTileComponent =
					createTreeWithProviders(CarouselUserTileStories.recommendationIncomingFriendRequest, {
						store = mockStore(state),
					})

				runWhileMounted(UserTileComponent, function(parent)
					jestExpect(#parent:GetChildren()).toBe(1)
					local ContextualText = RhodiumHelpers.findFirstInstance(parent, {
						Text = "Feature.Friends.Label.FriendRequest",
					})

					jestExpect(ContextualText).toEqual(jestExpect.any("Instance"))

					local PlayerAvatar = RhodiumHelpers.findFirstInstance(parent, {
						Name = "PlayerAvatar",
					})

					jestExpect(PlayerAvatar).toBeAbove(ContextualText)
				end)
			end)
		end)
	end
end)
