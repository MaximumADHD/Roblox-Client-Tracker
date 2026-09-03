--!nonstrict
-- Tests `useOfferNineDotActivityIndicator.lua`: the hook that mirrors the offers store's
-- hamburger notification location onto the nine-dot activity indicator.
--
-- Strategy: the offers package is mocked down to `getOffersStore`, backed by a real signal
-- so the hook's subscription is exercised against the reactivity it ships against rather
-- than a stub that only reports its value once. `ChromeService` is NOT mocked -- the
-- indicator's visible state is the observable behavior under test, and Chrome's own
-- union-of-feature-keys logic is covered by `useNineDotActivityIndicator.test.lua`.

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

-- ChromeShared.Service, not Chrome.Service: the latter asserts Chrome is enabled and
-- fails the default (flag-off) test matrix.
local ChromeService = require(Chrome.ChromeShared.Service)
local FFlagChromeNineDotActivityIndicator = require(Chrome.ChromeShared.Flags).FFlagChromeNineDotActivityIndicator

local OffersPackage = CorePackages.Workspace.Packages.InExperienceOffers

local getOfferNotificationShownWithEnum, setOfferNotificationShownWithEnum

jest.mock(OffersPackage, function()
	local actualOffers = jest.requireActual(OffersPackage)
	getOfferNotificationShownWithEnum, setOfferNotificationShownWithEnum =
		Signals.createSignal(actualOffers.NotificationLocation.None)

	return setmetatable({
		getOffersStore = function(_scope: boolean?)
			return {
				getOfferNotificationShownWithEnum = getOfferNotificationShownWithEnum,
			}
		end,
	}, { __index = actualOffers })
end)

local NotificationLocation = require(OffersPackage).NotificationLocation
local useOfferNineDotActivityIndicator = require(script.Parent.useOfferNineDotActivityIndicator)

local function IndicatorHost()
	useOfferNineDotActivityIndicator()
	return nil
end

-- Tracked so teardown runs even when an assertion throws first. A leaked mount keeps its
-- request on the shared indicator and would carry into a later test's assertions.
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

local function setNotificationLocation(location)
	ReactRoblox.act(function()
		setOfferNotificationShownWithEnum(location)
	end)
end

local function isDotVisible(): boolean
	return ChromeService:nineDotActivityIndicatorVisible():get()
end

describe("useOfferNineDotActivityIndicator", function()
	beforeEach(function()
		setOfferNotificationShownWithEnum(NotificationLocation.None)
	end)

	afterEach(unmountAll)

	if FFlagChromeNineDotActivityIndicator then
		it("SHOULD show the dot WHEN the store reports Hamburger", function()
			setOfferNotificationShownWithEnum(NotificationLocation.Hamburger)

			mountHost()

			expect(isDotVisible()).toBe(true)
		end)

		it("SHOULD NOT show the dot WHEN the store reports None", function()
			mountHost()

			expect(isDotVisible()).toBe(false)
		end)

		it("SHOULD NOT show the dot WHEN the store reports GlobalIcon", function()
			setOfferNotificationShownWithEnum(NotificationLocation.GlobalIcon)

			mountHost()

			expect(isDotVisible()).toBe(false)
		end)

		it("SHOULD show the dot WHEN the location becomes Hamburger after mount", function()
			-- Offers are fetched after the shop loads, so eligibility usually lands well after
			-- the menu icon has mounted; a one-time read would leave the dot dark forever.
			mountHost()
			expect(isDotVisible()).toBe(false)

			setNotificationLocation(NotificationLocation.Hamburger)

			expect(isDotVisible()).toBe(true)
		end)

		it("SHOULD hide the dot WHEN the store stops reporting Hamburger", function()
			setOfferNotificationShownWithEnum(NotificationLocation.Hamburger)
			mountHost()

			setNotificationLocation(NotificationLocation.None)

			expect(isDotVisible()).toBe(false)
		end)

		it("SHOULD clear the dot WHEN the host unmounts", function()
			setOfferNotificationShownWithEnum(NotificationLocation.Hamburger)
			mountHost()
			expect(isDotVisible()).toBe(true)

			unmountAll()

			expect(isDotVisible()).toBe(false)
		end)
	else
		-- OverflowMenu only calls the hook behind the flag, and ChromeService leaves the
		-- indicator unprovisioned while it is off, so a hamburger offer has no dot to light.
		it("SHOULD NOT expose any dot to light WHEN FFlagChromeNineDotActivityIndicator is off", function()
			setOfferNotificationShownWithEnum(NotificationLocation.Hamburger)

			expect(ChromeService:nineDotActivityIndicatorVisible()).toBeNil()
		end)
	end
end)
