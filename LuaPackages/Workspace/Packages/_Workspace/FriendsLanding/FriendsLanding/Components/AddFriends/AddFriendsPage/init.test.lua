local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local FriendsSourceType = require(FriendsLanding.AddFriends.Enums.FriendsSourceType)
local EnumScreens = require(FriendsLanding.EnumScreens)
local createInstanceWithProviders = require(FriendsLanding.TestHelpers.createInstanceWithProviders)

local dependencies = require(FriendsLanding.dependencies)
local llama = dependencies.llama
local Dash = dependencies.Dash
local getFFlagContactImporterWithPhoneVerification = dependencies.getFFlagContactImporterWithPhoneVerification
local getFFlagAddFriendsSearchbarIXPEnabled = dependencies.getFFlagAddFriendsSearchbarIXPEnabled
local getFFlagEnableContactInvitesForNonPhoneVerified = dependencies.getFFlagEnableContactInvitesForNonPhoneVerified

local devDependencies = require(FriendsLanding.devDependencies)
local RhodiumHelpers = devDependencies.RhodiumHelpers
local mockLocale = devDependencies.UnitTestHelpers.mockLocale
local waitForEvents = devDependencies.DeferredLuaHelpers.waitForEvents

local JestGlobals = devDependencies.JestGlobals
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
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
		instance, cleanup = createInstance({})
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
		})
	end)

	afterEach(function()
		cleanup()
	end)

	it("SHOULD render contactImporterModal correctly", function()
		testElement(instance, function()
			return RhodiumHelpers.findFirstInstance(instance, {
				Name = "Banner",
			})
		end, function(banner)
			expect(banner).never.toBeNil()
		end)
	end)

	it("SHOULD fire contactImporterSeenEvent correctly", function()
		testElement(instance, function()
			return RhodiumHelpers.findFirstInstance(instance, {
				Name = "Banner",
			})
		end, function(banner)
			expect(banner).never.toBeNil()
		end)

		expect(fireContactImporterSeenEvent).toHaveBeenCalledTimes(1)
	end)

	it("SHOULD fire contactImporterAnalyticsEvents events when clicked", function()
		local banner = RhodiumHelpers.findFirstInstance(instance, {
			Name = "Banner",
		})
		local button = RhodiumHelpers.findFirstInstance(banner, {
			Name = "Button",
		})

		RhodiumHelpers.clickInstance(button)

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
	})

	local banner = RhodiumHelpers.findFirstInstance(instance, {
		Name = "Banner",
	})
	local button = RhodiumHelpers.findFirstInstance(banner, {
		Name = "Button",
	})

	RhodiumHelpers.clickInstance(button)

	expect(navigation.navigate).toHaveBeenCalledWith(EnumScreens.ContactImporter, {
		isFromAddFriendsPage = true,
		isDiscoverabilityUnset = false,
		openLearnMoreLink = handleOpenLearnMoreLink,
		openPhoneVerificationWebview = if getFFlagContactImporterWithPhoneVerification()
			then handleOpenPhoneVerificationLinkWebview
			else nil,
		showToast = handleShowToastForTests,
		isPhoneVerified = if getFFlagEnableContactInvitesForNonPhoneVerified() then true else nil,
	})

	cleanup()
end)

if getFFlagAddFriendsSearchbarIXPEnabled() then
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
end
