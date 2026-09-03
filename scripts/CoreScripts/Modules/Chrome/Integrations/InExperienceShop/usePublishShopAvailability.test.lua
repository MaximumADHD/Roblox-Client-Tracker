--!nonstrict
-- Tests `usePublishShopAvailability.lua`: the hook that mirrors the shop entry's Chrome
-- availability into the offers store.
--
-- Strategy: `ChromeService` is faked down to the availability signal this hook reads, kept
-- as one stable object for the whole suite because `useMappedSignal` re-subscribes whenever
-- the signal's identity changes. The offers package is mocked down to `getOffersStore`,
-- whose `setIsShopAvailable` is a spy -- what this hook is responsible for is the value it
-- hands the store, and `createOffersStore.test.lua` covers what the store does with it.

local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect
local jest = JestGlobals.jest
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach

local Constants = require(Chrome.ChromeShared.Unibar.Constants)
local OffersPackage = CorePackages.Workspace.Packages.InExperienceOffers

-- Sentinel values for the availability enum the fake service exposes. Real ChromeService
-- uses numeric ids; only equality matters here.
local AVAILABILITY = {
	Unavailable = "Unavailable",
	Loading = "Loading",
	Available = "Available",
	Pinned = "Pinned",
}

local isShopRegistered = true
local shopAvailability = AVAILABILITY.Available
local availabilityListeners: { (string) -> () } = {}

local setIsShopAvailableMock = jest.fn()

local shopAvailabilitySignal = {
	get = function()
		return shopAvailability
	end,
	connect = function(_self, callback: (string) -> ())
		table.insert(availabilityListeners, callback)
		return {
			disconnect = function()
				local index = table.find(availabilityListeners, callback)
				if index then
					table.remove(availabilityListeners, index)
				end
			end,
		}
	end,
}

jest.mock(Chrome.Service, function()
	return {
		AvailabilitySignal = AVAILABILITY,
		integrations = function()
			if not isShopRegistered then
				return {}
			end
			return {
				[Constants.IN_EXPERIENCE_SHOP_ID] = {
					availability = shopAvailabilitySignal,
				},
			}
		end,
	}
end)

jest.mock(OffersPackage, function()
	local actualOffers = jest.requireActual(OffersPackage)

	return setmetatable({
		getOffersStore = function(_scope: boolean?)
			return {
				setIsShopAvailable = setIsShopAvailableMock,
			}
		end,
	}, { __index = actualOffers })
end)

local usePublishShopAvailability = require(script.Parent.usePublishShopAvailability)

local function PublisherHost()
	usePublishShopAvailability()
	return nil
end

-- Tracked so teardown runs even when an assertion throws first. A leaked mount stays
-- subscribed to the availability signal and would publish into a later test.
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

local function mountPublisher()
	local container = Instance.new("Frame")
	local root = ReactRoblox.createRoot(container)
	table.insert(mountedTrees, { root = root, container = container })

	ReactRoblox.act(function()
		root:render(React.createElement(PublisherHost))
	end)
end

-- Moves the shop entry the way ChromeService would, then lets React flush the update.
local function setShopAvailability(availability: string)
	shopAvailability = availability
	ReactRoblox.act(function()
		for _, listener in availabilityListeners do
			listener(availability)
		end
	end)
end

describe("usePublishShopAvailability", function()
	beforeEach(function()
		isShopRegistered = true
		shopAvailability = AVAILABILITY.Available
		table.clear(availabilityListeners)
		setIsShopAvailableMock.mockClear()
	end)

	afterEach(unmountAll)

	it("SHOULD publish true when the shop entry is available", function()
		mountPublisher()

		expect(setIsShopAvailableMock).toHaveBeenCalledWith(true)
	end)

	it("SHOULD publish false when the shop entry is unavailable", function()
		-- What a developer disabling the shop's CoreGui, a failed prefetch, or an
		-- experience with nothing to sell all land on.
		shopAvailability = AVAILABILITY.Unavailable

		mountPublisher()

		expect(setIsShopAvailableMock).toHaveBeenCalledWith(false)
	end)

	it("SHOULD publish false while the shop entry is still loading", function()
		-- The entry can't be opened mid-prefetch, so an offer notification would point at
		-- nothing until it resolves.
		shopAvailability = AVAILABILITY.Loading

		mountPublisher()

		expect(setIsShopAvailableMock).toHaveBeenCalledWith(false)
	end)

	it("SHOULD publish false when the shop entry is not registered", function()
		isShopRegistered = false

		mountPublisher()

		expect(setIsShopAvailableMock).toHaveBeenCalledWith(false)
	end)

	it("SHOULD publish true when the entry turns available mid-session", function()
		-- The reason this is wired to the signal at all: with the shop hidden until its
		-- join-time prefetch resolves, the entry starts unavailable and flips later.
		shopAvailability = AVAILABILITY.Unavailable
		mountPublisher()
		setIsShopAvailableMock.mockClear()

		setShopAvailability(AVAILABILITY.Available)

		expect(setIsShopAvailableMock).toHaveBeenCalledTimes(1)
		expect(setIsShopAvailableMock).toHaveBeenCalledWith(true)
	end)

	it("SHOULD publish false when the entry stops being available mid-session", function()
		mountPublisher()
		setIsShopAvailableMock.mockClear()

		setShopAvailability(AVAILABILITY.Unavailable)

		expect(setIsShopAvailableMock).toHaveBeenCalledTimes(1)
		expect(setIsShopAvailableMock).toHaveBeenCalledWith(false)
	end)

	it("SHOULD NOT republish when the entry moves between two unavailable states", function()
		-- The store only cares whether the shop can be opened, so a Loading-to-Unavailable
		-- move is not news; republishing it would re-run every consumer of the signal.
		shopAvailability = AVAILABILITY.Loading
		mountPublisher()
		setIsShopAvailableMock.mockClear()

		setShopAvailability(AVAILABILITY.Unavailable)

		expect(setIsShopAvailableMock).never.toHaveBeenCalled()
	end)
end)
