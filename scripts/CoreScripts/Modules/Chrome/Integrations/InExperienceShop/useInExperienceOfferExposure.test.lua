--!nonstrict
-- Tests `useInExperienceOfferExposure.lua`: the hook that tallies how often each offer
-- has notified the player and keeps that tally on the device.
--
-- Strategy: `LocalStore` is replaced with an in-memory map -- both to assert what would
-- be written and because the real module resolves LocalPlayer by yielding at require
-- time, which never resolves in this suite. The offers package is mocked down to
-- `getOffersStore`, backed by real signals so the hook's reactive effect is exercised
-- against the reactivity it ships against; the fake store's `hydrateOfferExposureSnapshot`
-- is first-write-wins exactly as the real one is (`createOffersStore.test.lua` covers that
-- store behavior itself). `Utils.isNotificationEligible` is deliberately NOT mocked, so
-- the eligibility gate is tested through the real predicate.
--
-- Note on offer ids: the hook keeps its "already tallied" set in module state, since a
-- CoreScripts module lives exactly one play session. Tests therefore mint a fresh offer
-- id per case rather than re-requiring the module, so one test's tally can't suppress
-- the next one's.

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

local OffersPackage = CorePackages.Workspace.Packages.InExperienceOffers

-- Re-declared rather than read with `GetFastString` / `GetFastInt`, which only resolve
-- flags defined in C++. `DefineFast*` returns the live value for an already-defined
-- flag, so these follow an override the way the hook itself does.
local STORAGE_KEY = game:DefineFastString("InExperienceOfferExposureStorageKey", "InExperienceOfferExposure")
local MAX_STORED_OFFERS = game:DefineFastInt("InExperienceOfferExposureMaxStoredOffers", 50)

-- Defaults from the FInts in isNotificationEligible, which the hook screens with.
local MAX_EXPOSURE_COUNT = 3
local COOLDOWN_SECONDS = 86400

local getOffers, setOffers = Signals.createSignal(nil :: any)
local getExposureSnapshot, setExposureSnapshot = Signals.createSignal(nil :: any)
-- Defaults to available, as the real store does; `usePublishShopAvailability` is what
-- narrows it in production. Gates the tally when FFlagOfferNotifyOnGlobalIcon is off.
local getIsShopAvailable, setIsShopAvailable = Signals.createSignal(true)
-- Gates the tally when FFlagOfferNotifyOnGlobalIcon is on. Defaults to Hamburger so
-- recording-exposure cases match a live chrome shop; cases that cover a hidden
-- notification set None, and global-icon cases set GlobalIcon (the production path
-- where the chrome shop can be unavailable while the TopBar dot still shows).
local getOfferNotificationShownWithEnum, setOfferNotificationShownWithEnum = Signals.createSignal("Hamburger")

local hydrateMock = jest.fn()
local fakeOffersStore = {
	getOffers = getOffers,
	getOfferExposureSnapshot = getExposureSnapshot,
	getIsShopAvailable = getIsShopAvailable,
	getOfferNotificationShownWithEnum = getOfferNotificationShownWithEnum,
	-- Mirrors the real store: only the first hydration of a session lands, so the
	-- snapshot the hook screens against can't drift as it records exposures.
	hydrateOfferExposureSnapshot = function(tally: any)
		hydrateMock(tally)
		if getExposureSnapshot(false) == nil then
			setExposureSnapshot(tally)
		end
	end,
}

local localStoreValues: { [string]: any } = {}
local localStoreWriteMock = jest.fn()
jest.mock(Chrome.ChromeShared.Service.LocalStore, function()
	return {
		loadForLocalPlayer = function(key: string)
			return localStoreValues[key]
		end,
		storeForLocalPlayer = function(key: string, value: any)
			localStoreValues[key] = value
			localStoreWriteMock(key, value)
		end,
	}
end)

jest.mock(OffersPackage, function()
	local actualOffers = jest.requireActual(OffersPackage)

	return setmetatable({
		getOffersStore = function(_scope: boolean?)
			return fakeOffersStore
		end,
	}, { __index = actualOffers })
end)

local useInExperienceOfferExposure = require(script.Parent.useInExperienceOfferExposure)
local NotificationLocation = require(OffersPackage).NotificationLocation
local FFlagOfferNotifyOnGlobalIcon = require(CorePackages.Workspace.Packages.SharedFlags).FFlagOfferNotifyOnGlobalIcon

local nextOfferIdSuffix = 0
local function nextOfferId(): string
	nextOfferIdSuffix += 1
	return `offer-{nextOfferIdSuffix}`
end

local function isoSecondsAgo(secondsAgo: number): string
	return DateTime.fromUnixTimestamp(DateTime.now().UnixTimestamp - secondsAgo):ToIsoDate()
end

local function exposure(exposureCount: number, secondsAgo: number)
	return {
		exposureCount = exposureCount,
		lastExposureUTCTime = isoSecondsAgo(secondsAgo),
	}
end

local function availableOffer(offerId: string, featureKeys: { string }?)
	return {
		offerId = offerId,
		offerStatus = "AVAILABLE",
		featureKeys = featureKeys or { "ROBLOX_SHOP" },
	}
end

-- What the hook would have persisted, or nil when it never wrote.
local function storedTally(): any
	return localStoreValues[STORAGE_KEY]
end

local function ExposureTrackerHost()
	useInExperienceOfferExposure()
	return nil
end

-- Tracked so teardown runs even when an assertion throws first. A leaked mount stays
-- subscribed to the offers signal and would tally into a later test's assertions.
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

local function mountTracker()
	local container = Instance.new("Frame")
	local root = ReactRoblox.createRoot(container)
	table.insert(mountedTrees, { root = root, container = container })

	ReactRoblox.act(function()
		root:render(React.createElement(ExposureTrackerHost))
	end)
end

local function commitOffers(offersByFeatureKey: any)
	ReactRoblox.act(function()
		setOffers(offersByFeatureKey)
	end)
end

local function setShopAvailable(isAvailable: boolean)
	ReactRoblox.act(function()
		setIsShopAvailable(isAvailable)
	end)
end

local function setNotificationLocation(location: string)
	ReactRoblox.act(function()
		setOfferNotificationShownWithEnum(location)
	end)
end

describe("useInExperienceOfferExposure", function()
	beforeEach(function()
		table.clear(localStoreValues)
		localStoreWriteMock.mockClear()
		hydrateMock.mockClear()
		setOffers(nil)
		setExposureSnapshot(nil)
		setIsShopAvailable(true)
		setOfferNotificationShownWithEnum(NotificationLocation.Hamburger)
	end)

	afterEach(unmountAll)

	describe("hydrating the store", function()
		it("SHOULD hand the store the tally device storage already holds", function()
			local offerId = nextOfferId()
			localStoreValues[STORAGE_KEY] = { [offerId] = exposure(2, COOLDOWN_SECONDS) }

			mountTracker()

			expect(hydrateMock).toHaveBeenCalledTimes(1)
			expect(hydrateMock).toHaveBeenCalledWith({ [offerId] = exposure(2, COOLDOWN_SECONDS) })
		end)

		it("SHOULD hand the store an empty tally when storage has never been written", function()
			mountTracker()

			expect(hydrateMock).toHaveBeenCalledWith({})
		end)

		it("SHOULD drop stored entries that do not match the persisted shape", function()
			-- Storage is readable and writable outside this hook, and an earlier build may
			-- have persisted a different shape under this key.
			local goodOfferId = nextOfferId()
			localStoreValues[STORAGE_KEY] = {
				[goodOfferId] = exposure(1, COOLDOWN_SECONDS),
				["missing-timestamp"] = { exposureCount = 1 },
				["count-not-a-number"] = { exposureCount = "3", lastExposureUTCTime = isoSecondsAgo(1) },
				["not-a-table"] = 7,
			}

			mountTracker()

			expect(hydrateMock).toHaveBeenCalledWith({ [goodOfferId] = exposure(1, COOLDOWN_SECONDS) })
		end)
	end)

	describe("recording exposures", function()
		it("SHOULD record a first exposure for an offer that has never notified", function()
			local offerId = nextOfferId()
			mountTracker()

			commitOffers({ ROBLOX_SHOP = { availableOffer(offerId) } })

			local tally = storedTally()
			expect(tally).never.toBeNil()
			expect(tally[offerId].exposureCount).toBe(1)
			expect(DateTime.fromIsoDate(tally[offerId].lastExposureUTCTime)).never.toBeNil()
		end)

		it("SHOULD increment the count an offer already carries in storage", function()
			local offerId = nextOfferId()
			localStoreValues[STORAGE_KEY] = { [offerId] = exposure(1, COOLDOWN_SECONDS + 60) }
			mountTracker()

			commitOffers({ ROBLOX_SHOP = { availableOffer(offerId) } })

			expect(storedTally()[offerId].exposureCount).toBe(2)
		end)

		it("SHOULD restamp the exposure time so the next session's cooldown runs from now", function()
			local offerId = nextOfferId()
			local staleTime = isoSecondsAgo(COOLDOWN_SECONDS + 60)
			localStoreValues[STORAGE_KEY] = { [offerId] = exposure(1, COOLDOWN_SECONDS + 60) }
			mountTracker()

			commitOffers({ ROBLOX_SHOP = { availableOffer(offerId) } })

			expect(storedTally()[offerId].lastExposureUTCTime).never.toBe(staleTime)
		end)

		it("SHOULD tally an offer committed before it mounted", function()
			-- The reactive effect body runs once on creation, which is what covers offers
			-- that landed before the host component mounted.
			local offerId = nextOfferId()
			setOffers({ ROBLOX_SHOP = { availableOffer(offerId) } })

			mountTracker()

			expect(storedTally()[offerId].exposureCount).toBe(1)
		end)

		it("SHOULD tally an offer that arrives in a later fetch", function()
			local firstOfferId = nextOfferId()
			local laterOfferId = nextOfferId()
			mountTracker()
			commitOffers({ ROBLOX_SHOP = { availableOffer(firstOfferId) } })

			commitOffers({ ROBLOX_SHOP = { availableOffer(firstOfferId), availableOffer(laterOfferId) } })

			expect(storedTally()[laterOfferId].exposureCount).toBe(1)
		end)

		it("SHOULD count an offer once even when it is filed under several featureKeys", function()
			local offerId = nextOfferId()
			local offer = availableOffer(offerId, { "ROBLOX_SHOP", "MARKETPLACE_CART" })
			mountTracker()

			commitOffers({ ROBLOX_SHOP = { offer }, MARKETPLACE_CART = { offer } })

			expect(storedTally()[offerId].exposureCount).toBe(1)
		end)

		it("SHOULD count an offer once per session even when the same offers are refetched", function()
			local offerId = nextOfferId()
			mountTracker()
			commitOffers({ ROBLOX_SHOP = { availableOffer(offerId) } })

			-- A refetch re-commits the same offer; the session set is what collapses those
			-- into the single exposure the player actually got.
			commitOffers({ ROBLOX_SHOP = { availableOffer(offerId) } })

			expect(storedTally()[offerId].exposureCount).toBe(1)
		end)

		it("SHOULD NOT write anything when no offers have committed", function()
			mountTracker()

			expect(localStoreWriteMock).never.toHaveBeenCalled()
		end)
	end)

	describe("eligibility gate", function()
		it("SHOULD NOT tally an offer that has spent its exposure budget", function()
			-- Without this gate an offer would burn a notification every session it was
			-- fetched, reaching the cap without the player ever being shown it.
			local offerId = nextOfferId()
			localStoreValues[STORAGE_KEY] = {
				[offerId] = exposure(MAX_EXPOSURE_COUNT, COOLDOWN_SECONDS + 60),
			}
			mountTracker()

			commitOffers({ ROBLOX_SHOP = { availableOffer(offerId) } })

			expect(localStoreWriteMock).never.toHaveBeenCalled()
		end)

		it("SHOULD NOT tally an offer that is still within its cooldown", function()
			local offerId = nextOfferId()
			localStoreValues[STORAGE_KEY] = { [offerId] = exposure(1, 1) }
			mountTracker()

			commitOffers({ ROBLOX_SHOP = { availableOffer(offerId) } })

			expect(localStoreWriteMock).never.toHaveBeenCalled()
		end)

		it("SHOULD NOT tally an offer that is not AVAILABLE", function()
			local offerId = nextOfferId()
			mountTracker()

			commitOffers({
				ROBLOX_SHOP = { { offerId = offerId, offerStatus = "USED", featureKeys = { "ROBLOX_SHOP" } } },
			})

			expect(localStoreWriteMock).never.toHaveBeenCalled()
		end)

		it("SHOULD tally only the eligible offers in a commit", function()
			local spentOfferId = nextOfferId()
			local freshOfferId = nextOfferId()
			localStoreValues[STORAGE_KEY] = {
				[spentOfferId] = exposure(MAX_EXPOSURE_COUNT, COOLDOWN_SECONDS + 60),
			}
			mountTracker()

			commitOffers({ ROBLOX_SHOP = { availableOffer(spentOfferId), availableOffer(freshOfferId) } })

			local tally = storedTally()
			expect(tally[freshOfferId].exposureCount).toBe(1)
			expect(tally[spentOfferId].exposureCount).toBe(MAX_EXPOSURE_COUNT)
		end)

		it("SHOULD tally an offer whose cooldown elapses while the session is running", function()
			-- Screening does not mark an offer as visited, so an offer held back earlier in
			-- the session is reconsidered when the offers set changes.
			local offerId = nextOfferId()
			localStoreValues[STORAGE_KEY] = { [offerId] = exposure(1, 1) }
			mountTracker()
			commitOffers({ ROBLOX_SHOP = { availableOffer(offerId) } })
			expect(localStoreWriteMock).never.toHaveBeenCalled()

			-- The offer's cooldown is now behind it, as a long session would see.
			localStoreValues[STORAGE_KEY] = { [offerId] = exposure(1, COOLDOWN_SECONDS + 60) }
			setExposureSnapshot({ [offerId] = exposure(1, COOLDOWN_SECONDS + 60) })
			commitOffers({ ROBLOX_SHOP = { availableOffer(offerId), availableOffer(nextOfferId()) } })

			expect(storedTally()[offerId].exposureCount).toBe(2)
		end)

		it("SHOULD NOT tally anything before the store has an exposure snapshot", function()
			-- With no snapshot there is no basis to judge eligibility, so recording an
			-- exposure would ignore both limits.
			local offerId = nextOfferId()
			local realHydrate = fakeOffersStore.hydrateOfferExposureSnapshot
			fakeOffersStore.hydrateOfferExposureSnapshot = function(tally: any)
				hydrateMock(tally)
			end

			mountTracker()
			commitOffers({ ROBLOX_SHOP = { availableOffer(offerId) } })

			fakeOffersStore.hydrateOfferExposureSnapshot = realHydrate

			expect(hydrateMock).toHaveBeenCalledTimes(1)
			expect(localStoreWriteMock).never.toHaveBeenCalled()
		end)
	end)

	if not FFlagOfferNotifyOnGlobalIcon then
		describe("shop availability", function()
			it("SHOULD NOT tally while the shop is unavailable", function()
				-- Nothing notifies the player while the shop can't be opened, so charging the
				-- offer for an exposure would spend a notification that never happened.
				local offerId = nextOfferId()
				mountTracker()
				setShopAvailable(false)

				commitOffers({ ROBLOX_SHOP = { availableOffer(offerId) } })

				expect(localStoreWriteMock).never.toHaveBeenCalled()
			end)

			it("SHOULD tally offers committed while unavailable once the shop turns available", function()
				-- The shop entry starts unavailable and only turns available once its join-time
				-- prefetch resolves, which can land after offers have committed. Those offers
				-- notify from that moment, so they have to be counted from it too.
				local offerId = nextOfferId()
				mountTracker()
				setShopAvailable(false)
				commitOffers({ ROBLOX_SHOP = { availableOffer(offerId) } })

				setShopAvailable(true)

				expect(storedTally()[offerId].exposureCount).toBe(1)
			end)

			it("SHOULD still hydrate the store while the shop is unavailable", function()
				-- The snapshot is this session's baseline. Skipping it would leave the store
				-- unable to judge any offer if the shop turns available later.
				local offerId = nextOfferId()
				localStoreValues[STORAGE_KEY] = { [offerId] = exposure(1, COOLDOWN_SECONDS + 60) }
				setIsShopAvailable(false)

				mountTracker()

				expect(hydrateMock).toHaveBeenCalledTimes(1)
				expect(localStoreWriteMock).never.toHaveBeenCalled()
			end)

			it("SHOULD NOT re-tally an offer when the shop flips available a second time", function()
				-- Availability can flip repeatedly (a developer toggling CoreGui); the session
				-- set has to keep each offer to one exposure across all of it.
				local offerId = nextOfferId()
				mountTracker()
				commitOffers({ ROBLOX_SHOP = { availableOffer(offerId) } })
				expect(storedTally()[offerId].exposureCount).toBe(1)

				setShopAvailable(false)
				setShopAvailable(true)

				expect(storedTally()[offerId].exposureCount).toBe(1)
				expect(localStoreWriteMock).toHaveBeenCalledTimes(1)
			end)
		end)
	end

	if FFlagOfferNotifyOnGlobalIcon then
		describe("notification location", function()
			it("SHOULD NOT tally while no notification is showing", function()
				-- Nothing is on screen at location None, so charging the offer would spend
				-- a notification that never happened.
				local offerId = nextOfferId()
				mountTracker()
				setNotificationLocation(NotificationLocation.None)

				commitOffers({ ROBLOX_SHOP = { availableOffer(offerId) } })

				expect(localStoreWriteMock).never.toHaveBeenCalled()
			end)

			it("SHOULD tally offers committed while hidden once a notification location is set", function()
				-- Join-time prefetch can land after offers commit. Those offers notify from
				-- that moment, so they have to be counted from it too.
				local offerId = nextOfferId()
				mountTracker()
				setNotificationLocation(NotificationLocation.None)
				commitOffers({ ROBLOX_SHOP = { availableOffer(offerId) } })

				setNotificationLocation(NotificationLocation.Hamburger)

				expect(storedTally()[offerId].exposureCount).toBe(1)
			end)

			it("SHOULD tally when the notification is on the global icon", function()
				-- The chrome shop can be unavailable while the TopBar dot still shows; that
				-- exposure must count or the same offer notifies every session.
				local offerId = nextOfferId()
				mountTracker()
				setNotificationLocation(NotificationLocation.GlobalIcon)

				commitOffers({ ROBLOX_SHOP = { availableOffer(offerId) } })

				expect(storedTally()[offerId].exposureCount).toBe(1)
			end)

			it("SHOULD still hydrate the store while no notification is showing", function()
				-- The snapshot is this session's baseline. Skipping it would leave the store
				-- unable to judge any offer if a location is set later.
				local offerId = nextOfferId()
				localStoreValues[STORAGE_KEY] = { [offerId] = exposure(1, COOLDOWN_SECONDS + 60) }
				setOfferNotificationShownWithEnum(NotificationLocation.None)

				mountTracker()

				expect(hydrateMock).toHaveBeenCalledTimes(1)
				expect(localStoreWriteMock).never.toHaveBeenCalled()
			end)

			it("SHOULD NOT re-tally an offer when the location flips away and back", function()
				-- Location can flip repeatedly (CoreGui toggles, shop open/close); the session
				-- set has to keep each offer to one exposure across all of it.
				local offerId = nextOfferId()
				mountTracker()
				commitOffers({ ROBLOX_SHOP = { availableOffer(offerId) } })
				expect(storedTally()[offerId].exposureCount).toBe(1)

				setNotificationLocation(NotificationLocation.None)
				setNotificationLocation(NotificationLocation.Hamburger)

				expect(storedTally()[offerId].exposureCount).toBe(1)
				expect(localStoreWriteMock).toHaveBeenCalledTimes(1)
			end)
		end)
	end

	describe("storage cap", function()
		it("SHOULD evict the least recently seen offer once the tally outgrows the cap", function()
			-- LocalStore is one JSON document shared by the whole in-game menu, so the
			-- tally can't be allowed to grow for the lifetime of the install.
			local seeded = {}
			local oldestOfferId
			for index = 1, MAX_STORED_OFFERS do
				local offerId = nextOfferId()
				if index == 1 then
					oldestOfferId = offerId
				end
				-- Oldest first: index 1 is the furthest in the past, so it is the entry the
				-- cap should give up.
				seeded[offerId] = exposure(1, COOLDOWN_SECONDS * (MAX_STORED_OFFERS - index + 2))
			end
			localStoreValues[STORAGE_KEY] = seeded
			local arrivingOfferId = nextOfferId()
			mountTracker()

			commitOffers({ ROBLOX_SHOP = { availableOffer(arrivingOfferId) } })

			local tally = storedTally()
			local storedCount = 0
			for _ in tally do
				storedCount += 1
			end
			expect(storedCount).toBe(MAX_STORED_OFFERS)
			expect(tally[arrivingOfferId]).never.toBeNil()
			expect(tally[oldestOfferId]).toBeNil()
		end)
	end)
end)
