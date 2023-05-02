local FriendsCarousel = script.Parent.Parent
local dependencies = require(FriendsCarousel.dependencies)
local NetworkingFriends = dependencies.NetworkingFriends
local NetworkingAliases = dependencies.NetworkingAliases
local mockStore = require(FriendsCarousel.TestHelpers.mockStore)
local devDependencies = require(FriendsCarousel.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local jest = devDependencies.jest

local RODUX_KEY = require(FriendsCarousel.Common.Constants).RODUX_KEY
local SocialLuaAnalytics = dependencies.SocialLuaAnalytics
local TestingAnalytics = SocialLuaAnalytics.TestingAnalytics
local mockAnalytics = TestingAnalytics.mockAnalytics
local Analytics = require(FriendsCarousel.Analytics)
local EventNames = Analytics.EventNames
local validateEvent = require(FriendsCarousel.TestHelpers.validateEvent)

local getFIntShowFriendRecommendationsLimit = require(FriendsCarousel.Flags.getFIntShowFriendRecommendationsLimit)
local validateDiagEvent = require(FriendsCarousel.TestHelpers.validateDiagEvent)

local getFFlagProfileAliasEnabled = dependencies.getFFlagProfileAliasEnabled
local isSubjectToDesktopPolicies = dependencies.isSubjectToDesktopPolicies

local mockedState = {
	LocalUserId = "123",
	[RODUX_KEY] = {
		NetworkStatus = {},
	},
}
local store = mockStore(mockedState)

local config

local desktopPoliciesMock = {
	isDesktop = false,
}

dependencies.isSubjectToDesktopPolicies = function()
	return desktopPoliciesMock.isDesktop
end

describe("FetchFriendsAndRecommendations", function()
	local FetchFriendsAndRecommendations = require(script.Parent.FetchFriendsAndRecommendations)
	local mockedAnalytics

	beforeEach(function()
		mockedAnalytics = mockAnalytics(jest)
		config = {
			analytics = mockedAnalytics,
		}
		NetworkingFriends.GetFriendsFromUserId.Mock.reply({})
		NetworkingFriends.GetFriendRecommendationsFromUserId.Mock.reply({
			responseBody = {
				data = {},
			},
		})
		NetworkingAliases.GetTagsFromUserIds.Mock.reply(function()
			return {
				responseBody = {
					data = {},
				},
			}
		end)

		config.friendsCarouselIXP = nil
		desktopPoliciesMock.isDesktop = false
	end)

	afterEach(function()
		NetworkingFriends.GetFriendsFromUserId.Mock.clear()
		NetworkingFriends.GetFriendRecommendationsFromUserId.Mock.clear()
		NetworkingAliases.GetTagsFromUserIds.Mock.clear()
		dependencies.isSubjectToDesktopPolicies = isSubjectToDesktopPolicies
	end)

	it("SHOULD always fetch friends and aliases", function()
		local GetFriendsFromUserIdSpy = jest.fn()
		NetworkingFriends.GetFriendsFromUserId.Mock.clear()
		NetworkingFriends.GetFriendsFromUserId.Mock.reply(function()
			GetFriendsFromUserIdSpy()
			return {
				responseBody = {
					data = {},
				},
			}
		end)

		local GetTagsFromUserIdsSpy = jest.fn()
		if getFFlagProfileAliasEnabled() then
			NetworkingAliases.GetTagsFromUserIds.Mock.clear()
			NetworkingAliases.GetTagsFromUserIds.Mock.reply(function()
				GetTagsFromUserIdsSpy()
				return {
					responseBody = {
						data = {},
					},
				}
			end)
		end

		store:dispatch(FetchFriendsAndRecommendations(config))
		jestExpect(GetFriendsFromUserIdSpy).toHaveBeenCalledTimes(1)
		if getFFlagProfileAliasEnabled() then
			jestExpect(GetTagsFromUserIdsSpy).toHaveBeenCalledTimes(1)
		end
		jestExpect(mockedAnalytics.EventStream.setRBXEventStream).toHaveBeenCalledTimes(1)
		jestExpect(mockedAnalytics.EventStream.setRBXEventStream).toHaveBeenCalledWith(
			mockedAnalytics.EventStream,
			validateEvent(EventNames.CarouselLoadedWithUsers, {
				friendCount = 0,
				recommendationCount = 0,
				recommendationLimit = getFIntShowFriendRecommendationsLimit(),
				fetchedRecommendations = if not desktopPoliciesMock.isDesktop then true else nil,
				refreshCount = 0,
				uid = "123",
			})
		)
		jestExpect(mockedAnalytics.Diag.reportCounter).toHaveBeenCalledTimes(1)
		jestExpect(mockedAnalytics.Diag.reportCounter).toHaveBeenCalledWith(
			mockedAnalytics.Diag,
			validateDiagEvent(EventNames.CarouselLoadedWithUsers)
		)
	end)

	it("SHOULD fetch recommendations if user has < 7 friends and mobile device", function()
		local GetFriendsFromUserIdSpy = jest.fn()
		NetworkingFriends.GetFriendsFromUserId.Mock.clear()
		NetworkingFriends.GetFriendsFromUserId.Mock.reply(function()
			GetFriendsFromUserIdSpy()
			return {
				responseBody = {
					-- 5 friends
					data = { { id = 1 }, { id = 2 }, { id = 3 }, { id = 4 }, { id = 5 } },
				},
			}
		end)

		local GetFriendRecommendationsFromUserIdSpy = jest.fn()
		NetworkingFriends.GetFriendRecommendationsFromUserId.Mock.clear()
		NetworkingFriends.GetFriendRecommendationsFromUserId.Mock.reply(function()
			GetFriendRecommendationsFromUserIdSpy()
			return {
				responseBody = {
					data = { { id = 1 }, { id = 3 }, { id = 4 }, { id = 5 } },
				},
			}
		end)

		local GetTagsFromUserIdsSpy = jest.fn()
		if getFFlagProfileAliasEnabled() then
			NetworkingAliases.GetTagsFromUserIds.Mock.clear()
			NetworkingAliases.GetTagsFromUserIds.Mock.reply(function()
				GetTagsFromUserIdsSpy()
				return {
					responseBody = {
						data = {},
					},
				}
			end)
		end

		store:dispatch(FetchFriendsAndRecommendations(config))
		jestExpect(GetFriendsFromUserIdSpy).toHaveBeenCalledTimes(1)
		if getFFlagProfileAliasEnabled() then
			jestExpect(GetTagsFromUserIdsSpy).toHaveBeenCalledTimes(1)
		end
		jestExpect(GetFriendRecommendationsFromUserIdSpy).toHaveBeenCalledTimes(1)
		jestExpect(mockedAnalytics.EventStream.setRBXEventStream).toHaveBeenCalledTimes(1)
		jestExpect(mockedAnalytics.EventStream.setRBXEventStream).toHaveBeenCalledWith(
			mockedAnalytics.EventStream,
			validateEvent(EventNames.CarouselLoadedWithUsers, {
				friendCount = 5,
				recommendationCount = 4,
				recommendationLimit = getFIntShowFriendRecommendationsLimit(),
				refreshCount = 0,
				uid = "123",
				fetchedRecommendations = true,
			})
		)
		jestExpect(mockedAnalytics.Diag.reportCounter).toHaveBeenCalledTimes(1)
		jestExpect(mockedAnalytics.Diag.reportCounter).toHaveBeenCalledWith(
			mockedAnalytics.Diag,
			validateDiagEvent(EventNames.CarouselLoadedWithUsers)
		)
	end)

	it("SHOULD fetch recommendations on if user has 6 friends and mobile device", function()
		local GetFriendsFromUserIdSpy = jest.fn()
		NetworkingFriends.GetFriendsFromUserId.Mock.clear()
		NetworkingFriends.GetFriendsFromUserId.Mock.reply(function()
			GetFriendsFromUserIdSpy()
			return {
				responseBody = {
					-- 6 friends
					data = { { id = 1 }, { id = 2 }, { id = 3 }, { id = 4 }, { id = 5 }, { id = 6 } },
				},
			}
		end)

		local GetFriendRecommendationsFromUserIdSpy = jest.fn()
		NetworkingFriends.GetFriendRecommendationsFromUserId.Mock.clear()
		NetworkingFriends.GetFriendRecommendationsFromUserId.Mock.reply(function()
			GetFriendRecommendationsFromUserIdSpy()
			return {
				responseBody = {
					data = { { id = 1 } },
				},
			}
		end)

		local GetTagsFromUserIdsSpy = jest.fn()
		if getFFlagProfileAliasEnabled() then
			NetworkingAliases.GetTagsFromUserIds.Mock.clear()
			NetworkingAliases.GetTagsFromUserIds.Mock.reply(function()
				GetTagsFromUserIdsSpy()
				return {
					responseBody = {
						data = {},
					},
				}
			end)
		end

		store:dispatch(FetchFriendsAndRecommendations(config))
		jestExpect(GetFriendsFromUserIdSpy).toHaveBeenCalledTimes(1)
		if getFFlagProfileAliasEnabled() then
			jestExpect(GetTagsFromUserIdsSpy).toHaveBeenCalledTimes(1)
		end
		jestExpect(GetFriendRecommendationsFromUserIdSpy).toHaveBeenCalledTimes(1)
		jestExpect(mockedAnalytics.EventStream.setRBXEventStream).toHaveBeenCalledTimes(1)
		jestExpect(mockedAnalytics.EventStream.setRBXEventStream).toHaveBeenCalledWith(
			mockedAnalytics.EventStream,
			validateEvent(EventNames.CarouselLoadedWithUsers, {
				friendCount = 6,
				recommendationCount = 1,
				recommendationLimit = getFIntShowFriendRecommendationsLimit(),
				refreshCount = 0,
				uid = "123",
				fetchedRecommendations = true,
			})
		)
		jestExpect(mockedAnalytics.Diag.reportCounter).toHaveBeenCalledTimes(1)
		jestExpect(mockedAnalytics.Diag.reportCounter).toHaveBeenCalledWith(
			mockedAnalytics.Diag,
			validateDiagEvent(EventNames.CarouselLoadedWithUsers)
		)
	end)

	it("SHOULD NOT fetch recommendations on if user >= 7 friends and mobile device", function()
		local GetFriendsFromUserIdSpy = jest.fn()
		NetworkingFriends.GetFriendsFromUserId.Mock.clear()
		NetworkingFriends.GetFriendsFromUserId.Mock.reply(function()
			GetFriendsFromUserIdSpy()
			return {
				responseBody = {
					-- 7 friends
					data = { { id = 1 }, { id = 2 }, { id = 3 }, { id = 4 }, { id = 5 }, { id = 6 }, { id = 7 } },
				},
			}
		end)

		local GetFriendRecommendationsFromUserIdSpy = jest.fn()
		NetworkingFriends.GetFriendRecommendationsFromUserId.Mock.clear()
		NetworkingFriends.GetFriendRecommendationsFromUserId.Mock.reply(function()
			GetFriendRecommendationsFromUserIdSpy()
			return {
				responseBody = {
					data = {},
				},
			}
		end)

		local GetTagsFromUserIdsSpy = jest.fn()
		if getFFlagProfileAliasEnabled() then
			NetworkingAliases.GetTagsFromUserIds.Mock.clear()
			NetworkingAliases.GetTagsFromUserIds.Mock.reply(function()
				GetTagsFromUserIdsSpy()
				return {
					responseBody = {
						data = {},
					},
				}
			end)
		end

		store:dispatch(FetchFriendsAndRecommendations(config))
		jestExpect(GetFriendsFromUserIdSpy).toHaveBeenCalledTimes(1)
		if getFFlagProfileAliasEnabled() then
			jestExpect(GetTagsFromUserIdsSpy).toHaveBeenCalledTimes(1)
		end
		jestExpect(GetFriendRecommendationsFromUserIdSpy).never.toHaveBeenCalled()
		jestExpect(mockedAnalytics.EventStream.setRBXEventStream).toHaveBeenCalledTimes(1)
		jestExpect(mockedAnalytics.EventStream.setRBXEventStream).toHaveBeenCalledWith(
			mockedAnalytics.EventStream,
			validateEvent(EventNames.CarouselLoadedWithUsers, {
				friendCount = 7,
				recommendationCount = 0,
				recommendationLimit = getFIntShowFriendRecommendationsLimit(),
				refreshCount = 0,
				uid = "123",
				fetchedRecommendations = false,
			})
		)
		jestExpect(mockedAnalytics.Diag.reportCounter).toHaveBeenCalledTimes(1)
		jestExpect(mockedAnalytics.Diag.reportCounter).toHaveBeenCalledWith(
			mockedAnalytics.Diag,
			validateDiagEvent(EventNames.CarouselLoadedWithUsers)
		)
	end)

	it("SHOULD NOT fetch recommendations on if user has < 7 friends and not mobile device", function()
		config.friendsCarouselIXP = nil
		desktopPoliciesMock.isDesktop = true

		local GetFriendsFromUserIdSpy = jest.fn()
		NetworkingFriends.GetFriendsFromUserId.Mock.clear()
		NetworkingFriends.GetFriendsFromUserId.Mock.reply(function()
			GetFriendsFromUserIdSpy()
			return {
				responseBody = {
					-- 5 friends
					data = { { id = 1 }, { id = 2 }, { id = 3 }, { id = 4 }, { id = 5 } },
				},
			}
		end)

		local GetFriendRecommendationsFromUserIdSpy = jest.fn()
		NetworkingFriends.GetFriendRecommendationsFromUserId.Mock.clear()
		NetworkingFriends.GetFriendRecommendationsFromUserId.Mock.reply(function()
			GetFriendRecommendationsFromUserIdSpy()
			return {
				responseBody = {
					data = {},
				},
			}
		end)

		local GetTagsFromUserIdsSpy = jest.fn()
		if getFFlagProfileAliasEnabled() then
			NetworkingAliases.GetTagsFromUserIds.Mock.clear()
			NetworkingAliases.GetTagsFromUserIds.Mock.reply(function()
				GetTagsFromUserIdsSpy()
				return {
					responseBody = {
						data = {},
					},
				}
			end)
		end

		store:dispatch(FetchFriendsAndRecommendations(config))
		jestExpect(GetFriendsFromUserIdSpy).toHaveBeenCalledTimes(1)
		if getFFlagProfileAliasEnabled() then
			jestExpect(GetTagsFromUserIdsSpy).toHaveBeenCalledTimes(1)
		end
		jestExpect(GetFriendRecommendationsFromUserIdSpy).never.toHaveBeenCalled()
		jestExpect(mockedAnalytics.EventStream.setRBXEventStream).toHaveBeenCalledTimes(1)
		jestExpect(mockedAnalytics.EventStream.setRBXEventStream).toHaveBeenCalledWith(
			mockedAnalytics.EventStream,
			validateEvent(EventNames.CarouselLoadedWithUsers, {
				friendCount = 5,
				recommendationCount = 0,
				recommendationLimit = getFIntShowFriendRecommendationsLimit(),
				refreshCount = 0,
				uid = "123",
				fetchedRecommendations = false,
			})
		)
		jestExpect(mockedAnalytics.Diag.reportCounter).toHaveBeenCalledTimes(1)
		jestExpect(mockedAnalytics.Diag.reportCounter).toHaveBeenCalledWith(
			mockedAnalytics.Diag,
			validateDiagEvent(EventNames.CarouselLoadedWithUsers)
		)
	end)

	it("SHOULD fetch recommendations with recommendationRequestId", function()
		local GetFriendsFromUserIdSpy = jest.fn()
		NetworkingFriends.GetFriendsFromUserId.Mock.clear()
		NetworkingFriends.GetFriendsFromUserId.Mock.reply(function()
			GetFriendsFromUserIdSpy()
			return {
				responseBody = {
					-- 6 friends
					data = { { id = 1 }, { id = 2 }, { id = 3 }, { id = 4 }, { id = 5 }, { id = 6 } },
				},
			}
		end)

		local GetTagsFromUserIdsSpy = jest.fn()
		if getFFlagProfileAliasEnabled() then
			NetworkingAliases.GetTagsFromUserIds.Mock.clear()
			NetworkingAliases.GetTagsFromUserIds.Mock.reply(function()
				GetTagsFromUserIdsSpy()
				return {
					responseBody = {
						data = {},
					},
				}
			end)
		end

		local GetFriendRecommendationsFromUserIdSpy = jest.fn()
		NetworkingFriends.GetFriendRecommendationsFromUserId.Mock.clear()
		NetworkingFriends.GetFriendRecommendationsFromUserId.Mock.reply(function()
			GetFriendRecommendationsFromUserIdSpy()
			return {
				responseBody = {
					data = { { id = 1 } },
					recommendationRequestId = "recommendationRequestId",
				},
			}
		end)

		store:dispatch(FetchFriendsAndRecommendations(config))
		jestExpect(GetFriendsFromUserIdSpy).toHaveBeenCalledTimes(1)
		if getFFlagProfileAliasEnabled() then
			jestExpect(GetTagsFromUserIdsSpy).toHaveBeenCalledTimes(1)
		end
		jestExpect(GetFriendRecommendationsFromUserIdSpy).toHaveBeenCalledTimes(1)
		jestExpect(mockedAnalytics.EventStream.setRBXEventStream).toHaveBeenCalledTimes(1)
		jestExpect(mockedAnalytics.EventStream.setRBXEventStream).toHaveBeenCalledWith(
			mockedAnalytics.EventStream,
			validateEvent(EventNames.CarouselLoadedWithUsers, {
				friendCount = 6,
				recommendationCount = 1,
				recommendationLimit = getFIntShowFriendRecommendationsLimit(),
				refreshCount = 0,
				uid = "123",
				recommendationSessionId = "recommendationRequestId",
				fetchedRecommendations = true,
			})
		)
		jestExpect(mockedAnalytics.Diag.reportCounter).toHaveBeenCalledTimes(1)
		jestExpect(mockedAnalytics.Diag.reportCounter).toHaveBeenCalledWith(
			mockedAnalytics.Diag,
			validateDiagEvent(EventNames.CarouselLoadedWithUsers)
		)
	end)
end)
