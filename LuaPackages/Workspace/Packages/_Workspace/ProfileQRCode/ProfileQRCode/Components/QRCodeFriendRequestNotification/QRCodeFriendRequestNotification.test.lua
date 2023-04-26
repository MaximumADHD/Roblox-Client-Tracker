local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent

local createTreeWithProviders = require(ProfileQRCode.TestHelpers.createTreeWithProviders)
local DefaultTestUserId = require(ProfileQRCode.TestHelpers.DefaultTestUserId)
local findElementHelpers = require(ProfileQRCode.TestHelpers.findElementHelpers)
local JestGlobals = require(Packages.Dev.JestGlobals)
local RhodiumHelpers = require(Packages.Dev.RhodiumHelpers)
local SocialTestHelpers = require(Packages.Dev.SocialTestHelpers)
local validateEvent = require(ProfileQRCode.TestHelpers.validateEvent)
local EventNames = require(script.Parent.Parent.Parent.Analytics.EventNames)
local beforeAll = JestGlobals.beforeAll
local afterAll = JestGlobals.afterAll
local ReactRoblox = require(Packages.Dev.ReactRoblox)

local runWhileMounted = SocialTestHelpers.TestHelpers.runWhileMounted
local jest = JestGlobals.jest
local expect = JestGlobals.expect
local it = JestGlobals.it

local Stories = require(script.Parent.QRCodeFriendRequestNotificationStories)
local defaultStory = Stories.default

local oldGetFFlagProfileQRCodeAlertDisableAcceptOnPress

beforeAll(function()
	oldGetFFlagProfileQRCodeAlertDisableAcceptOnPress =
		game:SetFastFlagForTesting("ProfileQRCodeAlertDisableAcceptOnPress", true)
end)

afterAll(function()
	game:SetFastFlagForTesting(
		"ProfileQRCodeAlertDisableAcceptOnPress",
		oldGetFFlagProfileQRCodeAlertDisableAcceptOnPress
	)
end)

it("SHOULD mount correctly", function()
	local component = createTreeWithProviders(defaultStory, {})

	runWhileMounted(component, function(parent)
		expect(#parent:GetChildren()).toBe(1)
	end)
end)

it("SHOULD fire a banner shown RBXEventStream analytics event on mount", function()
	local component, analytics = createTreeWithProviders(defaultStory, {
		props = {
			onAccept = function() end,
			userId = DefaultTestUserId,
		},
	})

	runWhileMounted(component, function(parent)
		expect(analytics.analyticsMock.EventStream.setRBXEventStream).toHaveBeenCalledTimes(1)

		expect(analytics.analyticsMock.EventStream.setRBXEventStream).toHaveBeenCalledWith(
			analytics.analyticsMock.EventStream,
			validateEvent(EventNames.QRPageFriendRequestBannerShown, {
				qrCodeBannerQueueSize = 1,
				uid = "123",
			})
		)
	end)
end)

it("SHOULD fire a banner shown Diag analytics event on mount", function()
	local component, analytics = createTreeWithProviders(defaultStory, {
		props = {
			onAccept = function() end,
			userId = DefaultTestUserId,
		},
	})

	runWhileMounted(component, function(parent)
		expect(analytics.analyticsMock.Diag.reportCounter).toHaveBeenCalledTimes(1)

		expect(analytics.analyticsMock.Diag.reportCounter).toHaveBeenCalledWith(
			analytics.analyticsMock.Diag,
			"ProfileQRPageFriendRequestBannerShown",
			1
		)
	end)
end)

it("SHOULD show username, description, icon, close and accept", function()
	local component = createTreeWithProviders(defaultStory, {})

	runWhileMounted(component, function(parent)
		local QRCodeIcon = findElementHelpers.findQRCodeIcon(parent, { assertElementExists = true })
		local username = findElementHelpers.findUsername(parent, { assertElementExists = true })
		local description = findElementHelpers.findNotificationDescription(parent, { assertElementExists = true })
		local closeButton = findElementHelpers.findCloseButton(parent, { assertElementExists = true })
		local acceptButton = findElementHelpers.findAcceptButton(parent, { assertElementExists = true })

		expect(QRCodeIcon:getRbxInstance()).toBeLeftOf(username:getRbxInstance())
		expect(closeButton:getRbxInstance()).toBeRightOf(username:getRbxInstance())
		expect(username:getRbxInstance()).toBeAbove(description:getRbxInstance())
		expect(description:getRbxInstance()).toBeInsideBelow(username:getRbxInstance())
		expect(acceptButton:getRbxInstance()).toBeInsideBelow(description:getRbxInstance())
	end)
end)

it("SHOULD call onClose if closed", function()
	local onClose = jest.fn()
	local component = createTreeWithProviders(defaultStory, {
		props = {
			onClose = onClose,
		},
	})

	runWhileMounted(component, function(parent)
		local closeButton = findElementHelpers.findCloseButton(parent, { assertElementExists = true })

		RhodiumHelpers.clickInstance(closeButton:getRbxInstance())

		expect(onClose).toHaveBeenCalledTimes(1)
	end)
end)

it("SHOULD call onAccept if accept friend", function()
	local onAccept = jest.fn()
	local component = createTreeWithProviders(defaultStory, {
		props = {
			onAccept = onAccept,
			userId = DefaultTestUserId,
		},
	})

	runWhileMounted(component, function(parent)
		local acceptButton = findElementHelpers.findAcceptButton(parent, { assertElementExists = true })

		RhodiumHelpers.clickInstance(acceptButton:getRbxInstance())

		expect(onAccept).toHaveBeenCalledTimes(1)
		expect(onAccept).toHaveBeenCalledWith(DefaultTestUserId)
	end)
end)

it("SHOULD call onAccept once with multiple presses", function()
	local onAccept = jest.fn()
	local component = createTreeWithProviders(defaultStory, {
		props = {
			onAccept = onAccept,
			userId = DefaultTestUserId,
		},
	})

	runWhileMounted(component, function(parent)
		local acceptButton = findElementHelpers.findAcceptButton(parent, { assertElementExists = true })

		RhodiumHelpers.clickInstance(acceptButton:getRbxInstance())

		--Ensure that a render has happened
		ReactRoblox.act(function()
			task.wait(0.1)
		end)

		RhodiumHelpers.clickInstance(acceptButton:getRbxInstance())

		expect(onAccept).toHaveBeenCalledTimes(1)
	end)
end)
