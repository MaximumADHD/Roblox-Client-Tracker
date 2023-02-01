local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local JestGlobals = require(Packages.Dev.JestGlobals)
local LuaProfileDeps = require(Packages.Dev.LuaProfileDeps)
local runWhileMounted = LuaProfileDeps.UnitTestHelpers.runWhileMounted
local createTreeWithProviders = require(ProfileQRCode.TestHelpers.createTreeWithProviders)
local expect = JestGlobals.expect
local it = JestGlobals.it
local Stories = require(script.Parent.ProfileQRCodeEntryPointStories)
local defaultStory = Stories.default
local loadingStory = Stories.loading
local createOrGetProfileShareUrl = require(ProfileQRCode.Networking.createOrGetProfileShareUrl)
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local jest = JestGlobals.jest
local mockAnalytics = require(ProfileQRCode.TestHelpers.mockAnalytics)
local EventNames = require(ProfileQRCode.Analytics.EventNames)
local validateEvent = require(ProfileQRCode.TestHelpers.validateEvent)

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
	local setupAnalytics = mockAnalytics({
		uid = "123",
	}, JestGlobals.jest)

	local component = createTreeWithProviders(defaultStory, {
		props = { analyticsService = setupAnalytics.analyticsMock },
	})

	runWhileMounted(component, function(parent)
		expect(#parent:GetChildren()).toBe(1)
	end)
end)

it("SHOULD not fetch url on mount if share url is already in store", function()
	local setupAnalytics = mockAnalytics({
		uid = "123",
	}, JestGlobals.jest)

	local component = createTreeWithProviders(defaultStory, {
		props = { analyticsService = setupAnalytics.analyticsMock },
	})

	runWhileMounted(component, function(parent)
		expect(createOrGetProfileShareUrlMock).toHaveBeenCalledTimes(0)
	end)
end)

it("SHOULD fetch url on mount if share url is not in store", function()
	local setupAnalytics = mockAnalytics({
		uid = "123",
	}, JestGlobals.jest)

	local component = createTreeWithProviders(loadingStory, {
		props = { analyticsService = setupAnalytics.analyticsMock },
	})

	runWhileMounted(component, function(parent)
		expect(createOrGetProfileShareUrlMock).toHaveBeenCalledTimes(1)
	end)
end)

it("SHOULD fire analytics event when loaded", function()
	local setupAnalytics = mockAnalytics({
		uid = "156",
	}, JestGlobals.jest)

	local component = createTreeWithProviders(defaultStory, {
		props = { analyticsService = setupAnalytics.analyticsMock },
	})

	runWhileMounted(component, function(parent)
		expect(setupAnalytics.analyticsMock.EventStream.setRBXEventStream).toHaveBeenCalledTimes(1)

		expect(setupAnalytics.analyticsMock.EventStream.setRBXEventStream).toHaveBeenCalledWith(
			setupAnalytics.analyticsMock.EventStream,
			validateEvent(EventNames.QRPageLoad, {
				shareLinkId = "123456",
				uid = "156",
			})
		)
	end)
end)
