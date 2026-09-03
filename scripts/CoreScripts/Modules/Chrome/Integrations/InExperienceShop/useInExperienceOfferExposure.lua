--[[
	Tracks how often each offer has notified the player and keeps that tally on the
	device.
]]
local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local Signals = require(CorePackages.Packages.Signals)

local Offers = require(CorePackages.Workspace.Packages.InExperienceOffers)
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)

local LocalStore = require(Chrome.ChromeShared.Service.LocalStore)

local FFlagOfferNotifyOnGlobalIcon = SharedFlags.FFlagOfferNotifyOnGlobalIcon

local getOffersStore = Offers.getOffersStore
local isNotificationEligible = Offers.Utils.isNotificationEligible
local NotificationLocation = Offers.NotificationLocation

type OffersByFeatureKey = Offers.OffersByFeatureKey
type OfferExposureInfoByOfferId = Offers.OfferExposureInfoByOfferId

local FStringOfferExposureStorageKey =
	game:DefineFastString("InExperienceOfferExposureStorageKey", "InExperienceOfferExposure")

-- Prevent the exposure cache from growing too large
local FIntOfferExposureMaxStoredOffers = game:DefineFastInt("InExperienceOfferExposureMaxStoredOffers", 50)

-- Global state to track which offers have been tallied already, so they don't get counted twice
local talliedOfferIds: { [string]: boolean } = {}

-- Load offer exposure data from local storage
local function loadPersistedTally(): OfferExposureInfoByOfferId
	local stored = LocalStore.loadForLocalPlayer(FStringOfferExposureStorageKey)
	local tally: OfferExposureInfoByOfferId = {}
	if type(stored) ~= "table" then
		return tally
	end

	for offerId, info in stored do
		if
			type(offerId) == "string"
			and type(info) == "table"
			and type(info.exposureCount) == "number"
			and type(info.lastExposureUTCTime) == "string"
		then
			tally[offerId] = {
				exposureCount = info.exposureCount,
				lastExposureUTCTime = info.lastExposureUTCTime,
			}
		end
	end

	return tally
end

-- Drops the least recently seen offers once the tally outgrows the cap.
local function withOldestEvicted(tally: OfferExposureInfoByOfferId): OfferExposureInfoByOfferId
	local offerIds = {}
	for offerId in tally do
		table.insert(offerIds, offerId)
	end
	if #offerIds <= FIntOfferExposureMaxStoredOffers then
		return tally
	end

	table.sort(offerIds, function(left, right)
		return tally[left].lastExposureUTCTime > tally[right].lastExposureUTCTime
	end)

	local evicted: OfferExposureInfoByOfferId = {}
	for index = 1, FIntOfferExposureMaxStoredOffers do
		local offerId = offerIds[index]
		evicted[offerId] = tally[offerId]
	end
	return evicted
end

-- Tally new offer exposures in the device storage. offersByFeatureKey is the list of newly seen offers.
-- exposureSnapshot is the exposure info recorded when the session started, used to check if an offer was eligible to notify (don't count it otherwise)
local function tallyExposures(offersByFeatureKey: OffersByFeatureKey?, exposureSnapshot: OfferExposureInfoByOfferId?)
	if offersByFeatureKey == nil or exposureSnapshot == nil then
		return
	end

	-- An offer is bucketed under every featureKey it applies to, so the same offer can
	-- show up more than once here; the session set collapses those to one exposure.
	local newlyNotified = {}
	for _, offers in offersByFeatureKey do
		for _, offer in offers do
			if not talliedOfferIds[offer.offerId] and isNotificationEligible(offer, exposureSnapshot) then
				talliedOfferIds[offer.offerId] = true
				table.insert(newlyNotified, offer.offerId)
			end
		end
	end
	if #newlyNotified == 0 then
		return
	end

	-- Device storage is the source of truth for the running tally, so re-read it first
	local tally = loadPersistedTally()
	local now = DateTime.now():ToIsoDate()
	for _, offerId in newlyNotified do
		local prior = tally[offerId]
		tally[offerId] = {
			exposureCount = if prior ~= nil then prior.exposureCount + 1 else 1,
			lastExposureUTCTime = now,
		}
	end
	tally = withOldestEvicted(tally)
	LocalStore.storeForLocalPlayer(FStringOfferExposureStorageKey, tally)
end

local function useInExperienceOfferExposure()
	React.useEffect(function()
		local offersStore = getOffersStore(false)

		-- Hand the store the stored counts before the tallying effect runs, so offer
		-- notifications are judged against where this session started rather than a
		-- tally that already includes the exposure we are about to record.
		offersStore.hydrateOfferExposureSnapshot(loadPersistedTally())

		-- Listen for new offers and tally exposures
		return Signals.createEffect(function(scope)
			if FFlagOfferNotifyOnGlobalIcon then
				-- Charge the same judgement the UI uses: only tally when a notification is
				-- actually shown. The global icon can carry the dot while the chrome shop
				-- is unavailable, so availability alone would skip a real exposure. Read
				-- reactively so a later location change re-runs this.
				if offersStore.getOfferNotificationShownWithEnum(scope) == NotificationLocation.None then
					return
				end
			else
				-- No notification surfaces while the shop can't be opened, so nothing has
				-- been shown to the player and nothing should be charged against an offer's
				-- budget. Read reactively: if the shop turns available later in the session,
				-- this re-runs and tallies whatever is committed by then.
				if not offersStore.getIsShopAvailable(scope) then
					return
				end
			end
			tallyExposures(offersStore.getOffers(scope), offersStore.getOfferExposureSnapshot(scope))
		end)
	end, {})
end

return useInExperienceOfferExposure
