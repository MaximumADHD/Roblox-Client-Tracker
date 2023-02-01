local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent

local useHasFailedToLoad = require(script.Parent.useHasFailedToLoad)
local renderHookWithProviders = require(ProfileQRCode.TestHelpers.renderHookWithProviders)
local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest
local mockState = require(ProfileQRCode.TestHelpers.mockState)
local mockStore = require(ProfileQRCode.TestHelpers.mockStore)
local EventNames = require(ProfileQRCode.Analytics.EventNames)
local React = require(Packages.React)
local ReactRoblox = require(Packages.Dev.ReactRoblox)

it("SHOULD fire analytics event when has failed is true", function()
	local mockAnalytics = {
		fireEvent = jest.fn(),
	}

	renderHookWithProviders(function()
		return useHasFailedToLoad(mockAnalytics, true)
	end, {
		store = mockStore(mockState()),
	})

	expect(mockAnalytics.fireEvent).toHaveBeenCalledTimes(1)
	expect(mockAnalytics.fireEvent).toHaveBeenCalledWith(EventNames.QRPageLoadFailed)
end)

it("SHOULD not fire analytics event when has failed is false", function()
	local mockAnalytics = {
		fireEvent = jest.fn(),
	}

	renderHookWithProviders(function()
		return useHasFailedToLoad(mockAnalytics, false)
	end, {
		store = mockStore(mockState()),
	})

	expect(mockAnalytics.fireEvent).never.toHaveBeenCalled()
end)

it("SHOULD only fire analytics event when has failed is true once", function()
	local mockAnalytics = {
		fireEvent = jest.fn(),
	}

	local changeEffect
	renderHookWithProviders(function()
		local triggerEffect, setTriggerEffect = React.useState(true)
		changeEffect = setTriggerEffect
		return useHasFailedToLoad(mockAnalytics, triggerEffect)
	end, {
		store = mockStore(mockState()),
	})

	ReactRoblox.act(function()
		changeEffect(false)
	end)

	ReactRoblox.act(function()
		changeEffect(true)
	end)

	expect(mockAnalytics.fireEvent).toHaveBeenCalledTimes(1)
	expect(mockAnalytics.fireEvent).toHaveBeenCalledWith(EventNames.QRPageLoadFailed)

	expect(mockAnalytics.fireEvent).toHaveBeenCalledTimes(1)
end)
