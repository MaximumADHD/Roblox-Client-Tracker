local SocialTab = script:FindFirstAncestor("SocialTab")
local createInstanceWithProps = require(SocialTab.TestHelpers.createInstanceWithProps)

local dependencies = require(SocialTab.dependencies)
local Mock = dependencies.Mock

local devDependencies = require(SocialTab.devDependencies)
local ReactRoblox = devDependencies.ReactRoblox
local RhodiumHelpers = devDependencies.RhodiumHelpers
local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local SocialTabPage = require(script.Parent)

local mockUser = {
	username = "username",
	displayName = "displayName",
	id = "id",
	isPremium = false,
	thumbnail = "",
}

expect.extend(dependencies.CollisionMatchers.Jest)

describe("Layout", function()
	it("SHOULD have the Friend Carousel above the top of the Button Grid", function()
		local folder, cleanup = createInstanceWithProps(SocialTabPage, {
			analytics = Mock.MagicMock.new(),
			localUser = mockUser,
		}, UDim2.new(1, 0, 1, 0))

		local friendsCarousel = RhodiumHelpers.findFirstInstance(folder, {
			Name = "friendsCarousel",
		})

		local buttonGrid = RhodiumHelpers.findFirstInstance(folder, {
			Name = "buttonGrid",
		})

		expect(friendsCarousel).toBeAbove(buttonGrid)

		cleanup()
	end)
end)

describe("Tile Grid", function()
	it("SHOULD scale the buttons to sit on the same Y value on small displays", function()
		local folder, cleanup = createInstanceWithProps(SocialTabPage, {
			shouldShowGroupsTilePolicy = true,
			analytics = Mock.MagicMock.new(),
			localUser = mockUser,
			chatsText = "TESTCHATS",
			groupsText = "TESTGROUPS",
		}, UDim2.new(0, 504, 0, 896))

		ReactRoblox.act(function()
			wait()
		end)

		local chatsInstance = RhodiumHelpers.findFirstInstance(folder, {
			Text = "TESTCHATS",
		})

		local groupsInstance = RhodiumHelpers.findFirstInstance(folder, {
			Text = "TESTGROUPS",
		})

		expect(chatsInstance).toBeAlignedVertically(groupsInstance, Enum.VerticalAlignment.Top)

		cleanup()
	end)
end)
