local PYMKCarousel = script:FindFirstAncestor("PYMKCarousel")
local devDependencies = require(PYMKCarousel.devDependencies)
local dependencies = require(PYMKCarousel.dependencies)
local Dash = dependencies.Dash
local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it

local jest = devDependencies.jest
local UnitTestHelpers = devDependencies.UnitTestHelpers
local findImageSet = devDependencies.findImageSet
local runWhileMounted = UnitTestHelpers.runWhileMounted
local createTreeWithProviders = require(PYMKCarousel.TestHelpers.createTreeWithProviders)
local mockedRecommendationsState = require(PYMKCarousel.TestHelpers.mockedRecommendations).state
local recommendationIds = require(PYMKCarousel.TestHelpers.mockedRecommendations).recommendationIds
local mockStore = require(PYMKCarousel.TestHelpers.mockStore)
local TextKeys = require(PYMKCarousel.Common.TextKeys)
local RhodiumHelpers = devDependencies.RhodiumHelpers()
local llama = dependencies.llama
local NetworkingFriends = dependencies.NetworkingFriends
local RecommendationContextType = dependencies.RoduxFriends.Enums.RecommendationContextType
local Analytics = require(PYMKCarousel.Analytics)
local EventNames = Analytics.EventNames
local Constants = require(PYMKCarousel.Common.Constants)
local getFFlagPYMKCarouselIncomingFriendRequest = require(PYMKCarousel.Flags.getFFlagPYMKCarouselIncomingFriendRequest)
local getFFlagPYMKCarouselIncomingFriendRequestAnalytics =
	require(PYMKCarousel.Flags.getFFlagPYMKCarouselIncomingFriendRequestAnalytics)
local getFFlagFixFriendshipOriginSourceType = dependencies.getFFlagFixFriendshipOriginSourceType

local PYMKCarouselUserTile = require(script.Parent.PYMKCarouselUserTile)

local DEFAULT_PROPS = {
	tileWidth = 100,
	localUserId = "0",
	contextualInfoLines = 2,
	openProfilePeekView = Dash.noop,
	showToast = Dash.noop,
	fireAnalyticsEvent = Dash.noop,
	recommendationSessionId = "recommendationSessionId",
}

describe("PYMKCarouselUserTile should render correct UI", function()
	local checkTileExists = function(userId)
		it("SHOULD render Tile for user with " .. userId, function()
			local component = createTreeWithProviders(PYMKCarouselUserTile, {
				store = mockStore(mockedRecommendationsState),
				props = llama.Dictionary.join(DEFAULT_PROPS, {
					userId = userId,
				}),
			})
			runWhileMounted(component, function(parent)
				jestExpect(#parent:GetChildren()).toEqual(1)
				local PlayerTile = RhodiumHelpers.findFirstInstance(parent, {
					Name = "PlayerTile",
				})
				jestExpect(PlayerTile).toEqual(jestExpect.any("Instance"))
			end)
		end)
	end

	local checkNameExists = function(userId)
		it("SHOULD render Name for user with " .. userId, function()
			local component = createTreeWithProviders(PYMKCarouselUserTile, {
				store = mockStore(mockedRecommendationsState),
				props = llama.Dictionary.join(DEFAULT_PROPS, {
					userId = userId,
				}),
			})
			runWhileMounted(component, function(parent)
				jestExpect(#parent:GetChildren()).toEqual(1)
				local PlayerName = RhodiumHelpers.findFirstInstance(parent, {
					Name = "PlayerName",
				})
				jestExpect(PlayerName).toEqual(jestExpect.any("Instance"))
			end)
		end)
	end

	local checkContextualInfoExists = function(userId, text)
		it("SHOULD render correct Contextual Information for user with " .. userId, function()
			local component = createTreeWithProviders(PYMKCarouselUserTile, {
				store = mockStore(mockedRecommendationsState),
				props = llama.Dictionary.join(DEFAULT_PROPS, {
					userId = userId,
				}),
			})
			runWhileMounted(component, function(parent)
				jestExpect(#parent:GetChildren()).toEqual(1)
				local ContextualInfo = RhodiumHelpers.findFirstInstance(parent, {
					Text = text,
				})
				jestExpect(ContextualInfo).toEqual(jestExpect.any("Instance"))
			end)
		end)
	end

	local checkContextualInfoDoesNotExist = function(userId)
		it("SHOULD render correct Contextual Information for user with " .. userId, function()
			local component = createTreeWithProviders(PYMKCarouselUserTile, {
				store = mockStore(mockedRecommendationsState),
				props = llama.Dictionary.join(DEFAULT_PROPS, {
					userId = userId,
				}),
			})
			runWhileMounted(component, function(parent)
				jestExpect(#parent:GetChildren()).toEqual(1)
				local ContextualText = RhodiumHelpers.findFirstInstance(parent, {
					Name = "ContextualText",
				})
				jestExpect(ContextualText).toBeNil()
			end)
		end)
	end

	local checkButtonExists = function(userId, conditions: any?)
		it("SHOULD render correct Button for user with " .. userId, function()
			local component = createTreeWithProviders(PYMKCarouselUserTile, {
				store = mockStore(mockedRecommendationsState),
				props = llama.Dictionary.join(DEFAULT_PROPS, {
					userId = userId,
				}),
			})
			runWhileMounted(component, function(parent)
				jestExpect(#parent:GetChildren()).toEqual(1)
				local Button = RhodiumHelpers.findFirstInstance(
					parent,
					findImageSet(
						if conditions and conditions.isPending
							then "icons/actions/friends/friendpending"
							else "icons/actions/friends/friendAdd"
					)
				)

				jestExpect(Button).toEqual(jestExpect.any("Instance"))
			end)
		end)
	end

	checkTileExists(recommendationIds.longName)
	checkTileExists(recommendationIds.noContext)
	checkTileExists(recommendationIds.mutualContextPlural)
	checkTileExists(recommendationIds.mutualContextSingle)
	checkTileExists(recommendationIds.mutualContextNone)
	checkTileExists(recommendationIds.frequentContext)
	checkTileExists(recommendationIds.pendingFriendRequest)

	checkNameExists(recommendationIds.longName)
	checkNameExists(recommendationIds.noContext)
	checkNameExists(recommendationIds.mutualContextPlural)
	checkNameExists(recommendationIds.mutualContextSingle)
	checkNameExists(recommendationIds.mutualContextNone)
	checkNameExists(recommendationIds.frequentContext)
	checkNameExists(recommendationIds.pendingFriendRequest)

	checkContextualInfoDoesNotExist(recommendationIds.noContext)
	checkContextualInfoExists(recommendationIds.mutualContextPlural, "3 feature.friends.label.mutualfriends")
	checkContextualInfoExists(recommendationIds.mutualContextSingle, "1 feature.friends.label.singularmutualfriend")
	checkContextualInfoDoesNotExist(recommendationIds.mutualContextNone)
	checkContextualInfoExists(recommendationIds.frequentContext, "Feature.Friends.Label.Frequent")

	checkButtonExists(recommendationIds.longName)
	checkButtonExists(recommendationIds.noContext)
	checkButtonExists(recommendationIds.mutualContextPlural)
	checkButtonExists(recommendationIds.mutualContextSingle)
	checkButtonExists(recommendationIds.mutualContextNone)
	checkButtonExists(recommendationIds.frequentContext)
	checkButtonExists(recommendationIds.pendingFriendRequest, {
		isPending = true,
	})

	if getFFlagPYMKCarouselIncomingFriendRequest() then
		checkTileExists(recommendationIds.incomingFriendRequest)
		checkNameExists(recommendationIds.incomingFriendRequest)
		checkContextualInfoExists(recommendationIds.incomingFriendRequest, "Feature.Friends.Label.FriendRequest")
		checkButtonExists(recommendationIds.incomingFriendRequest)
	end
end)

describe("When interacting with PYMKCarouselUserTile", function()
	it("SHOULD open Profile Peek View WHEN when User Tile is clicked", function()
		local openProfilePeekViewSpy = jest.fn()
		local component = createTreeWithProviders(PYMKCarouselUserTile, {
			store = mockStore(mockedRecommendationsState),
			props = llama.Dictionary.join(DEFAULT_PROPS, {
				userId = recommendationIds.mutualContextPlural,
				openProfilePeekView = function(...)
					openProfilePeekViewSpy(...)
				end,
			}),
		})
		runWhileMounted(component, function(parent)
			jestExpect(#parent:GetChildren()).toEqual(1)
			local PlayerTile = RhodiumHelpers.findFirstInstance(parent, {
				Name = "PlayerTile",
			})
			RhodiumHelpers.clickInstance(PlayerTile)
			jestExpect(openProfilePeekViewSpy).toHaveBeenCalledTimes(1)
			jestExpect(openProfilePeekViewSpy).toHaveBeenCalledWith(recommendationIds.mutualContextPlural, {
				isRecommendation = true,
				mutualFriendsCount = 3,
				recommendationContextType = "MutualFriends",
				recommendationSessionId = "recommendationSessionId",
				recommendationRank = 10,
				source = Constants.HomepagePYMKCarouselSourceName,
			})
		end)
	end)

	it("SHOULD open Profile Peek View WHEN when User Info is clicked", function()
		local openProfilePeekViewSpy = jest.fn()
		local component = createTreeWithProviders(PYMKCarouselUserTile, {
			store = mockStore(mockedRecommendationsState),
			props = llama.Dictionary.join(DEFAULT_PROPS, {
				userId = recommendationIds.mutualContextPlural,
				openProfilePeekView = function(...)
					openProfilePeekViewSpy(...)
				end,
			}),
		})
		runWhileMounted(component, function(parent)
			jestExpect(#parent:GetChildren()).toEqual(1)
			local UserInfo = RhodiumHelpers.findFirstInstance(parent, {
				Name = "UserInfo",
			})
			RhodiumHelpers.clickInstance(UserInfo)
			jestExpect(openProfilePeekViewSpy).toHaveBeenCalledTimes(1)
			jestExpect(openProfilePeekViewSpy).toHaveBeenCalledWith(recommendationIds.mutualContextPlural, {
				isRecommendation = true,
				mutualFriendsCount = 3,
				recommendationContextType = "MutualFriends",
				recommendationSessionId = "recommendationSessionId",
				recommendationRank = 10,
				source = Constants.HomepagePYMKCarouselSourceName,
			})
		end)
	end)

	it("SHOULD send friend request when Add Friend button clicked", function()
		local RequestFriendshipFromUserIdSpy = jest.fn()
		NetworkingFriends.RequestFriendshipFromUserId.Mock.reply(function(_url, _method, options)
			local postBody = options.postBody
			if getFFlagFixFriendshipOriginSourceType() then
				jestExpect(postBody.friendshipOriginSourceType).toBe("FriendRecommendations")
			end
			RequestFriendshipFromUserIdSpy()
			return {}
		end)
		local component = createTreeWithProviders(PYMKCarouselUserTile, {
			store = mockStore(mockedRecommendationsState),
			props = llama.Dictionary.join(DEFAULT_PROPS, {
				userId = recommendationIds.mutualContextPlural,
			}),
		})
		runWhileMounted(component, function(parent)
			jestExpect(#parent:GetChildren()).toEqual(1)
			local Button = RhodiumHelpers.findFirstInstance(parent, findImageSet("icons/actions/friends/friendAdd"))
			RhodiumHelpers.clickInstance(Button)
			jestExpect(RequestFriendshipFromUserIdSpy).toHaveBeenCalledTimes(1)

			NetworkingFriends.RequestFriendshipFromUserId.Mock.clear()
		end)
	end)

	it("SHOULD not send friend request when Pending request button clicked", function()
		local RequestFriendshipFromUserIdSpy = jest.fn()
		NetworkingFriends.RequestFriendshipFromUserId.Mock.reply(function()
			RequestFriendshipFromUserIdSpy()
			return {}
		end)
		local component = createTreeWithProviders(PYMKCarouselUserTile, {
			store = mockStore(mockedRecommendationsState),
			props = llama.Dictionary.join(DEFAULT_PROPS, {
				userId = recommendationIds.pendingFriendRequest,
			}),
		})
		runWhileMounted(component, function(parent)
			jestExpect(#parent:GetChildren()).toEqual(1)
			local Button = RhodiumHelpers.findFirstInstance(parent, findImageSet("icons/actions/friends/friendpending"))
			RhodiumHelpers.clickInstance(Button)
			jestExpect(RequestFriendshipFromUserIdSpy).never.toHaveBeenCalled()
			NetworkingFriends.RequestFriendshipFromUserId.Mock.clear()
		end)
	end)

	if getFFlagPYMKCarouselIncomingFriendRequest() then
		it("SHOULD accept friend request when Add Friend button clicked from incoming friend request", function()
			local AcceptFriendRequestFromUserIdSpy = jest.fn()
			NetworkingFriends.AcceptFriendRequestFromUserId.Mock.reply(function()
				AcceptFriendRequestFromUserIdSpy()
				return {}
			end)
			local component = createTreeWithProviders(PYMKCarouselUserTile, {
				store = mockStore(mockedRecommendationsState),
				props = llama.Dictionary.join(DEFAULT_PROPS, {
					userId = recommendationIds.incomingFriendRequest,
				}),
			})
			runWhileMounted(component, function(parent)
				jestExpect(#parent:GetChildren()).toEqual(1)
				local Button = RhodiumHelpers.findFirstInstance(parent, findImageSet("icons/actions/friends/friendAdd"))
				RhodiumHelpers.clickInstance(Button)
				jestExpect(AcceptFriendRequestFromUserIdSpy).toHaveBeenCalledTimes(1)
				NetworkingFriends.AcceptFriendRequestFromUserId.Mock.clear()
			end)
		end)
	end

	it("SHOULD show successful toast if send friend request successful", function()
		local RequestFriendshipFromUserIdSpy = jest.fn()
		local showToastSpy = jest.fn()
		NetworkingFriends.RequestFriendshipFromUserId.Mock.reply(function()
			RequestFriendshipFromUserIdSpy()
			return {}
		end)
		local component = createTreeWithProviders(PYMKCarouselUserTile, {
			store = mockStore(mockedRecommendationsState),
			props = llama.Dictionary.join(DEFAULT_PROPS, {
				userId = recommendationIds.mutualContextPlural,
				showToast = function(...)
					showToastSpy(...)
				end,
			}),
		})
		runWhileMounted(component, function(parent)
			jestExpect(#parent:GetChildren()).toEqual(1)
			local Button = RhodiumHelpers.findFirstInstance(parent, findImageSet("icons/actions/friends/friendAdd"))
			RhodiumHelpers.clickInstance(Button)
			jestExpect(RequestFriendshipFromUserIdSpy).toHaveBeenCalledTimes(1)
			jestExpect(showToastSpy).toHaveBeenCalledTimes(1)
			jestExpect(showToastSpy).toHaveBeenCalledWith(TextKeys.FriendRequestSentToast)

			NetworkingFriends.RequestFriendshipFromUserId.Mock.clear()
		end)
	end)

	it("SHOULD show error toast if send friend request failed", function()
		local RequestFriendshipFromUserIdSpy = jest.fn()
		local showToastSpy = jest.fn()
		NetworkingFriends.RequestFriendshipFromUserId.Mock.replyWithError(function()
			RequestFriendshipFromUserIdSpy()
			return {}
		end)
		local component = createTreeWithProviders(PYMKCarouselUserTile, {
			store = mockStore(mockedRecommendationsState),
			props = llama.Dictionary.join(DEFAULT_PROPS, {
				userId = recommendationIds.mutualContextPlural,
				showToast = function(...)
					showToastSpy(...)
				end,
			}),
		})
		runWhileMounted(component, function(parent)
			jestExpect(#parent:GetChildren()).toEqual(1)
			local Button = RhodiumHelpers.findFirstInstance(parent, findImageSet("icons/actions/friends/friendAdd"))
			RhodiumHelpers.clickInstance(Button)
			jestExpect(RequestFriendshipFromUserIdSpy).toHaveBeenCalledTimes(1)
			jestExpect(showToastSpy).toHaveBeenCalledTimes(1)
			jestExpect(showToastSpy).toHaveBeenCalledWith(TextKeys.SomethingIsWrongToast)

			NetworkingFriends.RequestFriendshipFromUserId.Mock.clear()
		end)
	end)

	if getFFlagPYMKCarouselIncomingFriendRequest() then
		it("SHOULD show successful toast if accept friend request successful", function()
			local AcceptFriendRequestFromUserIdSpy = jest.fn()
			local showToastSpy = jest.fn()
			NetworkingFriends.AcceptFriendRequestFromUserId.Mock.reply(function()
				AcceptFriendRequestFromUserIdSpy()
				return {}
			end)
			local component = createTreeWithProviders(PYMKCarouselUserTile, {
				store = mockStore(mockedRecommendationsState),
				props = llama.Dictionary.join(DEFAULT_PROPS, {
					userId = recommendationIds.incomingFriendRequest,
					showToast = function(...)
						showToastSpy(...)
					end,
				}),
			})
			runWhileMounted(component, function(parent)
				jestExpect(#parent:GetChildren()).toEqual(1)
				local Button = RhodiumHelpers.findFirstInstance(parent, findImageSet("icons/actions/friends/friendAdd"))
				RhodiumHelpers.clickInstance(Button)
				jestExpect(AcceptFriendRequestFromUserIdSpy).toHaveBeenCalledTimes(1)
				jestExpect(showToastSpy).toHaveBeenCalledTimes(1)
				jestExpect(showToastSpy).toHaveBeenCalledWith(TextKeys.FriendAddedToast)

				NetworkingFriends.AcceptFriendRequestFromUserId.Mock.clear()
			end)
		end)

		it("SHOULD show error toast if accept friend request failed", function()
			local AcceptFriendRequestFromUserIdSpy = jest.fn()
			local showToastSpy = jest.fn()
			NetworkingFriends.AcceptFriendRequestFromUserId.Mock.replyWithError(function()
				AcceptFriendRequestFromUserIdSpy()
				return {}
			end)
			local component = createTreeWithProviders(PYMKCarouselUserTile, {
				store = mockStore(mockedRecommendationsState),
				props = llama.Dictionary.join(DEFAULT_PROPS, {
					userId = recommendationIds.incomingFriendRequest,
					showToast = function(...)
						showToastSpy(...)
					end,
				}),
			})
			runWhileMounted(component, function(parent)
				jestExpect(#parent:GetChildren()).toEqual(1)
				local Button = RhodiumHelpers.findFirstInstance(parent, findImageSet("icons/actions/friends/friendAdd"))
				RhodiumHelpers.clickInstance(Button)
				jestExpect(AcceptFriendRequestFromUserIdSpy).toHaveBeenCalledTimes(1)
				jestExpect(showToastSpy).toHaveBeenCalledTimes(1)
				jestExpect(showToastSpy).toHaveBeenCalledWith(TextKeys.SomethingIsWrongToast)

				NetworkingFriends.AcceptFriendRequestFromUserId.Mock.clear()
			end)
		end)
	end

	it("SHOULD fire analytics event UserPressed when User Tile is clicked for Mutual Friends context", function()
		local fireAnalyticsEvent = jest.fn()
		local component = createTreeWithProviders(PYMKCarouselUserTile, {
			store = mockStore(mockedRecommendationsState),
			props = llama.Dictionary.join(DEFAULT_PROPS, {
				fireAnalyticsEvent = fireAnalyticsEvent,
				userId = recommendationIds.mutualContextPlural,
			}),
		})
		runWhileMounted(component, function(parent)
			jestExpect(#parent:GetChildren()).toEqual(1)
			local PlayerTile = RhodiumHelpers.findFirstInstance(parent, {
				Name = "PlayerTile",
			})
			RhodiumHelpers.clickInstance(PlayerTile)
			jestExpect(fireAnalyticsEvent).toHaveBeenCalledTimes(1)
			jestExpect(fireAnalyticsEvent).toHaveBeenCalledWith(EventNames.UserPressed, {
				recommendationContextType = RecommendationContextType.MutualFriends,
				recommendationRank = 10,
				recommendationId = recommendationIds.mutualContextPlural,
				friendStatus = if getFFlagPYMKCarouselIncomingFriendRequestAnalytics()
					then Enum.FriendStatus.NotFriend
					else nil,
			})
		end)
	end)

	if getFFlagPYMKCarouselIncomingFriendRequestAnalytics() then
		it("SHOULD fire analytics event UserPressed when User Tile is clicked for Friend Request context", function()
			local fireAnalyticsEvent = jest.fn()
			local component = createTreeWithProviders(PYMKCarouselUserTile, {
				store = mockStore(mockedRecommendationsState),
				props = llama.Dictionary.join(DEFAULT_PROPS, {
					fireAnalyticsEvent = fireAnalyticsEvent,
					userId = recommendationIds.incomingFriendRequest,
				}),
			})
			runWhileMounted(component, function(parent)
				jestExpect(#parent:GetChildren()).toEqual(1)
				local PlayerTile = RhodiumHelpers.findFirstInstance(parent, {
					Name = "PlayerTile",
				})
				RhodiumHelpers.clickInstance(PlayerTile)
				jestExpect(fireAnalyticsEvent).toHaveBeenCalledTimes(1)
				jestExpect(fireAnalyticsEvent).toHaveBeenCalledWith(EventNames.UserPressed, {
					recommendationContextType = RecommendationContextType.MutualFriends,
					recommendationRank = 71,
					recommendationId = recommendationIds.incomingFriendRequest,
					friendStatus = Enum.FriendStatus.FriendRequestReceived,
				})
			end)
		end)
	end

	it("SHOULD fire analytics event UserPressed when User Info is clicked for Mutual Friends context", function()
		local fireAnalyticsEvent = jest.fn()
		local component = createTreeWithProviders(PYMKCarouselUserTile, {
			store = mockStore(mockedRecommendationsState),
			props = llama.Dictionary.join(DEFAULT_PROPS, {
				fireAnalyticsEvent = fireAnalyticsEvent,
				userId = recommendationIds.mutualContextPlural,
			}),
		})
		runWhileMounted(component, function(parent)
			jestExpect(#parent:GetChildren()).toEqual(1)
			local UserInfo = RhodiumHelpers.findFirstInstance(parent, {
				Name = "UserInfo",
			})
			RhodiumHelpers.clickInstance(UserInfo)
			jestExpect(fireAnalyticsEvent).toHaveBeenCalledTimes(1)
			jestExpect(fireAnalyticsEvent).toHaveBeenCalledWith(EventNames.UserPressed, {
				recommendationContextType = RecommendationContextType.MutualFriends,
				recommendationRank = 10,
				recommendationId = recommendationIds.mutualContextPlural,
				friendStatus = if getFFlagPYMKCarouselIncomingFriendRequestAnalytics()
					then Enum.FriendStatus.NotFriend
					else nil,
			})
		end)
	end)

	it("SHOULD fire analytics event RequestFriendship when Add Friend button clicked", function()
		local fireAnalyticsEvent = jest.fn()
		NetworkingFriends.RequestFriendshipFromUserId.Mock.reply(function() end)
		local component = createTreeWithProviders(PYMKCarouselUserTile, {
			store = mockStore(mockedRecommendationsState),
			props = llama.Dictionary.join(DEFAULT_PROPS, {
				fireAnalyticsEvent = fireAnalyticsEvent,
				userId = recommendationIds.mutualContextPlural,
			}),
		})
		runWhileMounted(component, function(parent)
			jestExpect(#parent:GetChildren()).toEqual(1)
			local Button = RhodiumHelpers.findFirstInstance(parent, findImageSet("icons/actions/friends/friendAdd"))
			RhodiumHelpers.clickInstance(Button)
			jestExpect(fireAnalyticsEvent).toHaveBeenCalledTimes(1)
			jestExpect(fireAnalyticsEvent).toHaveBeenCalledWith(EventNames.RequestFriendship, {
				recommendationContextType = RecommendationContextType.MutualFriends,
				recommendationRank = 10,
				requestedId = recommendationIds.mutualContextPlural,
			})

			NetworkingFriends.RequestFriendshipFromUserId.Mock.clear()
		end)
	end)

	if getFFlagPYMKCarouselIncomingFriendRequestAnalytics() then
		it("SHOULD fire analytics event AcceptFriendship when Accept Friend button clicked", function()
			local fireAnalyticsEvent = jest.fn()
			NetworkingFriends.AcceptFriendRequestFromUserId.Mock.reply(function() end)
			local component = createTreeWithProviders(PYMKCarouselUserTile, {
				store = mockStore(mockedRecommendationsState),
				props = llama.Dictionary.join(DEFAULT_PROPS, {
					fireAnalyticsEvent = fireAnalyticsEvent,
					userId = recommendationIds.incomingFriendRequest,
				}),
			})
			runWhileMounted(component, function(parent)
				jestExpect(#parent:GetChildren()).toEqual(1)
				local Button = RhodiumHelpers.findFirstInstance(parent, findImageSet("icons/actions/friends/friendAdd"))
				RhodiumHelpers.clickInstance(Button)
				jestExpect(fireAnalyticsEvent).toHaveBeenCalledTimes(1)
				jestExpect(fireAnalyticsEvent).toHaveBeenCalledWith(EventNames.AcceptFriendship, {
					recommendationContextType = RecommendationContextType.MutualFriends,
					recommendationRank = 71,
					requestedId = recommendationIds.incomingFriendRequest,
				})

				NetworkingFriends.RequestFriendshipFromUserId.Mock.clear()
			end)
		end)
	end
end)
