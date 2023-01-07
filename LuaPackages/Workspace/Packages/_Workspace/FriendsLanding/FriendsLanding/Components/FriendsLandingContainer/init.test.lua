local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local getBaseTestStates = require(FriendsLanding.TestHelpers.getBaseTestStates)
local createInstanceWithProviders = require(FriendsLanding.TestHelpers.createInstanceWithProviders)
local waitUntil = require(FriendsLanding.TestHelpers.waitUntil)

local dependencies = require(FriendsLanding.dependencies)
local llama = dependencies.llama

local devDependencies = require(FriendsLanding.devDependencies)
local RhodiumHelpers = devDependencies.RhodiumHelpers
local mockLocale = devDependencies.UnitTestHelpers.mockLocale
local ReactRoblox = devDependencies.ReactRoblox

local JestGlobals = devDependencies.JestGlobals
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local FriendsLandingContainer = require(script.Parent)

-- FIXME: APPFDN-1925
local manyFriendsWithFilterStory = require((script :: any).Parent["manyFriendsWithFilter.story"]) :: any
local smallScreenWithFriendsStory = require((script :: any).Parent["smallScreenWithFriends.story"]) :: any

local ONLINE_FRIEND_DISPLAY_NAME = "onlineFriend"
local OFFLINE_FRIEND_DISPLAY_NAME = "offlineFriend1"
local IN_GAME_FRIEND_DISPLAY_NAME = "inGameFriend"
local IN_STUDIO_FRIEND_DISPLAY_NAME = "inStudioFriend"

describe("FriendsLandingContainer", function()
	local smallNumbersOfFriends = getBaseTestStates().smallNumbersOfFriends

	local story, cleanup

	local function setup(component, props: any)
		story, cleanup = createInstanceWithProviders(mockLocale)(component, {
			initialState = llama.Dictionary.join(smallNumbersOfFriends, {
				isTest = true,
			}),
			props = props or {
				hasStore = true,
			},
		})
	end

	local function assertTextElementExists(story, text)
		local textElement = RhodiumHelpers.findFirstInstance(story, {
			Text = text,
		})

		assert(textElement, "textElement with text " .. text .. " missing")

		return textElement
	end

	local function assertTextElementMissing(story, text)
		local textElement = RhodiumHelpers.findFirstInstance(story, {
			Text = text,
		})

		assert(not textElement, "textElement with text " .. text .. " visible when it shouldn't be")
	end

	describe("lifecycle", function()
		it("SHOULD mount and render without issue", function()
			local _, cleanup = createInstanceWithProviders(mockLocale)(FriendsLandingContainer, {})

			cleanup()
		end)
	end)

	describe("filter", function()
		beforeEach(function()
			setup(manyFriendsWithFilterStory)
			waitUntil(function()
				local offlineFriend = RhodiumHelpers.findFirstInstance(story, {
					Text = OFFLINE_FRIEND_DISPLAY_NAME,
				})

				return offlineFriend
			end)

			assertTextElementExists(story, ONLINE_FRIEND_DISPLAY_NAME)
			assertTextElementExists(story, IN_GAME_FRIEND_DISPLAY_NAME)
			assertTextElementExists(story, IN_STUDIO_FRIEND_DISPLAY_NAME)
		end)

		afterEach(function()
			cleanup()
		end)

		it("SHOULD be able to filter by online friends", function()
			local button = RhodiumHelpers.findFirstInstance(story, {
				Name = "filterByOnline",
			})
			ReactRoblox.act(function()
				RhodiumHelpers.clickInstance(button)
			end)
			waitUntil(function()
				local offlineFriend = RhodiumHelpers.findFirstInstance(story, {
					Text = OFFLINE_FRIEND_DISPLAY_NAME,
				})
				return not offlineFriend
			end)

			assertTextElementExists(story, ONLINE_FRIEND_DISPLAY_NAME)
			assertTextElementMissing(story, OFFLINE_FRIEND_DISPLAY_NAME)
			assertTextElementExists(story, IN_GAME_FRIEND_DISPLAY_NAME)
			assertTextElementExists(story, IN_STUDIO_FRIEND_DISPLAY_NAME)
		end)

		it("SHOULD be able to filter by inExperience friends", function()
			local button = RhodiumHelpers.findFirstInstance(story, {
				Name = "filterInExperience",
			})
			ReactRoblox.act(function()
				RhodiumHelpers.clickInstance(button)
			end)
			waitUntil(function()
				local offlineFriend = RhodiumHelpers.findFirstInstance(story, {
					Text = OFFLINE_FRIEND_DISPLAY_NAME,
				})

				return not offlineFriend
			end)

			assertTextElementExists(story, IN_GAME_FRIEND_DISPLAY_NAME)
			assertTextElementExists(story, IN_STUDIO_FRIEND_DISPLAY_NAME)
			assertTextElementMissing(story, ONLINE_FRIEND_DISPLAY_NAME)
			assertTextElementMissing(story, OFFLINE_FRIEND_DISPLAY_NAME)
		end)

		it("SHOULD be able to filter by offline and then clear filter", function()
			local button = RhodiumHelpers.findFirstInstance(story, {
				Name = "filterByOffline",
			})
			ReactRoblox.act(function()
				RhodiumHelpers.clickInstance(button)
			end)
			waitUntil(function()
				local onlineFriend = RhodiumHelpers.findFirstInstance(story, {
					Text = ONLINE_FRIEND_DISPLAY_NAME,
				})

				return not onlineFriend
			end)

			assertTextElementExists(story, OFFLINE_FRIEND_DISPLAY_NAME)
			assertTextElementMissing(story, IN_GAME_FRIEND_DISPLAY_NAME)
			assertTextElementMissing(story, IN_STUDIO_FRIEND_DISPLAY_NAME)
			assertTextElementMissing(story, ONLINE_FRIEND_DISPLAY_NAME)

			button = RhodiumHelpers.findFirstInstance(story, {
				Name = "clearFilter",
			})
			ReactRoblox.act(function()
				RhodiumHelpers.clickInstance(button)
			end)
			waitUntil(function()
				local onlineFriend = RhodiumHelpers.findFirstInstance(story, {
					Text = ONLINE_FRIEND_DISPLAY_NAME,
				})

				return onlineFriend
			end)

			ReactRoblox.act(function()
				wait()
			end)
			assertTextElementExists(story, OFFLINE_FRIEND_DISPLAY_NAME)
			assertTextElementExists(story, IN_GAME_FRIEND_DISPLAY_NAME)
			assertTextElementExists(story, IN_STUDIO_FRIEND_DISPLAY_NAME)
			assertTextElementExists(story, ONLINE_FRIEND_DISPLAY_NAME)
		end)
	end)

	describe("limitFriends", function()
		beforeEach(function()
			setup(smallScreenWithFriendsStory, { visibleRows = 1, hasStore = true })

			waitUntil(function()
				local inGameFriend = RhodiumHelpers.findFirstInstance(story, {
					Text = IN_GAME_FRIEND_DISPLAY_NAME,
				})

				return inGameFriend
			end)

			ReactRoblox.act(function()
				wait()
			end)

			assertTextElementExists(story, IN_GAME_FRIEND_DISPLAY_NAME)
			assertTextElementMissing(story, ONLINE_FRIEND_DISPLAY_NAME)
			assertTextElementMissing(story, OFFLINE_FRIEND_DISPLAY_NAME)
		end)

		it("SHOULD load more users when you click 'load more'", function()
			local button = RhodiumHelpers.findFirstInstance(story, {
				Name = "showMore",
			})

			ReactRoblox.act(function()
				RhodiumHelpers.clickInstance(button)
			end)
			waitUntil(function()
				local offlineFriend = RhodiumHelpers.findFirstInstance(story, {
					Text = OFFLINE_FRIEND_DISPLAY_NAME,
				})

				return offlineFriend
			end)

			ReactRoblox.act(function()
				wait()
			end)
			assertTextElementExists(story, OFFLINE_FRIEND_DISPLAY_NAME)
			assertTextElementExists(story, IN_GAME_FRIEND_DISPLAY_NAME)
			assertTextElementExists(story, IN_STUDIO_FRIEND_DISPLAY_NAME)
		end)

		it("SHOULD show the amount of possible friends in a filter category", function()
			local filterByButton = RhodiumHelpers.findFirstInstance(story, {
				Name = "filterByButton",
			})
			local buttonText = RhodiumHelpers.findFirstInstance(filterByButton, {
				Name = "PillText",
			})

			expect(buttonText).toEqual(expect.any("Instance"))
			expect(buttonText.Text).toContain("(5)")
		end)
	end)
end)
