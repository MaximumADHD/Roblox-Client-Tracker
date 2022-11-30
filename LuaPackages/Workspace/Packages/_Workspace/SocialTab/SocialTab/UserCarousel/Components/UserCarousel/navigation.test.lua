local SocialTab = script:FindFirstAncestor("SocialTab")
local EnumScreens = require(SocialTab.EnumScreens)
local createInstanceWithProps = require(SocialTab.TestHelpers.createInstanceWithProps)

local devDependencies = require(SocialTab.devDependencies)
local TestUtils = devDependencies.TestUtils
local RhodiumHelpers = devDependencies.RhodiumHelpers
local ReactRoblox = devDependencies.ReactRoblox
local JestGlobals = devDependencies.JestGlobals
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

-- FIXME: APPFDN-1925
local story = require((script :: any).Parent["withProviders.story"]) :: any

describe("GIVEN mock navigation functions", function()
	local navigateToLuaAppPages
	local goToAddFriends
	local goToFriendsLanding
	local cleanup

	local function mountAndClick(props, buttonName)
		local parent
		parent, cleanup = createInstanceWithProps(story, props)
		local button = nil
		TestUtils.waitUntil(function()
			button = RhodiumHelpers.findFirstInstance(parent, {
				Name = buttonName,
			})

			return button ~= nil
		end)

		assert(button, "Could not find " .. buttonName)
		ReactRoblox.act(function()
			RhodiumHelpers.clickInstance(button)
		end)
	end

	beforeEach(function()
		navigateToLuaAppPages = {
			[EnumScreens.AddFriends] = jest.fn().mockName("spec-navigateDownToAddFriends"),
			[EnumScreens.FriendFinder] = jest.fn().mockName("spec-navigateDownToFriendFinder"),
			[EnumScreens.AddFriendsAccountProvider] = jest.fn()
				.mockName("spec-navigateDownToAddFriendsAccountProvider"),
			[EnumScreens.ViewUser] = jest.fn().mockName("spec-navigateDownToViewUser"),
			[EnumScreens.ViewUserProfile] = jest.fn().mockName("spec-viewUserProfile"),
		}

		goToAddFriends = jest.fn()

		goToFriendsLanding = jest.fn()
	end)

	afterEach(function()
		cleanup()
	end)

	describe("WHEN mounted with friends", function()
		describe("WHEN AddFriendsTile is clicked", function()
			it("SHOULD navigate to AddFriends (Lua) Screen", function()
				mountAndClick({
					goToAddFriends = goToAddFriends,
				}, "AddFriendButton")

				expect(navigateToLuaAppPages[EnumScreens.AddFriends]).toHaveBeenCalledTimes(0)
				expect(goToAddFriends).toHaveBeenCalledTimes(1)
			end)
		end)

		describe("WHEN a UserTile is clicked", function()
			it("SHOULD call EnumScreen.ViewUser once with the right properties", function()
				mountAndClick({
					navigateToLuaAppPages = navigateToLuaAppPages,
				}, "Thumbnail")

				local validateUser = expect.objectContaining({
					id = expect.any("string"),
					username = expect.any("string"),
					displayName = expect.any("string"),
					thumbnail = expect.any("string"),
					isPremium = expect.any("boolean"),
				})

				expect(navigateToLuaAppPages[EnumScreens.ViewUser]).toHaveBeenCalledTimes(1)
				expect(navigateToLuaAppPages[EnumScreens.ViewUser]).toHaveBeenCalledWith(expect.objectContaining({
					user = validateUser,
					positionIndex = expect.any("number"),
					anchorSpaceSize = expect.any("Vector2"),
					anchorSpacePosition = expect.any("Vector2"),
					onClose = expect.any("function"),
					onOpen = expect.any("function"),
				}))
			end)
		end)
	end)

	describe("WHEN a FriendRequests is clicked", function()
		it("SHOULD navigate to AddFriends (Lua) Screen", function()
			mountAndClick({
				goToAddFriends = goToAddFriends,
			}, "AddFriendButton")

			expect(navigateToLuaAppPages[EnumScreens.AddFriends]).toHaveBeenCalledTimes(0)
			expect(goToAddFriends).toHaveBeenCalledTimes(1)
		end)
	end)

	describe("WHEN the Carousel Title is clicked", function()
		it("SHOULD call goToFriendsLanding if passed", function()
			mountAndClick({
				goToFriendsLanding = goToFriendsLanding,
			}, "Title")

			expect(goToFriendsLanding).toHaveBeenCalledTimes(1)
		end)

		it("SHOULD call EnumScreen.AddFriends once if goToFriendsLanding is not passed", function()
			mountAndClick({
				navigateToLuaAppPages = navigateToLuaAppPages,
				enableFriendFinder = true,
			}, "Title")

			expect(navigateToLuaAppPages[EnumScreens.AddFriends]).toHaveBeenCalledTimes(1)
		end)
	end)
end)
