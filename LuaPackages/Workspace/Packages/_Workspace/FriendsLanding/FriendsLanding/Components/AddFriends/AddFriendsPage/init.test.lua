local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local FriendsSourceType = require(FriendsLanding.AddFriends.Enums.FriendsSourceType)
local EnumScreens = require(FriendsLanding.EnumScreens)
local createInstanceWithProviders = require(FriendsLanding.TestHelpers.createInstanceWithProviders)

local dependencies = require(FriendsLanding.dependencies)
local llama = dependencies.llama
local Dash = dependencies.Dash
local getFFlagSocialOnboardingExperimentEnabled = dependencies.getFFlagSocialOnboardingExperimentEnabled
local getFFlagProfileQRCodeCoreFeaturesEnabled = dependencies.getFFlagProfileQRCodeCoreFeaturesEnabled
local getFFlagAddFriendsQRCodeAnalytics = dependencies.getFFlagAddFriendsQRCodeAnalytics
local getFFlagAddFriendsPYMKExperimentEnabled = require(FriendsLanding.Flags.getFFlagAddFriendsPYMKExperimentEnabled)

local devDependencies = require(FriendsLanding.devDependencies)
local RhodiumHelpers = devDependencies.RhodiumHelpers
local mockLocale = devDependencies.UnitTestHelpers.mockLocale
local waitForEvents = devDependencies.DeferredLuaHelpers.waitForEvents

local JestGlobals = devDependencies.JestGlobals
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local beforeAll = JestGlobals.beforeAll
local afterAll = JestGlobals.afterAll
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local withRequests = require(script.Parent.withRequests)
local createStore = withRequests.createStore
local friendRequests = withRequests.friendRequests
local AddFriendsPage = require(script.Parent)

local function createInstance(requests, extraProps: any)
	local defaultProps = {
		visibleRows = 2,
		sourceType = FriendsSourceType.QQ,
		friendRecommendations = {},
		friendRecommendationsCount = if getFFlagAddFriendsPYMKExperimentEnabled() then 0 else nil,
		friendRequests = requests,
		friendRequestsCount = #requests,
		screenSize = Vector2.new(360, 780),
		amIFollowingUser = Dash.noop,
		isUserFollowingMe = Dash.noop,
		getFriendshipRequestSentFromExperience = Dash.noop,
		refreshPage = Dash.noop,
		localUserId = "123",
		contactImporterWarningSeen = Dash.noop,
		fireContactImporterAnalyticsEvents = Dash.noop,
		fireContactImporterSeenEvent = Dash.noop,
		isPhoneVerified = true,
		isDiscoverabilityUnset = false,
		fireProfileQRCodeBannerSeenEvent = if getFFlagAddFriendsQRCodeAnalytics() then Dash.noop else nil,
		fireProfileQRCodeBannerPressedEvent = if getFFlagAddFriendsQRCodeAnalytics() then Dash.noop else nil,
		showNewAddFriendsPageVariant = if getFFlagSocialOnboardingExperimentEnabled() then Dash.noop else nil,
	}
	extraProps = extraProps or {}
	return createInstanceWithProviders(mockLocale)(AddFriendsPage, {
		props = llama.Dictionary.join(defaultProps, extraProps),
		store = createStore(requests),
	})
end

local function testElement(instance, elementFinder, elementChecker)
	local element = elementFinder(instance)
	elementChecker(element)
end

local function byName(instance, name)
	return RhodiumHelpers.findFirstInstance(instance, {
		Name = name,
	})
end

describe("lifecycle", function()
	it("SHOULD mount and unmount without issue", function()
		local _, cleanup = createInstance(friendRequests)
		cleanup()
	end)
end)

describe("with many FriendsRequests", function()
	local instance, cleanup

	beforeEach(function()
		instance, cleanup = createInstance(friendRequests)
	end)

	afterEach(function()
		cleanup()
	end)

	it("SHOULD render requestSection correctly", function()
		testElement(instance, function()
			return byName(instance, "requestSection")
		end, function(requestSection)
			expect(requestSection).never.toBeNil()
		end)
	end)

	it("SHOULD render headerFrame with showMore menu icon correctly", function()
		testElement(instance, function()
			return byName(instance, "HeaderFrame")
		end, function(headerFrame)
			expect(headerFrame).never.toBeNil()

			testElement(headerFrame, function()
				return byName(instance, "HeaderImageButton")
			end, function(showMoreIcon)
				expect(showMoreIcon).never.toBeNil()
			end)
		end)
	end)

	it("SHOULD render gridView correctly", function()
		testElement(instance, function()
			return byName(instance, "ContentView")
		end, function(gridView)
			expect(gridView).never.toBeNil()
		end)

		testElement(instance, function()
			return byName(instance, "EmptyState")
		end, function(emptyState)
			expect(emptyState).toBeNil()
		end)
	end)

	it("SHOULD render the showMore button below the gridView", function()
		testElement(instance, function()
			return byName(instance, "ContentView")
		end, function(gridView)
			testElement(instance, function()
				return byName(instance, "showMore")
			end, function(showMore)
				expect(showMore).never.toBeNil()
				expect(showMore).toBeBelow(gridView)
			end)
		end)
	end)

	it("SHOULD render scrollingFrame correctly", function()
		testElement(instance, function()
			return byName(instance, "scrollingFrame")
		end, function(scrollingFrame)
			expect(scrollingFrame).never.toBeNil()
			expect(scrollingFrame.CanvasPosition.Y).toBe(0)
			scrollingFrame.CanvasPosition = scrollingFrame.CanvasPosition + Vector2.new(0, 900001)
			expect(scrollingFrame.CanvasPosition.Y).toBe(1)
		end)
	end)
end)

describe("with empty FriendsRequests", function()
	local instance, cleanup

	beforeEach(function()
		if getFFlagSocialOnboardingExperimentEnabled() then
			instance, cleanup = createInstance({}, { showNewAddFriendsPageVariant = true })
		else
			instance, cleanup = createInstance({})
		end
	end)

	afterEach(function()
		cleanup()
	end)

	it("SHOULD render emptyState", function()
		testElement(instance, function()
			return byName(instance, "EmptyState")
		end, function(emptyState)
			expect(emptyState).never.toBeNil()
		end)
	end)

	it("SHOULD not render the showMore button", function()
		testElement(instance, function()
			return byName(instance, "showMore")
		end, function(showMore)
			expect(showMore).toBeNil()
		end)
	end)

	if getFFlagSocialOnboardingExperimentEnabled() then
		it("SHOULD not render the headerFrame", function()
			testElement(instance, function()
				return byName(instance, "HeaderFrame")
			end, function(headerFrame)
				expect(headerFrame).toBeNil()
			end)
		end)
	end
end)

describe("showMore button behavior", function()
	it("SHOULD ensure ShowMoreBottom is not visible by default for small number of friends", function()
		local instance, cleanup = createInstance(withRequests.smallNumbersOfFriendRequests)
		waitForEvents.act()
		local showMore = RhodiumHelpers.findFirstInstance(instance, {
			Name = "showMore",
		})
		expect(showMore).toBeNil()
		cleanup()
	end)

	it("SHOULD ensure ShowMoreBottom is visible by default for many friends", function()
		local instance, cleanup = createInstance(withRequests.manyFriendRequests)
		local showMore = RhodiumHelpers.findFirstInstance(instance, {
			Name = "showMore",
		})
		expect(showMore).never.toBeNil()
		cleanup()
	end)
end)

if getFFlagSocialOnboardingExperimentEnabled() then
	describe("QR code banner behavior", function()
		local instance, cleanup, navigation, navigateToLuaAppPages
		local fireProfileQRCodeBannerPressedEventSpy = jest.fn()
		local fireProfileQRCodeBannerSeenEventSpy = jest.fn()

		beforeEach(function()
			navigation = {
				navigate = jest.fn(),
			}
			navigateToLuaAppPages = {
				[EnumScreens.ProfileQRCodePage] = jest.fn(),
			}
			instance, cleanup = createInstance({}, {
				navigation = navigation,
				navigateToLuaAppPages = navigateToLuaAppPages,
				fireProfileQRCodeBannerPressedEvent = if getFFlagAddFriendsQRCodeAnalytics()
					then function()
						fireProfileQRCodeBannerPressedEventSpy()
					end
					else nil,
				fireProfileQRCodeBannerSeenEvent = if getFFlagAddFriendsQRCodeAnalytics()
					then function()
						fireProfileQRCodeBannerSeenEventSpy()
					end
					else nil,
				showNewAddFriendsPageVariant = true,
			})
		end)

		afterEach(function()
			cleanup()
		end)

		if getFFlagAddFriendsQRCodeAnalytics() then
			it("SHOULD fire QR Code analytic events", function()
				local banner = RhodiumHelpers.findFirstInstance(instance, {
					Name = "QRCodeBanner",
				})

				if getFFlagProfileQRCodeCoreFeaturesEnabled() then
					expect(fireProfileQRCodeBannerSeenEventSpy).toHaveBeenCalledTimes(1)

					RhodiumHelpers.clickInstance(banner)
					expect(fireProfileQRCodeBannerPressedEventSpy).toHaveBeenCalledTimes(1)
				end
			end)
		end

		it("SHOULD render QR code banner correctly", function()
			testElement(instance, function()
				return RhodiumHelpers.findFirstInstance(instance, {
					Name = "QRCodeBanner",
				})
			end, function(banner)
				if getFFlagProfileQRCodeCoreFeaturesEnabled() then
					expect(banner).never.toBeNil()
				else
					expect(banner).toBeNil()
				end
			end)
		end)

		it("SHOULD call navigate to QR Code Page when clicked", function()
			local banner = RhodiumHelpers.findFirstInstance(instance, {
				Name = "QRCodeBanner",
			})

			if getFFlagProfileQRCodeCoreFeaturesEnabled() then
				RhodiumHelpers.clickInstance(banner)
				expect(navigation.navigate).toHaveBeenCalledTimes(1)
				expect(navigation.navigate).toHaveBeenCalledWith(EnumScreens.ProfileQRCodePage)
			end
		end)
	end)
end

describe("Contact importer is visible", function()
	local fireContactImporterAnalyticsEvents, fireContactImporterSeenEvent, navigation
	local instance, cleanup

	beforeEach(function()
		fireContactImporterAnalyticsEvents = jest.fn()
		fireContactImporterSeenEvent = jest.fn()
		navigation = {
			navigate = jest.fn(),
		}

		instance, cleanup = createInstance({}, {
			fireContactImporterAnalyticsEvents = function()
				fireContactImporterAnalyticsEvents()
			end,
			contactImporterAndPYMKEnabled = true,
			fireContactImporterSeenEvent = function()
				fireContactImporterSeenEvent()
			end,
			isPhoneVerified = true,
			shouldShowContactImporterFeature = false,
			navigation = navigation,
			showNewAddFriendsPageVariant = if getFFlagSocialOnboardingExperimentEnabled() then true else nil,
		})
	end)

	afterEach(function()
		cleanup()
	end)

	it("SHOULD render contactImporterModal correctly", function()
		testElement(instance, function()
			return RhodiumHelpers.findFirstInstance(instance, {
				Name = if getFFlagSocialOnboardingExperimentEnabled() then "ContactImporterBanner" else "Banner",
			})
		end, function(banner)
			expect(banner).never.toBeNil()
		end)
	end)

	it("SHOULD fire contactImporterSeenEvent correctly", function()
		testElement(instance, function()
			return RhodiumHelpers.findFirstInstance(instance, {
				Name = if getFFlagSocialOnboardingExperimentEnabled() then "ContactImporterBanner" else "Banner",
			})
		end, function(banner)
			expect(banner).never.toBeNil()
		end)

		expect(fireContactImporterSeenEvent).toHaveBeenCalledTimes(1)
	end)

	it("SHOULD fire contactImporterAnalyticsEvents events when clicked", function()
		local banner = RhodiumHelpers.findFirstInstance(instance, {
			Name = if getFFlagSocialOnboardingExperimentEnabled() then "ContactImporterBanner" else "Banner",
		})
		local button = if getFFlagSocialOnboardingExperimentEnabled()
			then nil
			else RhodiumHelpers.findFirstInstance(banner, {
				Name = "Button",
			})

		if getFFlagSocialOnboardingExperimentEnabled() then
			RhodiumHelpers.clickInstance(banner)
		else
			RhodiumHelpers.clickInstance(button)
		end

		expect(navigation.navigate).toHaveBeenCalledTimes(1)
		expect(fireContactImporterAnalyticsEvents).toHaveBeenCalledTimes(1)
	end)
end)

it("SHOULD not show contact list if clicked", function()
	local instance, cleanup, fireContactImporterAnalyticsEvents, fireContactImporterSeenEvent, navigation
	local handleOpenPhoneVerificationLinkWebview = jest.fn()
	local handleOpenLearnMoreLink = jest.fn()
	local handleShowToastForTests = jest.fn()
	fireContactImporterAnalyticsEvents = jest.fn()
	fireContactImporterSeenEvent = jest.fn()
	navigation = {
		navigate = jest.fn(),
	}
	instance, cleanup = createInstance({}, {
		fireContactImporterAnalyticsEvents = function()
			fireContactImporterAnalyticsEvents()
		end,
		contactImporterAndPYMKEnabled = true,
		fireContactImporterSeenEvent = function()
			fireContactImporterSeenEvent()
		end,
		isPhoneVerified = true,
		shouldShowContactImporterFeature = false,
		navigation = navigation,
		shouldShowContactImporterUpsellModal = true,
		handleOpenPhoneVerificationLinkWebview = handleOpenPhoneVerificationLinkWebview,
		handleOpenLearnMoreLink = handleOpenLearnMoreLink,
		handleShowToastForTests = handleShowToastForTests,
		showNewAddFriendsPageVariant = if getFFlagSocialOnboardingExperimentEnabled() then true else nil,
	})

	local banner = RhodiumHelpers.findFirstInstance(instance, {
		Name = if getFFlagSocialOnboardingExperimentEnabled() then "ContactImporterBanner" else "Banner",
	})
	local button = if getFFlagSocialOnboardingExperimentEnabled()
		then nil
		else RhodiumHelpers.findFirstInstance(banner, {
			Name = "Button",
		})

	if getFFlagSocialOnboardingExperimentEnabled() then
		RhodiumHelpers.clickInstance(banner)
	else
		RhodiumHelpers.clickInstance(button)
	end

	expect(navigation.navigate).toHaveBeenCalledWith(EnumScreens.ContactImporter, {
		isFromAddFriendsPage = true,
		isDiscoverabilityUnset = false,
		openLearnMoreLink = handleOpenLearnMoreLink,
		showToast = handleShowToastForTests,
		isPhoneVerified = true,
	})

	cleanup()
end)
describe("FFlagUpdateContactImporterModalLogic", function()
	local flag
	beforeAll(function()
		flag = game:SetFastFlagForTesting("UpdateContactImporterModalLogic", true)
	end)
	afterAll(function()
		game:SetFastFlagForTesting("UpdateContactImporterModalLogic", flag)
	end)

	it("SHOULD show contact list if clicked", function()
		local instance, cleanup, fireContactImporterAnalyticsEvents, fireContactImporterSeenEvent, navigation
		local handleOpenPhoneVerificationLinkWebview = jest.fn()
		local handleOpenLearnMoreLink = jest.fn()
		local handleShowToastForTests = jest.fn()
		fireContactImporterAnalyticsEvents = jest.fn()
		fireContactImporterSeenEvent = jest.fn()
		navigation = {
			navigate = jest.fn(),
		}
		instance, cleanup = createInstance({}, {
			fireContactImporterAnalyticsEvents = function()
				fireContactImporterAnalyticsEvents()
			end,
			contactImporterAndPYMKEnabled = true,
			fireContactImporterSeenEvent = function()
				fireContactImporterSeenEvent()
			end,
			isPhoneVerified = true,
			shouldShowContactImporterFeature = false,
			navigation = navigation,
			shouldShowContactImporterUpsellModal = false,
			handleOpenPhoneVerificationLinkWebview = handleOpenPhoneVerificationLinkWebview,
			handleOpenLearnMoreLink = handleOpenLearnMoreLink,
			handleShowToastForTests = handleShowToastForTests,
			showNewAddFriendsPageVariant = if getFFlagSocialOnboardingExperimentEnabled() then true else nil,
		})

		local banner = RhodiumHelpers.findFirstInstance(instance, {
			Name = if getFFlagSocialOnboardingExperimentEnabled() then "ContactImporterBanner" else "Banner",
		})
		local button = if getFFlagSocialOnboardingExperimentEnabled()
			then nil
			else RhodiumHelpers.findFirstInstance(banner, {
				Name = "Button",
			})

		if getFFlagSocialOnboardingExperimentEnabled() then
			RhodiumHelpers.clickInstance(banner)
		else
			RhodiumHelpers.clickInstance(button)
		end

		expect(navigation.navigate).toHaveBeenCalledWith(EnumScreens.ContactsList, {
			isFromAddFriendsPage = true,
			bypassFetchContacts = true,
			isPhoneVerified = true,
		})

		cleanup()
	end)
end)

describe("full searchbar button on compactMode", function()
	local instance, cleanup

	beforeEach(function()
		instance, cleanup = createInstance(friendRequests, {
			addFriendsPageSearchbarEnabled = true,
		})
	end)

	afterEach(function()
		cleanup()
	end)

	it("SHOULD render searchbar button correctly", function()
		testElement(instance, function()
			return byName(instance, "SearchbarButton")
		end, function(SearchbarButton)
			expect(SearchbarButton).never.toBeNil()
		end)
	end)
end)
