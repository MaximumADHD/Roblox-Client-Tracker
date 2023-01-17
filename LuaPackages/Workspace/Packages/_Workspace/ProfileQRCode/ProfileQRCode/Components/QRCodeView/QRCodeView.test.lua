local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local JestGlobals = require(Packages.Dev.JestGlobals)
local LuaProfileDeps = require(Packages.Dev.LuaProfileDeps)
local runWhileMounted = LuaProfileDeps.UnitTestHelpers.runWhileMounted
local SocialTestHelpers = require(Packages.Dev.SocialTestHelpers)
local createTreeWithProviders = require(ProfileQRCode.TestHelpers.createTreeWithProviders)
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest
local Stories = require(script.Parent.QRCodeViewStories)
local defaultStory = Stories.default
local createOrGetProfileShareUrl = require(ProfileQRCode.Networking.createOrGetProfileShareUrl)
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local findElementWithAssert = SocialTestHelpers.TestHelpers.findElementWithAssert
local findElementHelpers = require(ProfileQRCode.TestHelpers.findElementHelpers)
local EventNames = require(ProfileQRCode.Analytics.EventNames)
local validateEvent = require(ProfileQRCode.TestHelpers.validateEvent)

local findDisplayName = findElementWithAssert({ Text = "bigMalc" })
local findUsename = findElementWithAssert({ Text = "@malcolmtucker" })

local createOrGetProfileShareUrlMock
beforeEach(function()
	createOrGetProfileShareUrlMock = jest.fn()
	createOrGetProfileShareUrl.Mock.reply(function()
		createOrGetProfileShareUrlMock()
		return {
			responseBody = {
				shortUrl = "www.bbc.co.uk",
				linkId = "123456",
			},
		}
	end)
end)

afterEach(function()
	createOrGetProfileShareUrl.Mock.clear()
end)

it("SHOULD mount correctly", function()
	local component = createTreeWithProviders(defaultStory, {})

	runWhileMounted(component, function(parent)
		expect(#parent:GetChildren()).toBe(1)
	end)
end)

it("SHOULD fetch url on mount", function()
	local component = createTreeWithProviders(defaultStory, {})

	runWhileMounted(component, function(parent)
		expect(createOrGetProfileShareUrlMock).toHaveBeenCalledTimes(1)
	end)
end)

it("SHOULD show displayname and username", function()
	local component = createTreeWithProviders(defaultStory, {})

	runWhileMounted(component, function(parent)
		local qrCode = findElementHelpers.findQRCode(parent, { assertElementExists = true })
		local displayName = findDisplayName(parent, { assertElementExists = true })
		local username = findUsename(parent, { assertElementExists = true })

		expect(qrCode:getRbxInstance()).toBeAbove(displayName:getRbxInstance())
		expect(displayName:getRbxInstance()).toBeInsideAbove(username:getRbxInstance())
	end)
end)

it("SHOULD show avatar infront of qrcode", function()
	local component = createTreeWithProviders(defaultStory, {})

	runWhileMounted(component, function(parent)
		local playerAvatar = findElementHelpers.findPlayerAvatar(parent, { assertElementExists = true })
		local qrCode = findElementHelpers.findQRCode(parent, { assertElementExists = true })

		expect(playerAvatar:getRbxInstance()).toBeInside(qrCode:getRbxInstance())
	end)
end)

it("SHOULD fire analytics event when loaded", function()
	local component, analytics = createTreeWithProviders(defaultStory, {})

	runWhileMounted(component, function(parent)
		expect(analytics.analyticsMock.EventStream.setRBXEventStream).toHaveBeenCalledTimes(1)

		expect(analytics.analyticsMock.EventStream.setRBXEventStream).toHaveBeenCalledWith(
			analytics.analyticsMock.EventStream,
			validateEvent(EventNames.QRPageLoad, {
				shareLinkId = "123456",
				uid = "123",
			})
		)
	end)
end)

it("SHOULD fire diag counter when loaded", function()
	local component, analytics = createTreeWithProviders(defaultStory, {})

	runWhileMounted(component, function(parent)
		expect(analytics.analyticsMock.Diag.reportCounter).toHaveBeenCalledTimes(1)

		expect(analytics.analyticsMock.Diag.reportCounter).toHaveBeenCalledWith(
			analytics.analyticsMock.Diag,
			"ProfileQRPageLoad",
			1
		)
	end)
end)

it("SHOULD fire analytics event if loading fails", function()
	createOrGetProfileShareUrl.Mock.clear()
	createOrGetProfileShareUrl.Mock.replyWithError("did not work")

	local component, analytics = createTreeWithProviders(defaultStory, {})

	runWhileMounted(component, function(parent)
		expect(analytics.analyticsMock.EventStream.setRBXEventStream).toHaveBeenCalledTimes(1)

		expect(analytics.analyticsMock.EventStream.setRBXEventStream).toHaveBeenCalledWith(
			analytics.analyticsMock.EventStream,
			validateEvent(EventNames.QRPageLoadFailed, {
				uid = "123",
			})
		)
	end)
end)

it("SHOULD fire diag counter if loading fails", function()
	createOrGetProfileShareUrl.Mock.clear()
	createOrGetProfileShareUrl.Mock.replyWithError("did not work")

	local component, analytics = createTreeWithProviders(defaultStory, {})

	runWhileMounted(component, function(parent)
		expect(analytics.analyticsMock.Diag.reportCounter).toHaveBeenCalledTimes(1)
		expect(analytics.analyticsMock.Diag.reportCounter).toHaveBeenCalledWith(
			analytics.analyticsMock.Diag,
			"ProfileQRPageLoadFailed",
			1
		)
	end)
end)
