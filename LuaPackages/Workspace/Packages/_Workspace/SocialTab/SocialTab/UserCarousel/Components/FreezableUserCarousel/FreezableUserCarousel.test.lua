local SocialTab = script:FindFirstAncestor("SocialTab")
local createInstanceWithProps = require(SocialTab.TestHelpers.createInstanceWithProps)

local dependencies = require(SocialTab.dependencies)
local Mock = dependencies.Mock

local devDependencies = require(SocialTab.devDependencies)
local TestUtils = devDependencies.TestUtils
local RhodiumHelpers = devDependencies.RhodiumHelpers
local ReactRoblox = devDependencies.ReactRoblox
local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local FreezableUserCarousel = require(script.Parent)

-- FIXME: APPFDN-1925
local story = require((script :: any).Parent["addFriends.story"]) :: any

describe("lifecycle", function()
	it("SHOULD mount and render without issue", function()
		local _, cleanup = createInstanceWithProps(FreezableUserCarousel, {
			analytics = Mock.MagicMock.new(),
		})

		cleanup()
	end)
end)

describe("addFriends", function()
	it("SHOULD only show the addFriends hint if they have no friends", function()
		local parent, cleanup = createInstanceWithProps(story)
		local addFriendsHint = nil

		TestUtils.waitUntil(function()
			addFriendsHint = RhodiumHelpers.findFirstInstance(parent, {
				Name = "HintFrame",
			})

			return addFriendsHint ~= nil
		end)

		local userTile = RhodiumHelpers.findFirstInstance(parent, {
			Name = "UserInfo",
		})

		expect(addFriendsHint).toEqual(expect.any("Instance"))
		expect(userTile).toBeNil()

		local addFriendsTestButton = RhodiumHelpers.findFirstInstance(parent, {
			Name = "addFriendsTestButton",
		})
		ReactRoblox.act(function()
			RhodiumHelpers.clickInstance(addFriendsTestButton)
		end)
		TestUtils.waitUntil(function()
			userTile = RhodiumHelpers.findFirstInstance(parent, {
				Name = "UserInfo",
			})

			return userTile ~= nil
		end)

		addFriendsHint = RhodiumHelpers.findFirstInstance(parent, {
			Name = "HintFrame",
		})
		expect(addFriendsHint).toBeNil()
		expect(userTile).toEqual(expect.any("Instance"))

		cleanup()
	end)

	it("SHOULD not add friends if frozen", function()
		local parent, cleanup = createInstanceWithProps(story, { isFrozen = true })
		local addFriendsHint = nil
		TestUtils.waitUntil(function()
			addFriendsHint = RhodiumHelpers.findFirstInstance(parent, {
				Name = "HintFrame",
			})

			return addFriendsHint ~= nil
		end)

		local userTile = RhodiumHelpers.findFirstInstance(parent, {
			Name = "UserInfo",
		})
		expect(addFriendsHint).toEqual(expect.any("Instance"))
		expect(userTile).toBeNil()

		local addFriendsTestButton = RhodiumHelpers.findFirstInstance(parent, {
			Name = "addFriendsTestButton",
		})
		ReactRoblox.act(function()
			RhodiumHelpers.clickInstance(addFriendsTestButton)
			wait()
		end)

		addFriendsHint = RhodiumHelpers.findFirstInstance(parent, {
			Name = "HintFrame",
		})
		userTile = RhodiumHelpers.findFirstInstance(parent, {
			Name = "UserInfo",
		})
		expect(addFriendsHint).toEqual(expect.any("Instance"))
		expect(userTile).toBeNil()

		cleanup()
	end)
end)
