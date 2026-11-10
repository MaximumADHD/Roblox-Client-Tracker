--!nonstrict
-- Tests `useFreeTrialNineDotActivityIndicator.lua`: the hook that mirrors the
-- free-trial hamburger slot onto the nine-dot activity indicator and reports
-- that the dot was shown.
--
-- Strategy: the trial submitter is mocked down to its hamburger getter, backed
-- by a real signal so the hook's subscription is exercised. `ChromeService` is
-- NOT mocked -- the indicator's visible state is the observable behavior.

local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local Signals = require(CorePackages.Packages.Signals)

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect
local jest = JestGlobals.jest
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach

local ChromeService = require(Chrome.ChromeShared.Service)
local FFlagChromeNineDotActivityIndicator = require(Chrome.ChromeShared.Flags).FFlagChromeNineDotActivityIndicator

local InExperienceShop = CorePackages.Workspace.Packages.InExperienceShop

local isHamburgerBlueDotShowing, setHamburgerBlueDotShowing = Signals.createSignal(false)
local reportMounted = jest.fn()
local reportViewed = jest.fn()

jest.mock(InExperienceShop.submitFreeTrialBlueDot, function()
	return {
		isHamburgerBlueDotShowing = isHamburgerBlueDotShowing,
		reportMounted = reportMounted,
		reportViewed = reportViewed,
	}
end)

local useFreeTrialNineDotActivityIndicator = require(script.Parent.useFreeTrialNineDotActivityIndicator)

local function IndicatorHost()
	useFreeTrialNineDotActivityIndicator()
	return nil
end

local mountedTrees: { { root: any, container: Instance } } = {}

local function unmountAll()
	for _, tree in mountedTrees do
		ReactRoblox.act(function()
			tree.root:unmount()
		end)
		tree.container:Destroy()
	end
	table.clear(mountedTrees)
end

local function mountHost()
	local container = Instance.new("Frame")
	local root = ReactRoblox.createRoot(container)
	table.insert(mountedTrees, { root = root, container = container })

	ReactRoblox.act(function()
		root:render(React.createElement(IndicatorHost))
	end)
end

local function setSlotShowing(showing: boolean)
	ReactRoblox.act(function()
		setHamburgerBlueDotShowing(showing)
	end)
end

local function isDotVisible(): boolean
	return ChromeService:nineDotActivityIndicatorVisible():get()
end

describe("useFreeTrialNineDotActivityIndicator", function()
	beforeEach(function()
		setHamburgerBlueDotShowing(false)
		reportMounted.mockClear()
		reportViewed.mockClear()
	end)

	afterEach(unmountAll)

	if FFlagChromeNineDotActivityIndicator then
		it("SHOULD show the dot WHEN the hamburger slot is showing", function()
			setHamburgerBlueDotShowing(true)

			mountHost()

			expect(isDotVisible()).toBe(true)
		end)

		it("SHOULD report mounted and viewed WHEN the hamburger slot is showing", function()
			setHamburgerBlueDotShowing(true)

			mountHost()

			expect(reportMounted).toHaveBeenCalledTimes(1)
			expect(reportViewed).toHaveBeenCalledTimes(1)
		end)

		it("SHOULD NOT show or report the dot WHEN the hamburger slot is empty", function()
			mountHost()

			expect(isDotVisible()).toBe(false)
			expect(reportMounted).never.toHaveBeenCalled()
			expect(reportViewed).never.toHaveBeenCalled()
		end)

		it("SHOULD show the dot WHEN the slot becomes active after mount", function()
			mountHost()
			expect(isDotVisible()).toBe(false)

			setSlotShowing(true)

			expect(isDotVisible()).toBe(true)
			expect(reportMounted).toHaveBeenCalledTimes(1)
			expect(reportViewed).toHaveBeenCalledTimes(1)
		end)

		it("SHOULD hide the dot WHEN the hamburger slot clears", function()
			setHamburgerBlueDotShowing(true)
			mountHost()

			setSlotShowing(false)

			expect(isDotVisible()).toBe(false)
		end)

		it("SHOULD clear the dot WHEN the host unmounts", function()
			setHamburgerBlueDotShowing(true)
			mountHost()
			expect(isDotVisible()).toBe(true)

			unmountAll()

			expect(isDotVisible()).toBe(false)
		end)
	else
		-- OverflowMenu only calls the hook behind the flag, and ChromeService leaves the
		-- indicator unprovisioned while it is off, so a hamburger trial has no dot to light.
		it("SHOULD NOT expose any dot to light WHEN FFlagChromeNineDotActivityIndicator is off", function()
			setHamburgerBlueDotShowing(true)

			expect(ChromeService:nineDotActivityIndicatorVisible()).toBeNil()
		end)
	end
end)
