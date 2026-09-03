--[[
	Mirrors the offers store's notification location onto the nine-dot activity
	indicator, so a player with a hamburger-placed offer sees the dot on the menu icon.
]]
local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local SignalsReact = require(CorePackages.Packages.SignalsReact)

local Offers = require(CorePackages.Workspace.Packages.InExperienceOffers)

local useNineDotActivityIndicator = require(Chrome.ChromeShared.Hooks.useNineDotActivityIndicator)

local getOffersStore = Offers.getOffersStore
local NotificationLocation = Offers.NotificationLocation

-- The dot is a single pixel Chrome shares across every feature requesting it, so offers
-- claim a key of their own rather than borrowing the shop integration's id.
local ACTIVITY_INDICATOR_FEATURE_KEY = "in_experience_offers"

local function useOfferNineDotActivityIndicator()
	-- Subscribes to the store's computed location; it flips as offers commit and as the
	-- exposure snapshot lands, so the dot follows the same judgement the tooltip uses.
	local notificationLocation = SignalsReact.useSignalState(getOffersStore(false).getOfferNotificationShownWithEnum)

	useNineDotActivityIndicator(ACTIVITY_INDICATOR_FEATURE_KEY, notificationLocation == NotificationLocation.Hamburger)
end

return useOfferNineDotActivityIndicator
