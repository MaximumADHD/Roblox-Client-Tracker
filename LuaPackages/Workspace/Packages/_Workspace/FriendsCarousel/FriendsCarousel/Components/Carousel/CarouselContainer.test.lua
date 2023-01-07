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
local Promise = dependencies.Promise
local llama = dependencies.llama
local Dash = dependencies.Dash
local mockAnalytics = dependencies.SocialLuaAnalytics.TestingAnalytics.mockAnalytics

local CIScreens = dependencies.SocialModalsCommon.EnumScreens

local validateEvent = require(FriendsCarousel.TestHelpers.validateEvent)
local validateDiagEvent = require(FriendsCarousel.TestHelpers.validateDiagEvent)
local mockStore = require(FriendsCarousel.TestHelpers.mockStore)
local createTreeWithProviders = require(FriendsCarousel.TestHelpers.createTreeWithProviders)
local addFriendsCarouselRecommendationIdsToState =
	require(FriendsCarousel.TestHelpers.addFriendsCarouselRecommendationIdsToState)

local RODUX_KEY = require(FriendsCarousel.Common.Constants).RODUX_KEY
local UIVariants = require(FriendsCarousel.Common.UIVariants)
local EventNames = require(FriendsCarousel.Analytics.EventNames)
local RecommendationContextType = dependencies.RoduxFriends.Enums.RecommendationContextType
local getFIntShowFriendRecommendationsLimit = require(FriendsCarousel.Flags.getFIntShowFriendRecommendationsLimit)
local NetworkingUserSettings = dependencies.NetworkingUserSettings
local NetworkingAccountInformation = dependencies.NetworkingAccountInformation

local ContactImporterConstants = dependencies.ContactImporterConstants
local HAS_FEATURE_IN_GAME_ENGINE =
	game:GetEngineFeature(ContactImporterConstants.UNIVERSAL_APP_CONTACT_IMPORTER_STORAGE_KEYS)
local getFFlagFriendsCarouselFilterOutRecs = require(FriendsCarousel.Flags.getFFlagFriendsCarouselFilterOutRecs)
local getFFlagFriendsCarouselDontUseIngestService = dependencies.getFFlagFriendsCarouselDontUseIngestService
local getFFlagFriendsCarouselAddUniverseIdToEvents =
	require(FriendsCarousel.Flags.getFFlagFriendsCarouselAddUniverseIdToEvents)
local getFFlagContactImporterOnFriendsCarousel = dependencies.getFFlagContactImporterOnFriendsCarousel

local Packages = FriendsCarousel.Parent
local ContactImporterDependencies = require(Packages.ContactImporter).dependencies

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
		closeModal = if getFFlagContactImporterOnFriendsCarousel() then nil else Dash.noop,
		openContactsList = if getFFlagContactImporterOnFriendsCarousel() then nil else Dash.noop,
		openFindFriendsModal = if getFFlagContactImporterOnFriendsCarousel() then nil else Dash.noop,
		navigateDownToAddFriendsPage = if getFFlagContactImporterOnFriendsCarousel() then nil else Dash.noop,
		openProfilePeekView = Dash.noop,
		openContextualMenu = Dash.noop,
		showToast = Dash.noop,
		navigateFromAddFriends = if getFFlagContactImporterOnFriendsCarousel() then Dash.noop else nil,
		analyticsService = mockAnalytics(jest),
		fetchingStatus = "Done",
		openLearnMoreLink = if getFFlagContactImporterOnFriendsCarousel() then nil else Dash.noop,
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
		local setup, mockedAnalytics, oldValue

		beforeAll(function()
			NetworkingUserSettings.GetUserSettings.Mock.clear()
			NetworkingAccountInformation.GetPhoneInformation.Mock.clear()
		end)

		beforeEach(function()
			oldValue = game:SetFastFlagForTesting("AutoSyncForContactImporterDisabled", false)
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
			game:SetFastFlagForTesting("AutoSyncForContactImporterDisabled", oldValue)
		end)

		describe("renderFindFriendsTile", function()
			if not getFFlagContactImporterOnFriendsCarousel() then
				it("SHOULD call ContactsProtocol if user has opted into Contact Importer", function()
					local supportsContactsSpy = jest.fn()
					local getsContactsSpy = jest.fn()
					local ContactsProtocolMock = {
						supportsContacts = jest.fn().mockImplementation(function()
							supportsContactsSpy()
							return Promise.resolve(true)
						end),
						getContacts = jest.fn().mockImplementation(function()
							getsContactsSpy()
							return Promise.resolve({
								countryCode = "US",
								contacts = {},
							})
						end),
					}

					NetworkingUserSettings.GetUserSettings.Mock.reply(function()
						return { responseBody = {} }
					end)

					NetworkingAccountInformation.GetPhoneInformation.Mock.reply(function()
						return { responseBody = {} }
					end)

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
							ShowContactImporterParams = {
								shouldShowContactImporterFeature = true,
								shouldShowContactImporterUpsellModal = false,
							},
						},
					}

					local CarouselContainerElement = createTreeWithProviders(CarouselContainer, {
						store = mockStore(state),
						props = llama.Dictionary.join(DEFAULT_PROPS, {
							contactImporterAndPYMKEnabled = if getFFlagContactImporterOnFriendsCarousel()
								then nil
								else true,
							isContactImporterPolicyEnabled = if getFFlagContactImporterOnFriendsCarousel()
								then nil
								else true,
							contactsProtocol = if getFFlagContactImporterOnFriendsCarousel()
								then nil
								else ContactsProtocolMock,
						}),
					})

					runWhileMounted(CarouselContainerElement, function(parent)
						jestExpect(getsContactsSpy).toHaveBeenCalledTimes(1)
						jestExpect(supportsContactsSpy).toHaveBeenCalledTimes(1)
					end)
				end)
			end

			it(
				"SHOULD show badge if contact importer modal is visible and UIVariant is SQUARE_TILES and refactor of contact importer is false",
				function()
					local oldValue = game:SetFastFlagForTesting("FriendsCarouselUpdateFindFriends", false)
					NetworkingUserSettings.GetUserSettings.Mock.reply(function()
						return { responseBody = {} }
					end)
					NetworkingAccountInformation.GetPhoneInformation.Mock.reply(function()
						return { responseBody = {} }
					end)

					local CarouselContainerElement = setup({
						contactImporterAndPYMKEnabled = if getFFlagContactImporterOnFriendsCarousel()
							then nil
							else true,
						isContactImporterPolicyEnabled = if getFFlagContactImporterOnFriendsCarousel()
							then nil
							else true,
						openFindFriendsModal = if getFFlagContactImporterOnFriendsCarousel() then nil else Dash.noop,
						navigateDownToAddFriendsPage = if getFFlagContactImporterOnFriendsCarousel()
							then nil
							else Dash.noop,
						shouldShowContactImporterModal = if getFFlagContactImporterOnFriendsCarousel()
							then nil
							else true,
						showContactImporter = if getFFlagContactImporterOnFriendsCarousel() then true else nil,
						friendsCarouselExperimentVariant = UIVariants.SQUARE_TILES,
					}, "renderFindFriendsTile")

					runWhileMounted(CarouselContainerElement, function(parent)
						local badge = RhodiumHelpers.findFirstInstance(parent, {
							Name = "Badge",
						})
						jestExpect(badge).never.toBeNil()
						game:SetFastFlagForTesting("FriendsCarouselUpdateFindFriends", oldValue)
					end)
				end
			)

			it("SHOULD NOT call ContactsProtocol if user is not eligible for Contact Importer", function()
				local supportsContactsSpy = jest.fn()
				local getsContactsSpy = jest.fn()
				local ContactsProtocolMock = {
					supportsContacts = jest.fn().mockImplementation(function()
						supportsContactsSpy()
						return Promise.resolve(true)
					end),
					getContacts = jest.fn().mockImplementation(function()
						getsContactsSpy()
						return Promise.resolve({
							countryCode = "US",
							contacts = {},
						})
					end),
				}

				NetworkingUserSettings.GetUserSettings.Mock.reply(function()
					return { responseBody = {} }
				end)

				NetworkingAccountInformation.GetPhoneInformation.Mock.reply(function()
					return { responseBody = {} }
				end)

				local CarouselContainerElement = setup({
					contactImporterAndPYMKEnabled = if getFFlagContactImporterOnFriendsCarousel() then nil else true,
					isContactImporterPolicyEnabled = if getFFlagContactImporterOnFriendsCarousel() then nil else true,
					contactsProtocol = if getFFlagContactImporterOnFriendsCarousel() then nil else ContactsProtocolMock,
				}, "renderFindFriendsTile")

				runWhileMounted(CarouselContainerElement, function(parent)
					jestExpect(getsContactsSpy).never.toHaveBeenCalled()
					jestExpect(supportsContactsSpy).never.toHaveBeenCalled()
				end)
			end)

			it("SHOULD make expected calls if contact importer feature is enabled when mounted ", function()
				local userSettingsSpy = jest.fn()

				ContactImporterDependencies.NetworkingUserSettings.GetUserSettings.Mock.clear()
				ContactImporterDependencies.NetworkingUserSettings.GetUserSettings.Mock.reply(function()
					userSettingsSpy()
					return { responseBody = {} }
				end)

				local phoneInfoSpy = jest.fn()

				ContactImporterDependencies.NetworkingAccountInformation.GetPhoneInformation.Mock.clear()
				ContactImporterDependencies.NetworkingAccountInformation.GetPhoneInformation.Mock.reply(function()
					phoneInfoSpy()
					return { responseBody = {} }
				end)

				local CarouselContainerElement = setup({
					contactImporterAndPYMKEnabled = if getFFlagContactImporterOnFriendsCarousel() then nil else true,
					isContactImporterPolicyEnabled = if getFFlagContactImporterOnFriendsCarousel() then nil else true,
					openFindFriendsModal = if getFFlagContactImporterOnFriendsCarousel() then nil else Dash.noop,
					navigateDownToAddFriendsPage = if getFFlagContactImporterOnFriendsCarousel()
						then nil
						else Dash.noop,
				}, "renderFindFriendsTile")

				runWhileMounted(CarouselContainerElement, function(parent)
					if getFFlagContactImporterOnFriendsCarousel() then
						jestExpect(userSettingsSpy).never.toHaveBeenCalled()
						jestExpect(phoneInfoSpy).never.toHaveBeenCalled()
					else
						jestExpect(userSettingsSpy).toHaveBeenCalledTimes(1)
						jestExpect(phoneInfoSpy).toHaveBeenCalledTimes(1)
					end
				end)
			end)

			if getFFlagContactImporterOnFriendsCarousel() then
				it("SHOULD not make network calls if contactImporterAndPYMKEnabled is false when mounted ", function()
					local userSettingsSpy = jest.fn()

					NetworkingUserSettings.GetUserSettings.Mock.reply(function()
						userSettingsSpy()
						return { responseBody = {} }
					end)

					local phoneInfoSpy = jest.fn()

					NetworkingAccountInformation.GetPhoneInformation.Mock.reply(function()
						phoneInfoSpy()
						return { responseBody = {} }
					end)

					local CarouselContainerElement = setup({
						contactImporterAndPYMKEnabled = if getFFlagContactImporterOnFriendsCarousel()
							then nil
							else false,
						openFindFriendsModal = if getFFlagContactImporterOnFriendsCarousel() then nil else Dash.noop,
						navigateDownToAddFriendsPage = if getFFlagContactImporterOnFriendsCarousel()
							then nil
							else Dash.noop,
					}, "renderFindFriendsTile")

					runWhileMounted(CarouselContainerElement, function(parent)
						jestExpect(userSettingsSpy).never.toHaveBeenCalled()
						jestExpect(phoneInfoSpy).never.toHaveBeenCalled()
					end)
				end)
			end

			describe("onFindFriendsTileClickTest with UIVariant", function()
				local onFindFriendsTileClickTest = function(UIVariant, UIButton)
					it(
						"SHOULD call navigate and fire analytics event when contactImporterAndPYMKEnabled is true for "
							.. UIVariant,
						function()
							local navigateDownToAddFriendsPage = jest.fn()
							local navigation = {
								navigate = jest.fn(),
								pop = Dash.noop,
							}

							local CarouselContainerElement = setup({
								shouldShowContactImporterModal = if getFFlagContactImporterOnFriendsCarousel()
									then nil
									else true,
								contactImporterAndPYMKEnabled = if getFFlagContactImporterOnFriendsCarousel()
									then nil
									else true,
								navigateDownToAddFriendsPage = if getFFlagContactImporterOnFriendsCarousel()
									then nil
									else function()
										navigateDownToAddFriendsPage()
									end,
								navigation = if getFFlagContactImporterOnFriendsCarousel() then nil else navigation,
							}, "renderFindFriendsTile")

							runWhileMounted(CarouselContainerElement, function(parent)
								local testButton = RhodiumHelpers.findFirstInstance(parent, {
									Name = "AddFriendButton",
								})

								jestExpect(testButton).toEqual(jestExpect.any("Instance"))

								RhodiumHelpers.clickInstance(testButton)

								if getFFlagContactImporterOnFriendsCarousel() then
									jestExpect(navigation.navigate).never.toHaveBeenCalled()
									jestExpect(navigateDownToAddFriendsPage).never.toHaveBeenCalled()
								else
									jestExpect(navigation.navigate).toHaveBeenCalledTimes(1)
									jestExpect(navigation.navigate).toHaveBeenCalledWith(
										CIScreens.ContactImporter,
										jestExpect.any("table")
									)
									jestExpect(navigateDownToAddFriendsPage).never.toHaveBeenCalled()
								end

								jestExpect(mockedAnalytics.EventStream.setRBXEventStream).toHaveBeenCalledTimes(1)
								jestExpect(testButton).toEqual(jestExpect.any("Instance"))

								RhodiumHelpers.clickInstance(testButton)

								jestExpect(mockedAnalytics.EventStream.setRBXEventStream).toHaveBeenCalledTimes(2)

								jestExpect(mockedAnalytics.Diag.reportCounter).toHaveBeenCalledTimes(2)
								jestExpect(mockedAnalytics.Diag.reportCounter).toHaveBeenCalledWith(
									mockedAnalytics.Diag,
									validateDiagEvent(EventNames.ViewAddFriends)
								)
							end)
						end
					)
				end

				onFindFriendsTileClickTest(UIVariants.SQUARE_TILES, "AddFriendsTileSquare")
				onFindFriendsTileClickTest(UIVariants.CIRCULAR_TILES, "AddFriendsTileCircular")
			end)

			if HAS_FEATURE_IN_GAME_ENGINE then
				it("SHOULD navigate and fire analytics event when contactImporterAndPYMKEnabled is true", function()
					local navigateDownToAddFriendsPage = jest.fn()
					local navigateFromAddFriends = jest.fn()
					local navigation = {
						navigate = jest.fn(),
					}

					local CarouselContainerElement = setup({
						shouldShowContactImporterModal = if getFFlagContactImporterOnFriendsCarousel()
							then nil
							else true,
						contactImporterAndPYMKEnabled = if getFFlagContactImporterOnFriendsCarousel()
							then nil
							else true,
						shouldShowContactImporterFeature = if getFFlagContactImporterOnFriendsCarousel()
							then nil
							else true,
						shouldShowContactImporterUpsellModal = if getFFlagContactImporterOnFriendsCarousel()
							then nil
							else true,
						navigation = if getFFlagContactImporterOnFriendsCarousel() then nil else navigation,
						navigateDownToAddFriendsPage = if getFFlagContactImporterOnFriendsCarousel()
							then nil
							else function()
								navigateDownToAddFriendsPage()
							end,
						navigateFromAddFriends = if getFFlagContactImporterOnFriendsCarousel()
							then function()
								navigateFromAddFriends()
							end
							else nil,
						showContactImporter = if getFFlagContactImporterOnFriendsCarousel() then true else nil,
					}, "renderFindFriendsTile")

					runWhileMounted(CarouselContainerElement, function(parent)
						local testButton = RhodiumHelpers.findFirstInstance(parent, {
							Name = "AddFriendButton",
						})

						jestExpect(testButton).toEqual(jestExpect.any("Instance"))

						RhodiumHelpers.clickInstance(testButton)
						if getFFlagContactImporterOnFriendsCarousel() then
							jestExpect(navigateFromAddFriends).toHaveBeenCalledTimes(1)
							jestExpect(navigation.navigate).never.toHaveBeenCalled()
							jestExpect(navigateDownToAddFriendsPage).never.toHaveBeenCalled()
						else
							jestExpect(navigation.navigate).toHaveBeenCalledTimes(1)
							jestExpect(navigateFromAddFriends).never.toHaveBeenCalled()
							jestExpect(navigateDownToAddFriendsPage).never.toHaveBeenCalled()
						end

						jestExpect(mockedAnalytics.EventStream.setRBXEventStream).toHaveBeenCalledTimes(1)

						jestExpect(mockedAnalytics.EventStream.setRBXEventStream).toHaveBeenCalledWith(
							mockedAnalytics.EventStream,
							validateEvent(EventNames.ViewAddFriends, {
								friendCount = 5,
								recommendationCount = 4,
								showContactImporterModal = true,
								recommendationLimit = getFIntShowFriendRecommendationsLimit(),
								requestCount = 28,
								uid = "test",
							})
						)

						jestExpect(mockedAnalytics.Diag.reportCounter).toHaveBeenCalledTimes(1)
						jestExpect(mockedAnalytics.Diag.reportCounter).toHaveBeenCalledWith(
							mockedAnalytics.Diag,
							validateDiagEvent(EventNames.ViewAddFriends)
						)

						jestExpect(navigateDownToAddFriendsPage).never.toHaveBeenCalled()
					end)
				end)
			end
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
