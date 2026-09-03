--[[
	Tooltip displayed under the unibar alerting the user that they have an offer available.
]]

local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")

local React = require(CorePackages.Packages.React)
local Foundation = require(CorePackages.Packages.Foundation)
local SignalsReact = require(CorePackages.Packages.SignalsReact)

local Offers = require(CorePackages.Workspace.Packages.InExperienceOffers)
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local useMappedSignal = require(CorePackages.Workspace.Packages.Chrome).Hooks.useMappedSignal

local FFlagOfferNotifyOnGlobalIcon = SharedFlags.FFlagOfferNotifyOnGlobalIcon
local InExperienceShop: any = nil
local toggleInExperienceShopWindow: (() -> ())? = nil
if FFlagOfferNotifyOnGlobalIcon then
	InExperienceShop = require(CorePackages.Workspace.Packages.InExperienceShop)
	toggleInExperienceShopWindow =
		require(Chrome.Integrations.InExperienceShop.ShopWindowLayout).toggleInExperienceShopWindow
end

local ChromeService = require(Chrome.Service)
local Constants = require(Chrome.ChromeShared.Unibar.Constants)
local TooltipContext = require(Chrome.ChromeShared.Unibar.Tooltips.TooltipContext)
local useIsTooltipTurn = require(Chrome.ChromeShared.Unibar.Tooltips.useIsTooltipTurn)

local EducationalTooltip = Foundation.EducationalTooltip
local OverlayProvider = Foundation.OverlayProvider
local ButtonVariant = Foundation.Enums.ButtonVariant
local PopoverSide = Foundation.Enums.PopoverSide
local PopoverAlign = Foundation.Enums.PopoverAlign

local FeatureKeys = Offers.FeatureKeys
local getOffersStore = Offers.getOffersStore
local isNotificationEligible = Offers.Utils.isNotificationEligible
local selectActiveOffer = Offers.Utils.selectActiveOffer
local useOffersForKey = Offers.Hooks.useOffersForKey
local useSignalState = SignalsReact.useSignalState

type SelectedOffer = Offers.SelectedOffer

local TOOLTIP_ID = "MENU_OFFER_TOOLTIP"

local FIntMenuOfferTooltipPriority = game:DefineFastInt("MenuOfferTooltipPriority", 1500)
local FIntMenuOfferTooltipShowDelay = game:DefineFastInt("MenuOfferTooltipShowDelayMs", 1500)
local FIntMenuOfferTooltipDismissDelay = game:DefineFastInt("MenuOfferTooltipDismissDelayMs", 7000)

export type Props = {
	anchorRef: React.RefObject<GuiObject?>?, -- Under which element the tooltip should be displayed
	visible: boolean?, -- Whether the menu icon it anchors to is on screen
}

local function MenuOfferTooltipContent(props: Props): React.ReactNode
	local offers = useOffersForKey(FeatureKeys.RobloxShop)

	-- How often the player had seen each offer when the session started. Nil until the Chrome
	-- exposure tracker hydrates it from the device
	local exposureSnapshot = useSignalState(getOffersStore(false).getOfferExposureSnapshot)

	local activeOffer: SelectedOffer? = React.useMemo(function(): SelectedOffer?
		if offers == nil or exposureSnapshot == nil then
			return nil
		end
		local eligibleOffers = {} -- Only consider offers that pass isNotificationEligible
		for _, offer in offers do
			if isNotificationEligible(offer, exposureSnapshot) then
				table.insert(eligibleOffers, offer)
			end
		end
		return selectActiveOffer(eligibleOffers, "tooltip")
	end, { offers, exposureSnapshot } :: { unknown })

	-- The parent component may not immediately attach the ref, so wait for it to be ready
	local isAnchorReady, setIsAnchorReady = React.useState(false)

	React.useEffect(function()
		setIsAnchorReady(props.anchorRef ~= nil and props.anchorRef.current ~= nil)
	end, { props.anchorRef } :: { unknown })

	local isDismissed, setIsDismissed = React.useState(false)

	local dismiss = React.useCallback(function()
		setIsDismissed(true)
	end, {})

	local openShop = React.useCallback(function()
		dismiss()
		local shopId = Constants.IN_EXPERIENCE_SHOP_ID
		if ChromeService:isWindowOpen(shopId) then
			return
		end
		if ChromeService:isIntegrationValid(shopId) then
			ChromeService:activate(shopId)
			return
		end
		-- Global-icon path: the Chrome shop entry can be Unavailable while the
		-- TopBar icon is still a live way in (e.g. HideShopMenuOnFailure).
		if toggleInExperienceShopWindow and getOffersStore(false).getIsInExperienceShopGlobalIconAvailable(false) then
			toggleInExperienceShopWindow()
		end
	end, { dismiss } :: { unknown })

	local content = if activeOffer ~= nil then activeOffer.presentationData.tooltip else nil
	local offerId = if activeOffer ~= nil then activeOffer.offerId else nil

	local tooltipQueue = React.useContext(TooltipContext)
	local isTooltipTurn = useIsTooltipTurn(TOOLTIP_ID) or false

	local queueRef = React.useRef(tooltipQueue)
	React.useEffect(function()
		queueRef.current = tooltipQueue
	end, { tooltipQueue })

	-- Check if the shop integration is available
	local shop = ChromeService:integrations()[Constants.IN_EXPERIENCE_SHOP_ID]
	local shopAvailability = useMappedSignal((if shop then shop.availability else nil) :: any)
	local isShopAvailable = shopAvailability == ChromeService.AvailabilitySignal.Available

	local hasShopOpened = false
	if FFlagOfferNotifyOnGlobalIcon then
		hasShopOpened = useSignalState(getOffersStore(false).getHasInExperienceShopOpened)
	end

	local canShow = content ~= nil and props.visible == true and isShopAvailable and isAnchorReady and not isDismissed
	if FFlagOfferNotifyOnGlobalIcon then
		-- Opening the shop is the acknowledgement; do not keep the tooltip up after.
		-- Dont check for isShopAvailable since it may be disabled and globalicon enabled
		canShow = content ~= nil and props.visible == true and isAnchorReady and not isDismissed and not hasShopOpened
	end

	React.useEffect(function(): (() -> ())?
		local queue = queueRef.current
		if not canShow or queue == nil then
			return nil
		end

		queue.registerTooltip(
			TOOLTIP_ID,
			FIntMenuOfferTooltipPriority,
			FIntMenuOfferTooltipShowDelay,
			FIntMenuOfferTooltipDismissDelay
		)

		return function()
			queue.unregisterTooltip(TOOLTIP_ID)
		end
	end, { canShow, offerId } :: { unknown })

	local isShowing = canShow and isTooltipTurn

	-- Dismiss the tooltip when the unibar is interacted with.
	React.useEffect(function(): (() -> ())?
		if not canShow then
			return nil
		end

		local integrationActivated = ChromeService:onIntegrationActivated():connect(function()
			dismiss()
		end)
		local menuOpened = GuiService.MenuOpened:Connect(function()
			dismiss()
		end)

		return function()
			integrationActivated:disconnect()
			menuOpened:Disconnect()
		end
	end, { canShow, dismiss } :: { unknown })

	if content == nil or not isShowing then
		return nil
	end

	local actions = {
		{
			text = content.buttonText,
			variant = ButtonVariant.Emphasis,
			onActivated = openShop,
		},
	}

	return React.createElement(OverlayProvider, nil, {
		Tooltip = React.createElement(EducationalTooltip, {
			anchorRef = props.anchorRef,
			-- TODO the extra spaces at the end is a hack to prevent title text from overlapping with the X button
			-- Consider following up with Foundation to check if this can be fixed in EducationalTooltip
			title = content.title .. string.rep(" ", 10),
			side = PopoverSide.Bottom,
			align = PopoverAlign.Start,
			isOpen = true,
			actions = actions :: any,
			onClose = dismiss,
			onPressedOutside = dismiss,
			testId = "menu-offer-tooltip",
		}),
	})
end

local function MenuOfferTooltip(props: Props): React.ReactNode
	if FFlagOfferNotifyOnGlobalIcon then
		local isGlobalIconAvailable = useSignalState(getOffersStore(false).getIsInExperienceShopGlobalIconAvailable)

		local shop = ChromeService:integrations()[Constants.IN_EXPERIENCE_SHOP_ID]
		local shopAvailability = useMappedSignal((if shop then shop.availability else nil) :: any)
		local isShopAvailable = shopAvailability == ChromeService.AvailabilitySignal.Available

		local globalIconInstance = useSignalState(function(scope): GuiObject?
			local getStore = InExperienceShop.GetShopGlobalIconStore
			return if getStore then getStore(scope).getIconInstance(scope) else nil
		end)
		local globalIconAnchorRef: React.RefObject<GuiObject?> = React.useRef(globalIconInstance)
		globalIconAnchorRef.current = globalIconInstance

		-- When the TopBar shop icon is on screen the notification belongs there, so
		-- anchor to it instead of the hamburger.
		if isGlobalIconAvailable then
			if globalIconAnchorRef.current ~= nil then
				return React.createElement(MenuOfferTooltipContent, {
					anchorRef = globalIconAnchorRef,
					visible = true,
				})
			end

			-- Without a mounted global icon anchor, do not take a queue slot for a
			-- tooltip that cannot be positioned.
			return nil
		end

		-- On this path MenuOfferTooltipContent skips the shop availability check, since
		-- an available global icon outranks it. The hamburger still needs it, so it is
		-- screened here instead.
		if not isShopAvailable then
			return nil
		end
	end

	return React.createElement(MenuOfferTooltipContent, props)
end

return React.memo(MenuOfferTooltip)
