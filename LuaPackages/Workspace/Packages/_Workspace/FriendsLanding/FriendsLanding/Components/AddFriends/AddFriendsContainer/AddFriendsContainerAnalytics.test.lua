--!nonstrict
local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local EnumScreens = require(FriendsLanding.EnumScreens)
local ButtonClickEvents = require(FriendsLanding.FriendsLandingAnalytics.ButtonClickEvents)
local createInstanceWithProviders = require(FriendsLanding.TestHelpers.createInstanceWithProviders)
local waitUntil = require(FriendsLanding.TestHelpers.waitUntil)

local dependencies = require(FriendsLanding.dependencies)
local Promise = dependencies.Promise
local RoduxNetworking = dependencies.RoduxNetworking

local devDependencies = require(FriendsLanding.devDependencies)
local RhodiumHelpers = devDependencies.RhodiumHelpers
local mockLocale = devDependencies.UnitTestHelpers.mockLocale
local findImageSet = devDependencies.findImageSet

local JestGlobals = devDependencies.JestGlobals
local beforeAll = JestGlobals.beforeAll
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

-- FIXME: APPFDN-1925
local story = require((script :: any).Parent["withRequests.story"]) :: any

local function setRequestEnv(mockNetworkImpl)
	RoduxNetworking.setNetworkImpl(mockNetworkImpl)
end

beforeAll(function()
	setRequestEnv(function()
		return Promise.resolve({
			responseBody = {
				data = {
					{
						friendRequest = {
							sourceUniverseId = 12345,
						},
						mutualFriendsList = { "Nexx", "Roblox", "Hello" },
					},
					{
						friendRequest = {
							sourceUniverseId = 67890,
						},
						mutualFriendsList = {},
					},
					{
						friendRequest = {
							sourceUniverseId = nil,
						},
						mutualFriendsList = { "Portyspice", "Nexx" },
					},
				},
			},
		})
	end)
end)

describe("GIVEN mock analytics", function()
	local analytics, navigateToLuaAppPages, navigation, friendRequests, localized
	local mountAndClick, cleanup

	beforeEach(function()
		analytics = {
			navigate = jest.fn(),
			buttonClick = jest.fn(),
			impressionEvent = jest.fn(),
		}
		navigateToLuaAppPages = {
			[EnumScreens.GameDetailsPeekView] = jest.fn(),
			[EnumScreens.ViewUserProfile] = jest.fn(),
		}

		navigation = {
			navigate = jest.fn(),
			state = {
				routeName = EnumScreens.FriendsLanding,
			},
		}
		friendRequests = {
			{ id = 1 },
			{ id = 2 },
			{ id = 3 },
			{ id = 4 },
		}
		localized = {
			friendAddedText = "Friend Added",
			requestIgnoredText = "Request Ignored",
			allRequestsIgnoredText = "All Requests Ignored",
		}
	end)

	afterEach(function()
		if cleanup then
			cleanup()
		end
	end)

	describe("WHEN mounted with requests", function()
		beforeEach(function()
			mountAndClick = function(props)
				local parent
				parent, cleanup = createInstanceWithProviders(mockLocale)(story, {
					props = props,
					analytics = props.analytics,
				})

				local headerFrameIcon = RhodiumHelpers.findFirstInstance(parent, findImageSet("icons/menu/more_off"))

				RhodiumHelpers.clickInstance(headerFrameIcon)
				waitUntil(function()
					local menu = RhodiumHelpers.findFirstInstance(parent, {
						Name = "IgnoreAllContextMenu",
					})
					return menu ~= nil
				end)

				local ignoreAllContextMenu = RhodiumHelpers.findFirstInstance(parent, {
					Name = "IgnoreAllContextMenu",
				})

				local menuItem = RhodiumHelpers.findFirstInstance(ignoreAllContextMenu, {
					Name = "cell 1",
				})

				RhodiumHelpers.clickInstance(menuItem)
			end
		end)

		it("SHOULD fire the button clicked event", function()
			mountAndClick({
				navigation = navigation,
				analytics = analytics,
				friendRequests = friendRequests,
				localized = localized,
				navigateToLuaAppPages = navigateToLuaAppPages,
			})

			expect(analytics.buttonClick).toHaveBeenCalledTimes(1)
			expect(analytics.buttonClick).toHaveBeenCalledWith(analytics, ButtonClickEvents.IgnoreAllButton, {
				contextOverride = "friendRequestsPage",
			})
		end)
	end)
end)
