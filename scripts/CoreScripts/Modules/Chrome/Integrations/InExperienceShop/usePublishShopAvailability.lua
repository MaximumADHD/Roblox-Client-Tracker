--[[
	Mirrors the in-experience shop entry's Chrome availability into the offers store, so
	offer notifications can be judged against whether the shop can be opened at all.

	The store can't answer that itself: it lives in a module package with no access to
	ChromeService, and the entry's availability signal already folds in the developer's
	CoreGui setting, a failed prefetch, and an experience with nothing to sell -- so
	mirroring it beats re-deriving any one of those.

	This hook renders nothing; mount it once per session from a component that lives as
	long as the unibar, and mount it ahead of `useInExperienceOfferExposure` so the store
	knows whether the shop is open before that hook starts recording exposures.
]]

local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)

local Offers = require(CorePackages.Workspace.Packages.InExperienceOffers)
local useMappedSignal = require(CorePackages.Workspace.Packages.Chrome).Hooks.useMappedSignal

local ChromeService = require(Chrome.Service)
local Constants = require(Chrome.ChromeShared.Unibar.Constants)

local getOffersStore = Offers.getOffersStore

local function usePublishShopAvailability()
	local shop = ChromeService:integrations()[Constants.IN_EXPERIENCE_SHOP_ID]
	local shopAvailability = useMappedSignal((if shop then shop.availability else nil) :: any)
	-- The shop is never pinned, so `Available` is the only state it can be opened from.
	local isShopAvailable = shopAvailability == ChromeService.AvailabilitySignal.Available

	React.useEffect(function()
		getOffersStore(false).setIsShopAvailable(isShopAvailable)
	end, { isShopAvailable } :: { unknown })
end

return usePublishShopAvailability
