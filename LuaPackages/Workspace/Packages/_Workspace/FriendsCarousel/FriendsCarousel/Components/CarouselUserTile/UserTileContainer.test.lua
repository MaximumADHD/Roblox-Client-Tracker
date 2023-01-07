local FriendsCarousel = script:FindFirstAncestor("FriendsCarousel")
local devDependencies = require(FriendsCarousel.devDependencies)
local dependencies = require(FriendsCarousel.dependencies)
local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it

local UnitTestHelpers = devDependencies.UnitTestHelpers
local RhodiumHelpers = devDependencies.RhodiumHelpers()
local jest = devDependencies.jest
local runWhileMounted = UnitTestHelpers.runWhileMounted
local llama = dependencies.llama
local NetworkingFriends = dependencies.NetworkingFriends
local createTreeWithProviders = require(FriendsCarousel.TestHelpers.createTreeWithProviders)
local mockStore = require(FriendsCarousel.TestHelpers.mockStore)
local baseTestStates = devDependencies.baseTestStates
local RODUX_KEY = require(FriendsCarousel.Common.Constants).RODUX_KEY
local TextKeys = require(FriendsCarousel.Common.TextKeys)
local validateEvent = require(FriendsCarousel.TestHelpers.validateEvent)
local EventNames = require(FriendsCarousel.Analytics.EventNames)
local mockedUsers = require(FriendsCarousel.TestHelpers.mockedUsers)
local validateDiagEvent = require(FriendsCarousel.TestHelpers.validateDiagEvent)
local UIVariants = require(FriendsCarousel.Common.UIVariants)

local getFFlagFriendsCarouselDontUnfriend = require(FriendsCarousel.Flags.getFFlagFriendsCarouselDontUnfriend)
local getFFlagFixFriendshipOriginSourceType = dependencies.getFFlagFixFriendshipOriginSourceType

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
		friendsCarouselExperimentVariant = UIVariants.SQUARE_TILES,
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

	describe("For any friendsCarouselExperimentVariant variant", function()
		local runForAnyVariant = function(variant)
			it("SHOULD mount and unmount with default state " .. variant, function()
				local UserTileContainerElement = createTreeWithProviders(UserTileContainer, {
					store = mockStore(state),
					props = llama.Dictionary.join(DEFAULT_PROPS, {
						friendsCarouselExperimentVariant = variant,
					}),
				})

				runWhileMounted(UserTileContainerElement, function(parent)
					jestExpect(#parent:GetChildren()).toBe(1)
				end)
			end)

			it("SHOULD fire user seen when loaded " .. variant, function()
				local userSeen = jest.fn()
				local UserTileContainerElement = createTreeWithProviders(UserTileContainer, {
					store = mockStore(state),
					props = llama.Dictionary.join(DEFAULT_PROPS, {
						userSeen = userSeen,
						friendsCarouselExperimentVariant = variant,
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

			it("SHOULD mount and unmount with friendsAndRecommendations state " .. variant, function()
				local UserTileContainerElement = createTreeWithProviders(UserTileContainer, {
					store = mockStore(baseTestStates.friendsAndRecommendations),
					props = llama.Dictionary.join(DEFAULT_PROPS, {
						friendsCarouselExperimentVariant = variant,
					}),
				})

				runWhileMounted(UserTileContainerElement, function(parent)
					jestExpect(#parent:GetChildren()).toBe(1)
				end)
			end)
		end

		runForAnyVariant(UIVariants.SQUARE_TILES)
		runForAnyVariant(UIVariants.CIRCULAR_TILES)
	end)

	describe("For friendsCarouselExperimentVariant = UIVariants.SQUARE_TILES", function()
		it("SHOULD send friend request if button is pressed", function()
			local RequestFriendshipFromUserIdSpy = jest.fn()
			NetworkingFriends.RequestFriendshipFromUserId.Mock.clear()
			NetworkingFriends.RequestFriendshipFromUserId.Mock.reply(function(_url, _method, options)
				local postBody = options.postBody
				if getFFlagFixFriendshipOriginSourceType() then
					jestExpect(postBody.friendshipOriginSourceType).toBe("FriendRecommendations")
				end

				RequestFriendshipFromUserIdSpy()
				return {
					responseBody = {
						data = {},
					},
				}
			end)
			local UserTileComponent, initializedMockAnalytics = createTreeWithProviders(UserTileContainer, {
				store = mockStore(baseTestStates.friendsAndRecommendations),
				props = llama.Dictionary.join(DEFAULT_PROPS, {
					user = mockedUsers.recommendationMutual,
					absoluteIndex = 15,
					friendsCarouselExperimentVariant = UIVariants.SQUARE_TILES,
				}),
			})

			runWhileMounted(UserTileComponent, function(parent)
				jestExpect(#parent:GetChildren()).toBe(1)
				wait(1)

				local PlayerTileButtons = RhodiumHelpers.findFirstInstance(parent, {
					Name = "PlayerTileButtons",
				})
				jestExpect(PlayerTileButtons[1]).never.toBeNil()
				RhodiumHelpers.clickInstance(PlayerTileButtons[1])
				jestExpect(RequestFriendshipFromUserIdSpy).toHaveBeenCalledTimes(1)
				jestExpect(initializedMockAnalytics.analyticsMock.EventStream.setRBXEventStream).toHaveBeenCalledTimes(
					1
				)
				jestExpect(initializedMockAnalytics.analyticsMock.EventStream.setRBXEventStream).toHaveBeenCalledWith(
					initializedMockAnalytics.analyticsMock.EventStream,
					validateEvent(EventNames.RequestFriendship, {
						absolutePosition = 15,
						recommendationContextType = "mutualFriends",
						recommendationRank = 1,
						requestedId = "2326285850",
						uid = "123",
					})
				)
				jestExpect(initializedMockAnalytics.analyticsMock.Diag.reportCounter).toHaveBeenCalledTimes(1)
				jestExpect(initializedMockAnalytics.analyticsMock.Diag.reportCounter).toHaveBeenCalledWith(
					initializedMockAnalytics.analyticsMock.Diag,
					validateDiagEvent(EventNames.RequestFriendship)
				)
			end)
		end)

		it("SHOULD show successful toast if send friend request successful", function()
			local RequestFriendshipFromUserIdSpy = jest.fn()
			local showToastSpy = jest.fn()
			NetworkingFriends.RequestFriendshipFromUserId.Mock.clear()
			NetworkingFriends.RequestFriendshipFromUserId.Mock.reply(function()
				RequestFriendshipFromUserIdSpy()
				return {
					responseBody = {
						data = {},
					},
				}
			end)
			local UserTileComponent, initializedMockAnalytics = createTreeWithProviders(UserTileContainer, {
				store = mockStore(baseTestStates.friendsAndRecommendations),
				props = llama.Dictionary.join(DEFAULT_PROPS, {
					showToast = function(...)
						showToastSpy(...)
					end,
					user = mockedUsers.recommendationMutual,
					absoluteIndex = 12,
					friendsCarouselExperimentVariant = UIVariants.SQUARE_TILES,
				}),
			})

			runWhileMounted(UserTileComponent, function(parent)
				jestExpect(#parent:GetChildren()).toBe(1)

				local PlayerTileButtons = RhodiumHelpers.findFirstInstance(parent, {
					Name = "PlayerTileButtons",
				})
				jestExpect(PlayerTileButtons).never.toBeNil()

				RhodiumHelpers.clickInstance(PlayerTileButtons[1])
				jestExpect(RequestFriendshipFromUserIdSpy).toHaveBeenCalledTimes(1)
				jestExpect(showToastSpy).toHaveBeenCalledTimes(1)
				jestExpect(showToastSpy).toHaveBeenCalledWith(TextKeys.FriendRequestSentToast)
				jestExpect(initializedMockAnalytics.analyticsMock.EventStream.setRBXEventStream).toHaveBeenCalledTimes(
					1
				)
				jestExpect(initializedMockAnalytics.analyticsMock.EventStream.setRBXEventStream).toHaveBeenCalledWith(
					initializedMockAnalytics.analyticsMock.EventStream,
					validateEvent(EventNames.RequestFriendship, {
						absolutePosition = 12,
						recommendationContextType = "mutualFriends",
						recommendationRank = 1,
						requestedId = "2326285850",
						uid = "123",
					})
				)
				jestExpect(initializedMockAnalytics.analyticsMock.Diag.reportCounter).toHaveBeenCalledTimes(1)
				jestExpect(initializedMockAnalytics.analyticsMock.Diag.reportCounter).toHaveBeenCalledWith(
					initializedMockAnalytics.analyticsMock.Diag,
					validateDiagEvent(EventNames.RequestFriendship)
				)
			end)
		end)

		it("SHOULD show error toast if send friend request failed", function()
			local RequestFriendshipFromUserIdSpy = jest.fn()
			local showToastSpy = jest.fn()
			NetworkingFriends.RequestFriendshipFromUserId.Mock.clear()
			NetworkingFriends.RequestFriendshipFromUserId.Mock.replyWithError(function()
				RequestFriendshipFromUserIdSpy()
				return {
					responseBody = {
						data = {},
					},
				}
			end)

			local UserTileComponent, initializedMockAnalytics = createTreeWithProviders(UserTileContainer, {
				store = mockStore(baseTestStates.friendsAndRecommendations),
				props = llama.Dictionary.join(DEFAULT_PROPS, {
					showToast = function(...)
						showToastSpy(...)
					end,
					user = mockedUsers.recommendationNone,
					absoluteIndex = 13,
					friendsCarouselExperimentVariant = UIVariants.SQUARE_TILES,
				}),
			})

			runWhileMounted(UserTileComponent, function(parent)
				jestExpect(#parent:GetChildren()).toBe(1)

				local PlayerTileButtons = RhodiumHelpers.findFirstInstance(parent, {
					Name = "PlayerTileButtons",
				})
				jestExpect(PlayerTileButtons).never.toBeNil()

				RhodiumHelpers.clickInstance(PlayerTileButtons[1])
				jestExpect(RequestFriendshipFromUserIdSpy).toHaveBeenCalledTimes(1)
				jestExpect(showToastSpy).toHaveBeenCalledTimes(1)
				jestExpect(showToastSpy).toHaveBeenCalledWith(TextKeys.SomethingIsWrongToast)
				jestExpect(initializedMockAnalytics.analyticsMock.EventStream.setRBXEventStream).toHaveBeenCalledTimes(
					1
				)
				jestExpect(initializedMockAnalytics.analyticsMock.EventStream.setRBXEventStream).toHaveBeenCalledWith(
					initializedMockAnalytics.analyticsMock.EventStream,
					validateEvent(EventNames.RequestFriendship, {
						absolutePosition = 13,
						recommendationContextType = "none",
						recommendationRank = 1,
						requestedId = "2326285850",
						uid = "123",
					})
				)
				jestExpect(initializedMockAnalytics.analyticsMock.Diag.reportCounter).toHaveBeenCalledTimes(1)
				jestExpect(initializedMockAnalytics.analyticsMock.Diag.reportCounter).toHaveBeenCalledWith(
					initializedMockAnalytics.analyticsMock.Diag,
					validateDiagEvent(EventNames.RequestFriendship)
				)
			end)
		end)

		if not getFFlagFriendsCarouselDontUnfriend() then
			it("SHOULD revoke friend request if button is pressed", function()
				local UnfriendTargetUserIdSpy = jest.fn()
				NetworkingFriends.UnfriendTargetUserId.Mock.clear()
				NetworkingFriends.UnfriendTargetUserId.Mock.reply(function()
					UnfriendTargetUserIdSpy()
					return {
						responseBody = {
							data = {},
						},
					}
				end)
				local UserTileContainerComponent, initializedMockAnalytics =
					createTreeWithProviders(UserTileContainer, {
						store = mockStore(baseTestStates.friendsAndRecommendations),
						props = llama.Dictionary.join(DEFAULT_PROPS, {
							user = mockedUsers.requestPending,
							absoluteIndex = 2,
							friendsCarouselExperimentVariant = UIVariants.SQUARE_TILES,
						}),
					})

				runWhileMounted(UserTileContainerComponent, function(parent)
					jestExpect(#parent:GetChildren()).toBe(1)

					local PlayerTileButtons = RhodiumHelpers.findFirstInstance(parent, {
						Name = "PlayerTileButtons",
					})
					jestExpect(PlayerTileButtons).never.toBeNil()

					RhodiumHelpers.clickInstance(PlayerTileButtons[1])
					jestExpect(UnfriendTargetUserIdSpy).toHaveBeenCalledTimes(1)
					jestExpect(initializedMockAnalytics.analyticsMock.EventStream.setRBXEventStream).toHaveBeenCalledTimes(
						1
					)
					jestExpect(initializedMockAnalytics.analyticsMock.EventStream.setRBXEventStream).toHaveBeenCalledWith(
						initializedMockAnalytics.analyticsMock.EventStream,
						validateEvent(EventNames.RevokeFriendRequest, {
							absolutePosition = 2,
							recommendationContextType = "mutualFriends",
							recommendationRank = 0,
							requestedId = "2326285850",
							uid = "123",
						})
					)
					jestExpect(initializedMockAnalytics.analyticsMock.Diag.reportCounter).toHaveBeenCalledTimes(1)
					jestExpect(initializedMockAnalytics.analyticsMock.Diag.reportCounter).toHaveBeenCalledWith(
						initializedMockAnalytics.analyticsMock.Diag,
						validateDiagEvent(EventNames.RevokeFriendRequest)
					)
				end)
			end)
		end

		if not getFFlagFriendsCarouselDontUnfriend() then
			it("SHOULD show successful toast if revoke friend request successful", function()
				local UnfriendTargetUserIdSpy = jest.fn()
				local showToastSpy = jest.fn()
				NetworkingFriends.UnfriendTargetUserId.Mock.clear()
				NetworkingFriends.UnfriendTargetUserId.Mock.reply(function()
					UnfriendTargetUserIdSpy()
					return {
						responseBody = {
							data = {},
						},
					}
				end)
				local UserTileComponent, initializedMockAnalytics = createTreeWithProviders(UserTileContainer, {
					store = mockStore(baseTestStates.friendsAndRecommendations),
					props = llama.Dictionary.join(DEFAULT_PROPS, {
						showToast = function(...)
							showToastSpy(...)
						end,
						user = mockedUsers.requestPending,
						absoluteIndex = 3,
						friendsCarouselExperimentVariant = UIVariants.SQUARE_TILES,
					}),
				})

				runWhileMounted(UserTileComponent, function(parent)
					jestExpect(#parent:GetChildren()).toBe(1)

					local PlayerTileButtons = RhodiumHelpers.findFirstInstance(parent, {
						Name = "PlayerTileButtons",
					})
					jestExpect(PlayerTileButtons).never.toBeNil()

					RhodiumHelpers.clickInstance(PlayerTileButtons[1])
					jestExpect(UnfriendTargetUserIdSpy).toHaveBeenCalledTimes(1)
					jestExpect(showToastSpy).toHaveBeenCalledTimes(1)
					jestExpect(showToastSpy).toHaveBeenCalledWith(TextKeys.FriendRequestCancelledToast)
					jestExpect(initializedMockAnalytics.analyticsMock.EventStream.setRBXEventStream).toHaveBeenCalledTimes(
						1
					)
					jestExpect(initializedMockAnalytics.analyticsMock.EventStream.setRBXEventStream).toHaveBeenCalledWith(
						initializedMockAnalytics.analyticsMock.EventStream,
						validateEvent(EventNames.RevokeFriendRequest, {
							absolutePosition = 3,
							recommendationContextType = "mutualFriends",
							recommendationRank = 0,
							requestedId = "2326285850",
							uid = "123",
						})
					)
					jestExpect(initializedMockAnalytics.analyticsMock.Diag.reportCounter).toHaveBeenCalledTimes(1)
					jestExpect(initializedMockAnalytics.analyticsMock.Diag.reportCounter).toHaveBeenCalledWith(
						initializedMockAnalytics.analyticsMock.Diag,
						validateDiagEvent(EventNames.RevokeFriendRequest)
					)
				end)
			end)

			it("SHOULD show error toast if revoke friend request failed", function()
				local UnfriendTargetUserIdSpy = jest.fn()
				local showToastSpy = jest.fn()
				NetworkingFriends.UnfriendTargetUserId.Mock.clear()
				NetworkingFriends.UnfriendTargetUserId.Mock.replyWithError(function()
					UnfriendTargetUserIdSpy()
					return {
						responseBody = {
							data = {},
						},
					}
				end)

				local UserTileComponent, initializedMockAnalytics = createTreeWithProviders(UserTileContainer, {
					store = mockStore(baseTestStates.friendsAndRecommendations),
					props = llama.Dictionary.join(DEFAULT_PROPS, {
						showToast = function(...)
							showToastSpy(...)
						end,
						user = mockedUsers.requestPending,
						absoluteIndex = 10,
						friendsCarouselExperimentVariant = UIVariants.SQUARE_TILES,
					}),
				})

				runWhileMounted(UserTileComponent, function(parent)
					jestExpect(#parent:GetChildren()).toBe(1)

					local PlayerTileButtons = RhodiumHelpers.findFirstInstance(parent, {
						Name = "PlayerTileButtons",
					})
					jestExpect(PlayerTileButtons).never.toBeNil()

					RhodiumHelpers.clickInstance(PlayerTileButtons[1])
					jestExpect(UnfriendTargetUserIdSpy).toHaveBeenCalledTimes(1)
					jestExpect(showToastSpy).toHaveBeenCalledTimes(1)
					jestExpect(showToastSpy).toHaveBeenCalledWith(TextKeys.SomethingIsWrongToast)
					jestExpect(initializedMockAnalytics.analyticsMock.EventStream.setRBXEventStream).toHaveBeenCalledTimes(
						1
					)
					jestExpect(initializedMockAnalytics.analyticsMock.EventStream.setRBXEventStream).toHaveBeenCalledWith(
						initializedMockAnalytics.analyticsMock.EventStream,
						validateEvent(EventNames.RevokeFriendRequest, {
							absolutePosition = 10,
							recommendationContextType = "mutualFriends",
							recommendationRank = 0,
							requestedId = "2326285850",
							uid = "123",
						})
					)
					jestExpect(initializedMockAnalytics.analyticsMock.Diag.reportCounter).toHaveBeenCalledTimes(1)
					jestExpect(initializedMockAnalytics.analyticsMock.Diag.reportCounter).toHaveBeenCalledWith(
						initializedMockAnalytics.analyticsMock.Diag,
						validateDiagEvent(EventNames.RevokeFriendRequest)
					)
				end)
			end)
		end
	end)
end)
