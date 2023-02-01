local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent

local useHasLoadedSuccessfully = require(script.Parent.useHasLoadedSuccessfully)
local renderHookWithProviders = require(ProfileQRCode.TestHelpers.renderHookWithProviders)
local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest
local React = require(Packages.React)
local ReactRoblox = require(Packages.Dev.ReactRoblox)
local mockState = require(ProfileQRCode.TestHelpers.mockState)
local mockStore = require(ProfileQRCode.TestHelpers.mockStore)
local EventNames = require(ProfileQRCode.Analytics.EventNames)

local LINK_ID = "123456"

it("SHOULD fire analytics event when has loaded is true", function()
	local mockAnalytics = {
		fireEvent = jest.fn(),
	}

	renderHookWithProviders(function()
		return useHasLoadedSuccessfully(mockAnalytics, true)
	end, {
		store = mockStore(mockState()),
	})

	expect(mockAnalytics.fireEvent).toHaveBeenCalledTimes(1)
	expect(mockAnalytics.fireEvent).toHaveBeenCalledWith(EventNames.QRPageLoad, {
		shareLinkId = LINK_ID,
	})
end)

it("SHOULD not fire analytics event when has hasLoaded is false", function()
	local mockAnalytics = {
		fireEvent = jest.fn(),
	}

	renderHookWithProviders(function()
		return useHasLoadedSuccessfully(mockAnalytics, false)
	end, {
		store = mockStore(mockState()),
	})

	expect(mockAnalytics.fireEvent).never.toHaveBeenCalled()
end)

it("SHOULD only fire analytics event when hasLoaded is true once", function()
	local mockAnalytics = {
		fireEvent = jest.fn(),
	}

	local helper = renderHookWithProviders(function()
		return useHasLoadedSuccessfully(mockAnalytics, true)
	end, {
		store = mockStore(mockState()),
	})

	expect(mockAnalytics.fireEvent).toHaveBeenCalledTimes(1)
	expect(mockAnalytics.fireEvent).toHaveBeenCalledWith(EventNames.QRPageLoad, {
		shareLinkId = LINK_ID,
	})

	helper.rerender({})

	expect(mockAnalytics.fireEvent).toHaveBeenCalledTimes(1)
end)

it("SHOULD only fire analytics event when hasLoaded is true once", function()
	local mockAnalytics = {
		fireEvent = jest.fn(),
	}

	local changeEffect
	renderHookWithProviders(function()
		local triggerEffect, setTriggerEffect = React.useState(true)
		changeEffect = setTriggerEffect
		return useHasLoadedSuccessfully(mockAnalytics, triggerEffect)
	end, {
		store = mockStore(mockState()),
	})

	expect(mockAnalytics.fireEvent).toHaveBeenCalledTimes(1)
	expect(mockAnalytics.fireEvent).toHaveBeenCalledWith(EventNames.QRPageLoad, {
		shareLinkId = LINK_ID,
	})

	ReactRoblox.act(function()
		changeEffect(false)
	end)

	ReactRoblox.act(function()
		changeEffect(true)
	end)

	expect(mockAnalytics.fireEvent).toHaveBeenCalledTimes(1)
end)
