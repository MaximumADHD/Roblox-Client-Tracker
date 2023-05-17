local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local EnumScreens = require(FriendsLanding.EnumScreens)
local ButtonClickEvents = require(FriendsLanding.FriendsLandingAnalytics.ButtonClickEvents)
local createInstanceWithProviders = require(FriendsLanding.TestHelpers.createInstanceWithProviders)
local waitUntil = require(FriendsLanding.TestHelpers.waitUntil)

local llama = dependencies.llama

local devDependencies = require(FriendsLanding.devDependencies)
local mockLocale = devDependencies.UnitTestHelpers.mockLocale
local RhodiumHelpers = devDependencies.RhodiumHelpers
local ReactRoblox = devDependencies.ReactRoblox
local findImageSet = devDependencies.findImageSet

local JestGlobals = devDependencies.JestGlobals
local beforeEach = JestGlobals.beforeEach
local afterAll = JestGlobals.afterAll
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local SocialLuaAnalytics = dependencies.SocialLuaAnalytics
local Enums = SocialLuaAnalytics.Analytics.Enums
local Contexts = Enums.Contexts

local getTestStore = require(script.Parent.getTestStore)
local AddFriendsContainer = require(script.Parent)

local getFFlagAddFriendsPYMKExperimentEnabled = require(FriendsLanding.Flags.getFFlagAddFriendsPYMKExperimentEnabled)
local getFFlagAddFriendsImproveAnalytics = require(FriendsLanding.Flags.getFFlagAddFriendsImproveAnalytics)
local getFFlagAddFriendsPYMKAnalytics = require(FriendsLanding.Flags.getFFlagAddFriendsPYMKAnalytics)

describe("AddFriendsContainer", function()
	local navigation

	local mockData = { responseBody = { data = {} } }

	local addFriendsNetworkingRequests = {
		dependencies.FriendsNetworking.AcceptFriendRequestFromUserId,
		dependencies.FriendsNetworking.DeclineFriendRequestFromUserId,
		dependencies.FriendsNetworking.DeclineAllFriendRequests,
		dependencies.FriendsNetworking.RequestFriendshipFromUserId,
		dependencies.FriendsNetworking.GetFriendRequestsCount,
		dependencies.FriendsNetworking.GetFriendRequests,
		dependencies.FriendsNetworking.GetFollowingExists,
		dependencies.GamesNetworking.GetExperiencesDetails,
		dependencies.FriendsNetworking.GetFriendRecommendationsFromUserId,
	}

	llama.List.map(addFriendsNetworkingRequests, function(req)
		req.Mock.clear()
		req.Mock.reply(function()
			return mockData
		end)
	end)

	local localized = {
		friendAddedText = "Friend Added",
		requestIgnoredText = "Request Ignored",
		allRequestsIgnoredText = "All Requests Ignored",
		requestSentText = "Friend Request Sent",
	}

	local function createInstanceWithRequests(
		testStoreSetting,
		extraProps: any,
		otherServices: { analytics: any, context: any? }?
	)
		return createInstanceWithProviders(mockLocale)(AddFriendsContainer, {
			store = getTestStore(
				testStoreSetting.hasRequests,
				testStoreSetting.hasRecommendations,
				testStoreSetting.extraData
			),
			props = llama.Dictionary.join(extraProps, {
				navigation = navigation,
				localized = localized,
			}),
			analytics = otherServices and otherServices.analytics,
			context = otherServices and otherServices.context,
		})
	end

	local function testElementByNameShow(parent, name, show)
		local element = RhodiumHelpers.findFirstInstance(parent, {
			Name = name,
		})

		if show then
			expect(element).never.toBeNil()
		else
			expect(element).toBeNil()
		end
	end

	local function mockRequestWithCallback(req, callback: (...any) -> ...any)
		req.Mock.clear()
		req.Mock.reply(function(url, method, options)
			callback(url, method, options)
			return mockData
		end)
	end

	beforeEach(function()
		navigation = {
			navigate = jest.fn(),
			state = {
				routeName = EnumScreens.FriendsLanding,
			},
		}
	end)

	afterAll(function()
		llama.List.map(addFriendsNetworkingRequests, function(req)
			req.Mock.clear()
		end)
	end)

	it("SHOULD mount and render without issue", function()
		local _, cleanup = createInstanceWithRequests({ hasRequests = true })

		cleanup()
	end)

	it("SHOULD show gridView with requests", function()
		local instance, cleanup = createInstanceWithRequests({ hasRequests = true })

		testElementByNameShow(instance, "ContentView", true)
		testElementByNameShow(instance, "EmptyState", false)

		cleanup()
	end)

	it("SHOULD show emptyState without requests", function()
		local instance, cleanup = createInstanceWithRequests({ hasRequests = false })

		testElementByNameShow(instance, "ContentView", true)
		testElementByNameShow(instance, "EmptyState", true)

		cleanup()
	end)

	it("SHOULD trigger GetFriendRequestsCount action when mounted", function()
		local getFriendRequestsCount = jest.fn()

		mockRequestWithCallback(dependencies.FriendsNetworking.GetFriendRequestsCount, getFriendRequestsCount)

		local _, cleanup = createInstanceWithRequests({ hasRequests = true })

		waitUntil(function()
			return #getFriendRequestsCount.mock.calls > 0
		end)

		expect(getFriendRequestsCount).toHaveBeenCalled()

		cleanup()
	end)

	it("SHOULD trigger DeclineFriendRequestFromUserId action when decline button is clicked", function()
		local declineFriendRequestFromUserId = jest.fn()
		mockRequestWithCallback(
			dependencies.FriendsNetworking.DeclineFriendRequestFromUserId,
			declineFriendRequestFromUserId
		)

		local analytics = { buttonClick = jest.fn() }
		local instance, cleanup = createInstanceWithRequests({ hasRequests = true }, nil, { analytics = analytics })

		ReactRoblox.act(function()
			wait(0.3)
		end)

		local declineButton = RhodiumHelpers.findFirstInstance(instance, findImageSet("icons/actions/reject"))

		waitUntil(function()
			RhodiumHelpers.clickInstance(declineButton)
			return #declineFriendRequestFromUserId.mock.calls > 0
		end)

		expect(declineFriendRequestFromUserId).toHaveBeenCalled()
		expect(navigation.navigate).toHaveBeenCalledWith(EnumScreens.GenericToast, {
			toastProps = {
				toastContent = {
					toastTitle = localized.requestIgnoredText,
					iconImage = findImageSet("icons/actions/reject"),
				},
			},
		})
		if getFFlagAddFriendsImproveAnalytics() then
			expect(analytics.buttonClick).toHaveBeenCalledWith(analytics, ButtonClickEvents.DeclineFriendship, {
				contextOverride = "addUniversalFriends",
				position = 0,
				targetUserId = "1",
				isRecommendation = if getFFlagAddFriendsPYMKAnalytics() then false else nil,
			})
		end
		cleanup()
	end)

	if getFFlagAddFriendsPYMKExperimentEnabled() then
		it("SHOULD trigger RequestFriendshipFromUserId action when request button is clicked", function()
			local requestFriendshipFromUserId = jest.fn()
			mockRequestWithCallback(
				dependencies.FriendsNetworking.RequestFriendshipFromUserId,
				requestFriendshipFromUserId
			)

			local analytics = { buttonClick = jest.fn() }
			local instance, cleanup = createInstanceWithRequests(
				{ hasRequests = false, hasRecommendations = true },
				{ shouldShowPYMKSection = true },
				{ analytics = analytics }
			)

			ReactRoblox.act(function()
				wait(0.3)
			end)

			local requestButton =
				RhodiumHelpers.findFirstInstance(instance, findImageSet("icons/actions/friends/friendAdd"))

			waitUntil(function()
				RhodiumHelpers.clickInstance(requestButton)
				return #requestFriendshipFromUserId.mock.calls > 0
			end)

			expect(requestFriendshipFromUserId).toHaveBeenCalled()
			expect(navigation.navigate).toHaveBeenCalledWith(EnumScreens.GenericToast, {
				toastProps = {
					toastContent = {
						toastTitle = localized.requestSentText,
						iconImage = findImageSet("icons/actions/friends/friendAdd"),
					},
				},
			})
			if getFFlagAddFriendsImproveAnalytics() then
				expect(analytics.buttonClick).toHaveBeenCalledWith(analytics, ButtonClickEvents.RequestFriendship, {
					contextOverride = "addUniversalFriends",
					position = 0,
					targetUserId = "recom2",
					isRecommendation = if getFFlagAddFriendsPYMKAnalytics() then true else nil,
				})
			end

			cleanup()
		end)
	end

	it("SHOULD trigger AcceptFriendRequestFromUserId action when accept button is clicked", function()
		local acceptFriendRequestFromUserId = jest.fn()
		mockRequestWithCallback(
			dependencies.FriendsNetworking.AcceptFriendRequestFromUserId,
			acceptFriendRequestFromUserId
		)

		local analytics = { buttonClick = jest.fn() }
		local instance, cleanup = createInstanceWithRequests({ hasRequests = true }, nil, { analytics = analytics })

		ReactRoblox.act(function()
			wait(0.3)
		end)

		local acceptButton = RhodiumHelpers.findFirstInstance(instance, findImageSet("icons/actions/friends/friendAdd"))

		waitUntil(function()
			RhodiumHelpers.clickInstance(acceptButton)
			return #acceptFriendRequestFromUserId.mock.calls > 0
		end)

		expect(acceptFriendRequestFromUserId).toHaveBeenCalled()
		expect(navigation.navigate).toHaveBeenCalledWith(EnumScreens.GenericToast, {
			toastProps = {
				toastContent = {
					toastTitle = localized.friendAddedText,
					iconImage = findImageSet("icons/actions/friends/friendAdd"),
				},
			},
		})
		if getFFlagAddFriendsImproveAnalytics() then
			expect(analytics.buttonClick).toHaveBeenCalledWith(analytics, ButtonClickEvents.AcceptFriendship, {
				contextOverride = "addUniversalFriends",
				position = 0,
				targetUserId = "1",
				isRecommendation = if getFFlagAddFriendsPYMKAnalytics() then false else nil,
			})
		end

		cleanup()
	end)

	it("SHOULD trigger DeclineAllFriendRequests action when IgnoreAllContextMenu is clicked", function()
		local declineAllFriendRequests = jest.fn()
		mockRequestWithCallback(dependencies.FriendsNetworking.DeclineAllFriendRequests, declineAllFriendRequests)

		local instance, cleanup = createInstanceWithRequests({ hasRequests = true })

		local headerFrameIcon = RhodiumHelpers.findFirstInstance(instance, findImageSet("icons/menu/more_off"))

		RhodiumHelpers.clickInstance(headerFrameIcon)
		waitUntil(function()
			local menu = RhodiumHelpers.findFirstInstance(instance, {
				Name = "IgnoreAllContextMenu",
			})
			return menu ~= nil
		end)

		local ignoreAllContextMenu = RhodiumHelpers.findFirstInstance(instance, {
			Name = "IgnoreAllContextMenu",
		})

		local menuItem = RhodiumHelpers.findFirstInstance(ignoreAllContextMenu, {
			Name = "cell 1",
		})

		waitUntil(function()
			RhodiumHelpers.clickInstance(menuItem)
			return #declineAllFriendRequests.mock.calls > 0
		end)

		expect(declineAllFriendRequests).toHaveBeenCalled()
		expect(navigation.navigate).toHaveBeenCalledWith(EnumScreens.GenericToast, {
			toastProps = {
				toastContent = {
					toastTitle = localized.allRequestsIgnoredText,
					iconImage = findImageSet("icons/actions/reject"),
				},
			},
		})

		cleanup()
	end)

	it("SHOULD trigger handleNavigateDownToViewUserProfile action when profile is clicked", function()
		local viewUserProfile = jest.fn()
		local analytics = {
			buttonClick = jest.fn(),
			pageLoaded = jest.fn(),
			navigate = jest.fn(),
			pageLoadingTimeReport = jest.fn(),
			pageMountingTimeReport = jest.fn(),
			impressionEvent = jest.fn(),
		}

		local instance, cleanup = createInstanceWithRequests({ hasRequests = true }, {
			navigateToLuaAppPages = {
				[EnumScreens.ViewUserProfile] = viewUserProfile,
			},
			isLuaProfilePageEnabled = true,
		}, { analytics = analytics })

		ReactRoblox.act(function()
			wait(0.3)
		end)

		local userProfile = RhodiumHelpers.findFirstInstance(instance, {
			Name = "Tile",
		})

		RhodiumHelpers.clickInstance(userProfile)

		waitUntil(function()
			return #viewUserProfile.mock.calls > 0
		end)

		expect(viewUserProfile).toHaveBeenCalled()
		if getFFlagAddFriendsImproveAnalytics() then
			expect(analytics.buttonClick).toHaveBeenCalledWith(analytics, ButtonClickEvents.PlayerTile, {
				contextOverride = "friendRequestsPage",
				subPage = "peekView",
				page = "playerProfile",
				absolutePosition = 0,
				targetUserId = "1",
			})
		else
			expect(analytics.buttonClick).toHaveBeenCalledWith(analytics, ButtonClickEvents.PlayerProfile, {
				contextOverride = "friendRequestsPage",
				subPage = "peekView",
				page = "playerProfile",
			})
		end
		expect(analytics.navigate).toHaveBeenCalledWith(analytics, "ViewUserProfileAddFriends")

		cleanup()
	end)

	it("SHOULD fire analytic events when full searchbar clicked in compactMode", function()
		local analytics = {
			buttonClick = jest.fn(),
			navigate = jest.fn(),
			impressionEvent = jest.fn(),
			playerSearch = jest.fn(),
		}

		local instance, cleanup = createInstanceWithRequests(
			{ hasRequests = true },
			{ addFriendsPageSearchbarEnabled = true },
			{ analytics = analytics, context = { wideMode = false, addFriendsPageSearchbarEnabled = true } }
		)

		local SearchbarButton = RhodiumHelpers.findFirstInstance(instance, {
			Name = "SearchbarButton",
		})
		expect(SearchbarButton).toEqual(expect.any("Instance"))
		RhodiumHelpers.clickInstance(SearchbarButton)

		expect(analytics.buttonClick).toHaveBeenCalledTimes(1)
		expect(analytics.buttonClick).toHaveBeenCalledWith(analytics, ButtonClickEvents.PeopleSearchBar, {
			contextOverride = Contexts.PeopleSearchFromAddFriends.rawValue(),
			formFactor = "COMPACT",
		})
		expect(analytics.navigate).toHaveBeenCalledWith(analytics, EnumScreens.SearchFriends)
		expect(analytics.playerSearch).toHaveBeenCalledTimes(1)
		expect(analytics.playerSearch).toHaveBeenCalledWith(analytics, "open", nil, "addUniversalFriends")
		cleanup()
	end)

	describe("GetFriendRequests", function()
		it("SHOULD be triggered when mounted", function()
			local getFriendRequests = jest.fn()
			mockRequestWithCallback(dependencies.FriendsNetworking.GetFriendRequests, getFriendRequests)

			local _, cleanup = createInstanceWithRequests({ hasRequests = true })

			waitUntil(function()
				return #getFriendRequests.mock.calls > 0
			end)

			expect(getFriendRequests).toHaveBeenCalled()
			expect(getFriendRequests.mock.calls[1][3]).toEqual({
				queryArgs = {
					limit = 50,
				},
			})
			cleanup()
		end)

		it("SHOULD have queryArgs.limit equal to 25 on compact screen device", function()
			local getFriendRequests = jest.fn()
			local testLimit = function(_, _, options)
				expect(options.queryArgs.limit).toEqual(25)
				getFriendRequests()
			end
			mockRequestWithCallback(dependencies.FriendsNetworking.GetFriendRequests, testLimit)

			local _, cleanup = createInstanceWithRequests({ hasRequests = true }, {
				wideMode = false,
			})

			waitUntil(function()
				return #getFriendRequests.mock.calls > 0
			end)

			cleanup()
		end)

		it("SHOULD have queryArgs.limit equal to 50 on wide screen device", function()
			local getFriendRequests = jest.fn()
			local testLimit = function(_, _, options)
				expect(options.queryArgs.limit).toEqual(50)
				getFriendRequests()
			end
			mockRequestWithCallback(dependencies.FriendsNetworking.GetFriendRequests, testLimit)

			local _, cleanup = createInstanceWithRequests({ hasRequests = true }, {
				wideMode = true,
			})

			waitUntil(function()
				return #getFriendRequests.mock.calls > 0
			end)

			cleanup()
		end)

		it("SHOULD show mutualFriends on context if user has mutual friends", function()
			local instance, cleanup = createInstanceWithRequests({ hasRequests = true }, {
				wideMode = true,
			})

			ReactRoblox.act(function()
				wait()
			end)

			local requestSection = RhodiumHelpers.findFirstInstance(instance, {
				Name = "requestSection",
			})
			local AddFriendTile = requestSection.ContentContainer.ContentView[1].TriggerPoint[1]

			expect(AddFriendTile.Tile.FooterContainer.Footer.PlayerContext.Text.Text).toEqual(
				"3 feature.friends.label.mutualfriends"
			)
			cleanup()
		end)
	end)
end)
