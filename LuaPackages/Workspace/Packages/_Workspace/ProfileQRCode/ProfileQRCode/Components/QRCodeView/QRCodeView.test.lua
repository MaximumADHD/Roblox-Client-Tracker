local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local JestGlobals = require(Packages.Dev.JestGlobals)
local LuaProfileDeps = require(Packages.Dev.LuaProfileDeps)
local runWhileMounted = LuaProfileDeps.UnitTestHelpers.runWhileMounted
local createTreeWithProviders = require(ProfileQRCode.TestHelpers.createTreeWithProviders)
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest
local Stories = require(script.Parent.QRCodeViewStories)
local defaultStory = Stories.default
local loadingStory = Stories.loading
local failedStory = Stories.failed
local createOrGetProfileShareUrl = require(ProfileQRCode.Networking.createOrGetProfileShareUrl)
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local EventNames = require(ProfileQRCode.Analytics.EventNames)
local validateEvent = require(ProfileQRCode.TestHelpers.validateEvent)
local RhodiumHelpers = require(Packages.Dev.RhodiumHelpers)
local findElementHelpers = require(ProfileQRCode.TestHelpers.findElementHelpers)

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
	local component = createTreeWithProviders(loadingStory, {})

	runWhileMounted(component, function(parent)
		expect(createOrGetProfileShareUrlMock).toHaveBeenCalledTimes(1)
	end)
end)

it("SHOULD not fetch url on mount if url is already loaded", function()
	local component = createTreeWithProviders(defaultStory, {})

	runWhileMounted(component, function(parent)
		expect(createOrGetProfileShareUrlMock).toHaveBeenCalledTimes(0)
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

	local component, analytics = createTreeWithProviders(failedStory, {})

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

	local component, analytics = createTreeWithProviders(failedStory, {})

	runWhileMounted(component, function(parent)
		expect(analytics.analyticsMock.Diag.reportCounter).toHaveBeenCalledTimes(1)
		expect(analytics.analyticsMock.Diag.reportCounter).toHaveBeenCalledWith(
			analytics.analyticsMock.Diag,
			"ProfileQRPageLoadFailed",
			1
		)
	end)
end)

it("SHOULD show loading shimmer if is still loading", function()
	local component = createTreeWithProviders(loadingStory, {})

	runWhileMounted(component, function(parent)
		runWhileMounted(component, function(parent)
			findElementHelpers.findQRCode(parent, { assertElementExists = false })
			findElementHelpers.findRetryButton(parent, { assertElementExists = false })
			findElementHelpers.findLoadingElement(parent, { assertElementExists = true })
		end)
	end)
end)

it("SHOULD show failed state if loading fails", function()
	createOrGetProfileShareUrl.Mock.clear()
	createOrGetProfileShareUrl.Mock.replyWithError("did not work")

	local component = createTreeWithProviders(failedStory, {})

	runWhileMounted(component, function(parent)
		findElementHelpers.findQRCode(parent, { assertElementExists = false })
		findElementHelpers.findRetryButton(parent, { assertElementExists = true })
	end)
end)

it("SHOULD let you retry fetching the QRCode", function()
	local failedRequestMock = jest.fn()
	createOrGetProfileShareUrl.Mock.clear()
	createOrGetProfileShareUrl.Mock.replyWithError(function()
		failedRequestMock()
		return "did not work"
	end)

	local component = createTreeWithProviders(failedStory, {})

	runWhileMounted(component, function(parent)
		local retryButton = findElementHelpers.findRetryButton(parent, { assertElementExists = true })

		expect(failedRequestMock).toHaveBeenCalledTimes(1)

		RhodiumHelpers.clickInstance(retryButton:getRbxInstance())

		expect(failedRequestMock).toHaveBeenCalledTimes(2)
	end)
end)
