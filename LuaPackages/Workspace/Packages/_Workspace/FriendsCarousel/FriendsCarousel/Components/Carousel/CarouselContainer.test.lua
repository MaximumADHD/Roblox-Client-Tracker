local FriendsCarousel = script:FindFirstAncestor("FriendsCarousel")
local devDependencies = require(FriendsCarousel.devDependencies)
local dependencies = require(FriendsCarousel.dependencies)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local beforeAll = JestGlobals.beforeAll

local UnitTestHelpers = devDependencies.UnitTestHelpers
local runWhileMounted = UnitTestHelpers.runWhileMounted
local baseTestStates = devDependencies.baseTestStates
local jest = devDependencies.jest
local RhodiumHelpers = devDependencies.RhodiumHelpers()
local Roact = dependencies.Roact
local llama = dependencies.llama
local Dash = dependencies.Dash
local mockAnalytics = dependencies.SocialLuaAnalytics.TestingAnalytics.mockAnalytics

local validateEvent = require(FriendsCarousel.TestHelpers.validateEvent)
local validateDiagEvent = require(FriendsCarousel.TestHelpers.validateDiagEvent)
local mockStore = require(FriendsCarousel.TestHelpers.mockStore)
local createTreeWithProviders = require(FriendsCarousel.TestHelpers.createTreeWithProviders)
local addFriendsCarouselRecommendationIdsToState =
	require(FriendsCarousel.TestHelpers.addFriendsCarouselRecommendationIdsToState)

local RODUX_KEY = require(FriendsCarousel.Common.Constants).RODUX_KEY
local EventNames = require(FriendsCarousel.Analytics.EventNames)
local RecommendationContextType = dependencies.RoduxFriends.Enums.RecommendationContextType
local NetworkingUserSettings = dependencies.NetworkingUserSettings
local NetworkingAccountInformation = dependencies.NetworkingAccountInformation

local getFFlagFriendsCarouselFilterOutRecs = require(FriendsCarousel.Flags.getFFlagFriendsCarouselFilterOutRecs)
local getFFlagFriendsCarouselDontUseIngestService = dependencies.getFFlagFriendsCarouselDontUseIngestService
local getFFlagFriendsCarouselAddUniverseIdToEvents =
	require(FriendsCarousel.Flags.getFFlagFriendsCarouselAddUniverseIdToEvents)
local getFFlagFriendsCarouselCircularBadge = require(FriendsCarousel.Flags.getFFlagFriendsCarouselCircularBadge)
local getFFlagFriendsCarouselAddNewBadgeTracking =
	require(FriendsCarousel.Flags.getFFlagFriendsCarouselAddNewBadgeTracking)
local getFFlagSocialOnboardingExperimentEnabled = dependencies.getFFlagSocialOnboardingExperimentEnabled

local CarouselContainer = require(script.Parent.CarouselContainer)

describe("CarouselContainer", function()
	local TestElement = Roact.Component:extend("TestElement")
	function TestElement:render()
		return Roact.createElement("Frame")
	end

	local DEFAULT_PROPS = {
		carousel = TestElement,
		carouselProps = {
			LayoutOrder = 0,
			formFactor = "compact",
			sideMargin = 0,
		},
		openProfilePeekView = Dash.noop,
		openContextualMenu = Dash.noop,
		showToast = Dash.noop,
		navigateFromAddFriends = Dash.noop,
		analyticsService = mockAnalytics(jest),
		fetchingStatus = "Done",
		navigation = {},
		diagService = {
			reportCounter = jest.fn(),
			reportStats = jest.fn(),
		},
		eventIngestService = if getFFlagFriendsCarouselDontUseIngestService()
			then nil
			else { setRBXEventStream = jest.fn() },
		eventStreamService = { setRBXEventStream = jest.fn() },
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
			ShowContactImporterParams = {},
		},
	}

	describe("lifecycle", function()
		it("SHOULD mount and unmount with default state", function()
			local CarouselContainerElement = createTreeWithProviders(CarouselContainer, {
				store = mockStore(state),
				props = DEFAULT_PROPS,
			})

			runWhileMounted(CarouselContainerElement, function(parent)
				jestExpect(#parent:GetChildren()).toBe(1)
			end)
		end)

		it("SHOULD mount and unmount with friendsAndRecommendations state", function()
			local CarouselContainerElement = createTreeWithProviders(CarouselContainer, {
				store = mockStore(baseTestStates.friendsAndRecommendations),
				props = DEFAULT_PROPS,
			})

			runWhileMounted(CarouselContainerElement, function(parent)
				jestExpect(#parent:GetChildren()).toBe(1)
			end)
		end)
	end)

	describe("renderElements", function()
		local setup, mockedAnalytics

		beforeAll(function()
			NetworkingUserSettings.GetUserSettings.Mock.clear()
			NetworkingAccountInformation.GetPhoneInformation.Mock.clear()
		end)

		beforeEach(function()
			setup = function(props, elementName, elementProps)
				local SimpleTestElement = Roact.Component:extend("TestElement")
				function SimpleTestElement:render()
					return Roact.createElement("Frame", {
						Size = UDim2.new(0, 500, 0, 500),
					}, { TestButton = self.props[elementName](elementProps) })
				end

				mockedAnalytics = mockAnalytics(jest)
				local state = baseTestStates.friendsAndRecommendations
				if getFFlagFriendsCarouselFilterOutRecs() then
					addFriendsCarouselRecommendationIdsToState(state)
				end

				local CarouselContainerElement = createTreeWithProviders(CarouselContainer, {
					store = mockStore(state),
					props = llama.Dictionary.join(DEFAULT_PROPS, {
						carousel = SimpleTestElement,
						eventIngestService = if getFFlagFriendsCarouselDontUseIngestService()
							then nil
							else mockedAnalytics.EventStream,
						diagService = mockedAnalytics.Diag,
						eventStreamService = mockedAnalytics.EventStream,
					}, props),
				})

				return CarouselContainerElement
			end
		end)

		afterEach(function()
			NetworkingUserSettings.GetUserSettings.Mock.clear()
			NetworkingAccountInformation.GetPhoneInformation.Mock.clear()
		end)

		describe("renderFindFriendsTile", function()
			it(
				"SHOULD render CI badge and fire analytics event for it if showNewAddFriendsUIVariant and showContactImporter are true",
				function()
					if
						getFFlagFriendsCarouselCircularBadge()
						and getFFlagSocialOnboardingExperimentEnabled()
						and getFFlagFriendsCarouselAddNewBadgeTracking()
					then
						local CarouselContainerElement = setup({
							showContactImporter = true,
							showNewAddFriendsUIVariant = true,
						}, "renderFindFriendsTile")

						runWhileMounted(CarouselContainerElement, function(parent)
							local badge = RhodiumHelpers.findFirstInstance(parent, {
								Name = "Badge",
							})

							jestExpect(badge).never.toBeNil()
							--* "Feature.Catalog.Label.New"
							jestExpect(badge.Inner.TextLabel.Text).toEqual("Fea...")

							jestExpect(mockedAnalytics.EventStream.setRBXEventStream).toHaveBeenCalledTimes(1)
							jestExpect(mockedAnalytics.EventStream.setRBXEventStream).toHaveBeenCalledWith(
								mockedAnalytics.EventStream,
								validateEvent(EventNames.ContactImporterOnAddFriends, {
									uid = "test",
								})
							)
						end)
					end
				end
			)

			it(
				"SHOULD NOT render CI badge and fire analytics event for it if showNewAddFriendsUIVariant is true and showContactImporter is false",
				function()
					if getFFlagFriendsCarouselCircularBadge() and getFFlagSocialOnboardingExperimentEnabled() then
						local CarouselContainerElement = setup({
							showContactImporter = false,
							showNewAddFriendsUIVariant = true,
						}, "renderFindFriendsTile")

						runWhileMounted(CarouselContainerElement, function(parent)
							local badge = RhodiumHelpers.findFirstInstance(parent, {
								Name = "Badge",
							})

							jestExpect(badge).toBeNil()
							jestExpect(mockedAnalytics.EventStream.setRBXEventStream).never.toHaveBeenCalled()
						end)
					end
				end
			)

			it(
				"SHOULD NOT render CI badge and fire analytics event for it if showNewAddFriendsUIVariant is false and showContactImporter is true",
				function()
					if getFFlagFriendsCarouselCircularBadge() and getFFlagSocialOnboardingExperimentEnabled() then
						local CarouselContainerElement = setup({
							showContactImporter = true,
							showNewAddFriendsUIVariant = false,
						}, "renderFindFriendsTile")

						runWhileMounted(CarouselContainerElement, function(parent)
							local badge = RhodiumHelpers.findFirstInstance(parent, {
								Name = "Badge",
							})

							jestExpect(badge).toBeNil()
							jestExpect(mockedAnalytics.EventStream.setRBXEventStream).never.toHaveBeenCalled()
						end)
					end
				end
			)

			describe("on FindFriendsTile click", function()
				it("SHOULD call navigateFromAddFriends and fire analytics event", function()
					local navigateFromAddFriends = jest.fn()

					local CarouselContainerElement = setup({
						showNewAddFriendsUIVariant = false,
						navigateFromAddFriends = function()
							navigateFromAddFriends()
						end,
					}, "renderFindFriendsTile")

					runWhileMounted(CarouselContainerElement, function(parent)
						local testButton = RhodiumHelpers.findFirstInstance(parent, {
							Name = "AddFriendButton",
						})

						jestExpect(testButton).toEqual(jestExpect.any("Instance"))

						RhodiumHelpers.clickInstance(testButton)

						jestExpect(navigateFromAddFriends).toHaveBeenCalled()
						jestExpect(mockedAnalytics.EventStream.setRBXEventStream).toHaveBeenCalledTimes(1)

						jestExpect(mockedAnalytics.Diag.reportCounter).toHaveBeenCalledTimes(1)
						jestExpect(mockedAnalytics.Diag.reportCounter).toHaveBeenCalledWith(
							mockedAnalytics.Diag,
							validateDiagEvent(EventNames.ViewAddFriends)
						)
					end)
				end)
			end)
		end)

		describe("renderUserTile", function()
			it("SHOULD render loading tile if user.isLoading", function()
				local CarouselContainerElement = setup({}, "renderUserTile", {
					user = {
						isLoading = true,
					},
					absoluteIndex = 3,
					layoutOrder = 1,
					setPeopleListFrozen = Dash.noop,
				})
				runWhileMounted(CarouselContainerElement, function(parent)
					local LoadingTile = RhodiumHelpers.findFirstInstance(parent, {
						Name = "LoadingTile",
					})
					jestExpect(LoadingTile).toEqual(jestExpect.any("Instance"))
				end)
			end)

			describe("WHEN clicking on recommendation tile", function()
				it("SHOULD call openProfilePeekView and fire analytics event", function()
					local openProfilePeekView = jest.fn()
					local CarouselContainerElement = setup(
						{
							openProfilePeekView = function(...)
								openProfilePeekView(...)
							end,
						},
						"renderUserTile",
						{
							user = {
								id = "89",
								displayName = "test",
								rank = 10,
								contextType = RecommendationContextType.MutualFriends,
							},
							absoluteIndex = 3,
							layoutOrder = 1,
							setPeopleListFrozen = Dash.noop,
						}
					)

					runWhileMounted(CarouselContainerElement, function(parent)
						local testButton = RhodiumHelpers.findFirstInstance(parent, {
							Name = "UserTileCircular",
						})

						jestExpect(testButton).toEqual(jestExpect.any("Instance"))
						jestExpect(mockedAnalytics.EventStream.setRBXEventStream).toHaveBeenCalledTimes(1)
						jestExpect(mockedAnalytics.Diag.reportCounter).never.toHaveBeenCalled()

						RhodiumHelpers.clickInstance(testButton)

						jestExpect(mockedAnalytics.EventStream.setRBXEventStream).toHaveBeenCalledTimes(2)
						jestExpect(openProfilePeekView).toHaveBeenCalledTimes(1)
						jestExpect(mockedAnalytics.EventStream.setRBXEventStream).toHaveBeenCalledWith(
							mockedAnalytics.EventStream,
							validateEvent(EventNames.UserPressed, {
								absolutePosition = 3,
								friendId = "89",
								friendStatus = "nonfriend",
								recommendationContextType = "mutualFriends",
								recommendationRank = 10,
								isRecommendation = true,
								uid = "test",
							})
						)
						jestExpect(mockedAnalytics.Diag.reportCounter).toHaveBeenCalledTimes(1)
						jestExpect(mockedAnalytics.Diag.reportCounter).toHaveBeenCalledWith(
							mockedAnalytics.Diag,
							validateDiagEvent(EventNames.UserPressed)
						)
					end)
				end)
			end)

			describe("WHEN clicking on friend tile", function()
				it("SHOULD call openProfilePeekView and fire analytics event", function()
					local openProfilePeekView = jest.fn()
					local CarouselContainerElement = setup(
						{
							openProfilePeekView = function(...)
								openProfilePeekView(...)
							end,
						},
						"renderUserTile",
						{
							user = {
								id = "89",
								displayName = "test",
								isFriendWithUser = true,
								universeId = "universeIdTest",
							},
							absoluteIndex = 3,
							layoutOrder = 1,
							setPeopleListFrozen = Dash.noop,
						}
					)

					runWhileMounted(CarouselContainerElement, function(parent)
						local testButton = RhodiumHelpers.findFirstInstance(parent, {
							Name = "UserTileCircular",
						})

						jestExpect(testButton).toEqual(jestExpect.any("Instance"))
						jestExpect(mockedAnalytics.EventStream.setRBXEventStream).toHaveBeenCalledTimes(1)
						jestExpect(mockedAnalytics.Diag.reportCounter).never.toHaveBeenCalled()

						RhodiumHelpers.clickInstance(testButton)

						jestExpect(mockedAnalytics.EventStream.setRBXEventStream).toHaveBeenCalledTimes(2)
						jestExpect(openProfilePeekView).toHaveBeenCalledTimes(1)
						jestExpect(mockedAnalytics.EventStream.setRBXEventStream).toHaveBeenCalledWith(
							mockedAnalytics.EventStream,
							validateEvent(EventNames.UserPressed, {
								absolutePosition = 3,
								friendId = "89",
								friendStatus = "friend",
								isRecommendation = false,
								uid = "test",
								universeId = if getFFlagFriendsCarouselAddUniverseIdToEvents()
									then "universeIdTest"
									else nil,
							})
						)
						jestExpect(mockedAnalytics.Diag.reportCounter).toHaveBeenCalledTimes(1)
						jestExpect(mockedAnalytics.Diag.reportCounter).toHaveBeenCalledWith(
							mockedAnalytics.Diag,
							validateDiagEvent(EventNames.UserPressed)
						)
					end)
				end)
			end)
		end)
	end)
end)
