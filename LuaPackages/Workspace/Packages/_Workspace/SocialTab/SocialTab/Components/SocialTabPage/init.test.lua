local SocialTab = script:FindFirstAncestor("SocialTab")
local createInstanceWithProps = require(SocialTab.TestHelpers.createInstanceWithProps)
local findImageSet = require(SocialTab.TestHelpers.findImageSet)

local dependencies = require(SocialTab.dependencies)
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local llama = dependencies.llama
local Mock = dependencies.Mock

local devDependencies = require(SocialTab.devDependencies)
local UnitTestHelpers = devDependencies.UnitTestHelpers
local RhodiumHelpers = devDependencies.RhodiumHelpers
local ReactRoblox = devDependencies.ReactRoblox
local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local SocialTabPage = require(script.Parent)

-- FIXME: APPFDN-1925
local defaultStory = require((script :: any).Parent["SocialTabPage.story"]) :: any

local style = {
	Theme = dependencies.AppStyle.LightTheme,
	Font = dependencies.AppStyle.Gotham,
}

local mockUser = {
	username = "username",
	displayName = "displayName",
	id = "id",
	isPremium = false,
	thumbnail = "",
}

local function makeTree(story, props)
	local allProps = llama.Dictionary.join({
		analytics = Mock.MagicMock.new(),
		localUser = mockUser,
	}, props)
	local tree = Roact.createElement(UIBlox.Style.Provider, {
		style = style,
	}, {
		story = Roact.createElement(story, allProps),
	})
	return UnitTestHelpers.mockLocale(tree)
end

it("SHOUD update messages badge for Chat tile WHEN unreadConversationCount changes", function()
	local screenGui = Instance.new("ScreenGui")
	screenGui.Parent = game:GetService("CoreGui")
	local socialTabPage = Roact.mount(makeTree(defaultStory, { unreadConversationCount = 12 }), screenGui)

	ReactRoblox.act(function()
		wait()
	end)

	local chatTileBadge = RhodiumHelpers.findFirstInstance(screenGui, {
		Text = "12",
	})
	expect(chatTileBadge).toEqual(expect.any("Instance"))

	Roact.update(socialTabPage, makeTree(defaultStory, { unreadConversationCount = 15 }))
	local chatTileBadgeUpdated = RhodiumHelpers.findFirstInstance(screenGui, {
		Text = "15",
	})
	local chatTileBadgeNotUpdated = RhodiumHelpers.findFirstInstance(screenGui, {
		Text = "12",
	})
	expect(chatTileBadgeUpdated).toEqual(expect.any("Instance"))
	expect(chatTileBadgeNotUpdated).toBeNil()
end)

describe("Notifications", function()
	it("SHOULD show notifications badge when the number of notifications > 0", function()
		local parent, cleanup = createInstanceWithProps(SocialTabPage, {
			numberOfNotifications = 1,
			analytics = Mock.MagicMock.new(),
			localUser = mockUser,
			enableNotificationsPolicy = true,
		}, UDim2.new(1, 0, 1, 0))

		local notificationsBadge = RhodiumHelpers.findFirstInstance(parent, {
			Name = "notificationsBadge",
		})

		expect(notificationsBadge).toEqual(expect.any("Instance"))
		cleanup()
	end)

	it("SHOULD NOT show notifications badge when the number of notifications = 0", function()
		local parent, cleanup = createInstanceWithProps(SocialTabPage, {
			numberOfNotifications = 0,
			analytics = Mock.MagicMock.new(),
			localUser = mockUser,
		}, UDim2.new(1, 0, 1, 0))

		local notificationsBadge = RhodiumHelpers.findFirstInstance(parent, {
			Name = "notificationsBadge",
		})

		expect(notificationsBadge).toBeNil()
		cleanup()
	end)

	it("SHOULD show the notifications badge with the correct value when > 0", function()
		local numNotifications = 3
		local parent, cleanup = createInstanceWithProps(SocialTabPage, {
			numberOfNotifications = numNotifications,
			analytics = Mock.MagicMock.new(),
			localUser = mockUser,
			enableNotificationsPolicy = true,
		}, UDim2.new(1, 0, 1, 0))

		local notificationsBadgeText = RhodiumHelpers.findFirstInstance(parent, {
			Name = "TextLabel",
			Text = tostring(numNotifications),
		})

		expect(notificationsBadgeText).toEqual(expect.any("Instance"))

		cleanup()
	end)

	it("SHOULD NOT show notifications badge or notifications if policy is disabled", function()
		local parent, cleanup = createInstanceWithProps(SocialTabPage, {
			analytics = Mock.MagicMock.new(),
			localUser = mockUser,
			enableNotificationsPolicy = false,
			numberOfNotifications = 10,
		}, UDim2.new(1, 0, 1, 0))

		local topBarNotifications =
			RhodiumHelpers.findFirstInstance(parent, findImageSet("icons/common/notificationOn"))
		local notificationsBadge = RhodiumHelpers.findFirstInstance(parent, { Name = "notificationsBadge" })

		expect(topBarNotifications).toBeNil()
		expect(notificationsBadge).toBeNil()

		cleanup()
	end)
end)

describe("Groups Tile display policy", function()
	it("Should not render Groups tile if policy is not enabled", function()
		local parent, cleanup = createInstanceWithProps(SocialTabPage, {
			analytics = Mock.MagicMock.new(),
			localUser = mockUser,
			shouldShowGroupsTilePolicy = false,
		}, UDim2.new(1, 0, 1, 0))

		local groupsTile = RhodiumHelpers.findFirstInstance(parent, findImageSet("icons/menu/groups_large"))
		assert(groupsTile == nil, "groupsTile should not be showing due to policy")

		cleanup()
	end)

	it("Should render Groups tile if policy is enabled", function()
		local parent, cleanup = createInstanceWithProps(SocialTabPage, {
			analytics = Mock.MagicMock.new(),
			localUser = mockUser,
			shouldShowGroupsTilePolicy = true,
		}, UDim2.new(1, 0, 1, 0))

		ReactRoblox.act(function()
			wait()
		end)

		local groupsTile = RhodiumHelpers.findFirstInstance(parent, findImageSet("icons/menu/groups_large"))
		assert(groupsTile, "groupsTile not found")

		cleanup()
	end)
end)
