local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local MarketplaceService = game:GetService("MarketplaceService")
local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")

local React = require(CorePackages.Packages.React)
local Signals = require(CorePackages.Packages.Signals)
local ChromeService = require(Chrome.Service)
local ChromePackage = require(CorePackages.Workspace.Packages.Chrome)
local WindowSizeSignal = require(Chrome.ChromeShared.Service.WindowSizeSignal)
local Constants = require(Chrome.ChromeShared.Unibar.Constants)
local CommonIcon = require(Chrome.Integrations.CommonIcon)
local initializeShopMenuController = require(Chrome.Integrations.InExperienceShop.initializeShopMenuController)
local ShopChromeWrapper = require(Chrome.Integrations.InExperienceShop.ShopChromeWrapper)
local ShopWindowLayout = require(Chrome.Integrations.InExperienceShop.ShopWindowLayout)
local ChromeUtils = require(Chrome.ChromeShared.Service.ChromeUtils)
local MappedSignal = ChromeUtils.MappedSignal
local SideSheetPlacement = ChromePackage.Enums.SideSheetPlacement

local Shop = require(CorePackages.Workspace.Packages.InExperienceShop)
local FFlagEnableFreeTrialBlueDot = Shop.FFlagEnableFreeTrialBlueDot
local FFlagEnableShopPrefetch = Shop.FFlagEnableShopPrefetch
local FFlagHideShopMenuOnFailure = Shop.FFlagHideShopMenuOnFailure
local FFlagCenterInExperienceShopWindow = Shop.FFlagCenterInExperienceShopWindow
local FFlagFixInExperienceShopCursorLock = Shop.FFlagFixInExperienceShopCursorLock
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagEnableMenuTrailingBadge = SharedFlags.FFlagEnableMenuTrailingBadge
local FFlagShowOfferBadge = SharedFlags.FFlagShowOfferBadge
local FFlagExperienceShopNewIconography = Shop.FFlagExperienceShopNewIconography
local FFlagEnableAnyFreeTrialToolTip =
	require(CorePackages.Workspace.Packages.InExperienceShop.FFlagEnableAnyFreeTrialToolTip)
local FFlagEnableFreeTrialShopMenuBadge = Shop.FFlagEnableFreeTrialShopMenuBadge
local FFlagMenuBadgePreferFreeTrialOverOffer = Shop.FFlagMenuBadgePreferFreeTrialOverOffer

local ShopCoreGuiToggleSupported = game:GetEngineFeature("ShopCoreGuiToggleSupported")
local EnableOpenShopSignal = game:GetEngineFeature("EnableOpenShopSignal")

local isActive = MappedSignal.new(ChromeService:onIntegrationStatusChanged(), function()
	return ChromeService:isWindowOpen(Constants.IN_EXPERIENCE_SHOP_ID)
end)

local MAX_WINDOW_WIDTH = ShopWindowLayout.MAX_WINDOW_WIDTH
local MAX_WINDOW_HEIGHT = ShopWindowLayout.MAX_WINDOW_HEIGHT

local windowSize = WindowSizeSignal.new(MAX_WINDOW_WIDTH, MAX_WINDOW_HEIGHT, false, true)

-- AppStorage key for the "New" badge dismissal; persists across sessions so the
-- badge stops showing once the user has opened the Shop entry. Flag-overridable
-- (like the FTUX tooltip's storage key) so it can be reset to re-show the badge.
local FStringInExperienceShopNewBadgeStorageKey =
	game:DefineFastString("InExperienceShopNewBadgeStorageKey", "InExperienceShopNewBadgeStorageKey")
-- Max menu opens to show the In-Experience Shop "New" badge before auto-hiding.
-- `0` means the badge is never shown.
local FIntNewBadgeDismissalMaxCountInExperienceShop = game:DefineFastInt("NewBadgeDismissalMaxCountInExperienceShop", 5)
local FFlagEnableNewBadgeInExperienceShop = game:DefineFastFlag("EnableNewBadgeInExperienceShop", false)
local showNewBadge = FFlagEnableNewBadgeInExperienceShop and FFlagEnableMenuTrailingBadge

local offerBadgeText: Signals.getter<string?>? = nil
local offerBadgeTextFromOffers: Signals.getter<string?>? = nil
local dismissFreeTrialMenuBadge: (() -> ())? = nil
if FFlagShowOfferBadge then
	local InExperienceOffers = require(CorePackages.Workspace.Packages.InExperienceOffers)
	offerBadgeTextFromOffers =
		InExperienceOffers.Utils.createOfferBadgeTextSignal(InExperienceOffers.FeatureKeys.RobloxShop)
	offerBadgeText = offerBadgeTextFromOffers
end

-- TODO(DMP-4422): Move offers badge to use notifications-orchestrator.
if FFlagEnableFreeTrialShopMenuBadge then
	local freeTrialMenuBadge = require(CorePackages.Workspace.Packages.InExperienceShop.submitFreeTrialMenuBadge)
	local trialBadgeText = freeTrialMenuBadge()
	local offersText = offerBadgeTextFromOffers
	if FFlagMenuBadgePreferFreeTrialOverOffer and offersText ~= nil then
		offerBadgeText = function(scope): string?
			local trialText = trialBadgeText(scope)
			if trialText ~= nil then
				return trialText
			end
			return offersText(scope)
		end
	elseif offersText ~= nil then
		offerBadgeText = function(scope): string?
			local offerText = offersText(scope)
			if offerText ~= nil then
				return offerText
			end
			return trialBadgeText(scope)
		end
	else
		offerBadgeText = trialBadgeText
	end
	dismissFreeTrialMenuBadge = freeTrialMenuBadge.dismiss

	local reportedThisOpen = false
	local function reportTrialBadgeSeen()
		if reportedThisOpen or trialBadgeText(false) == nil then
			return
		end
		-- An offer owns the row unless the trial-preference flag is on. Counting a trial
		-- impression here would record a badge the user did not see.
		if not FFlagMenuBadgePreferFreeTrialOverOffer then
			local offers = offersText
			if offers ~= nil and offers(false) ~= nil then
				return
			end
		end
		if not ChromeService:withinCurrentSubmenu(Constants.IN_EXPERIENCE_SHOP_ID) then
			return
		end
		reportedThisOpen = true
		freeTrialMenuBadge.reportMounted()
		freeTrialMenuBadge.reportViewed()
	end

	ChromeService:currentSubMenu():connect(function()
		if not ChromeService:withinCurrentSubmenu(Constants.IN_EXPERIENCE_SHOP_ID) then
			reportedThisOpen = false
			return
		end
		reportTrialBadgeSeen()
	end)

	-- Held so the text subscription survives weak observer sets.
	local _disposeTrialBadgeSeen = Signals.createEffect(function(scope)
		trialBadgeText(scope)
		if not FFlagMenuBadgePreferFreeTrialOverOffer then
			local offers = offersText
			if offers ~= nil then
				offers(scope)
			end
		end
		reportTrialBadgeSeen()
	end)
end

local menuTrailingBadgeConfig: ChromePackage.MenuTrailingBadge? = if showNewBadge or offerBadgeText ~= nil
	then {
		localStorageKey = FStringInExperienceShopNewBadgeStorageKey,
		maxViewCount = if showNewBadge then FIntNewBadgeDismissalMaxCountInExperienceShop else 0,
		customText = offerBadgeText,
	}
	else nil

-- Tracks CoreGui availability for the In-Experience Shop (set via StarterGui:SetCoreGuiEnabled).
-- If the engine feature ShopCoreGuiToggleSupported is not enabled the Shop entry is unavailable
-- because we cannot honor developer toggles via StarterGui:SetCoreGuiEnabled.
-- If ShopCoreGuiToggleSupported is enabled then Devs can toggle the menu off via
-- StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.ExperienceShop, false).
-- Note if CoreGuiType.All is true and ExperienceShop false is not allowed in the engine.
local coreGuiShopAvailable = if ShopCoreGuiToggleSupported
	then StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.All) or StarterGui:GetCoreGuiEnabled(
		Enum.CoreGuiType.ExperienceShop
	)
	else false

-- Latch for the `FFlagHideShopMenuOnFailure` path. Starts `true` so flag-off
-- implies shop menu entry is visible by default.
local shouldShowShop = true

local function getInitialAvailability()
	if not coreGuiShopAvailable or FFlagHideShopMenuOnFailure then
		shouldShowShop = false
		return ChromeService.AvailabilitySignal.Unavailable
	end
	return ChromeService.AvailabilitySignal.Available
end

local function toggleShopWindow()
	if FFlagCenterInExperienceShopWindow then
		ShopWindowLayout.toggleInExperienceShopWindow()
	else
		ChromeService:toggleWindow(Constants.IN_EXPERIENCE_SHOP_ID)
	end
end

local function dismissTrialBadgeIfShopIsClosed()
	if dismissFreeTrialMenuBadge ~= nil and not ChromeService:isWindowOpen(Constants.IN_EXPERIENCE_SHOP_ID) then
		dismissFreeTrialMenuBadge()
	end
end

local integration = ChromeService:register({
	initialAvailability = getInitialAvailability(),
	id = Constants.IN_EXPERIENCE_SHOP_ID,
	sideSheetPlacement = SideSheetPlacement.AboveFold,
	-- TODO: Create a shop specific localization key (DMP-2402)
	label = "Feature.Avatar.Action.Shop",
	cachePosition = true,
	draggable = true,
	windowSize = windowSize,
	startingWindowPosition = ShopWindowLayout.getStartingWindowPosition(),
	activated = function(_self)
		dismissTrialBadgeIfShopIsClosed()
		toggleShopWindow()
	end,
	menuTrailingBadgeConfig = menuTrailingBadgeConfig,
	isActivated = isActive,
	components = {
		Icon = function()
			return CommonIcon(
				if FFlagExperienceShopNewIconography then "ShoppingBasket" else "BuildingStore",
				nil,
				isActive
			)
		end,
		Window = function()
			return React.createElement(ShopChromeWrapper, {
				windowSize = windowSize,
				maxWindowWidth = MAX_WINDOW_WIDTH,
				maxWindowHeight = MAX_WINDOW_HEIGHT,
			})
		end,
	},
})

if FFlagFixInExperienceShopCursorLock then
	initializeShopMenuController(GuiService, isActive)
end

-- Kick off the initial shop fetch at game-load time. Lazy-required via the
-- package's per-symbol rotriever export so the helper's require tree stays
-- cold at flag-off. Wrapped in `task.spawn` as a structural guard so a
-- future yielding regression inside the helper can't stall Unibar creation.
if FFlagEnableShopPrefetch then
	local prefetchShopDataOnGameJoin =
		require(CorePackages.Workspace.Packages.InExperienceShop.prefetchShopDataOnGameJoin)
	if FFlagHideShopMenuOnFailure then
		task.spawn(prefetchShopDataOnGameJoin, function(hasItems: boolean)
			if not hasItems then
				return
			end
			-- Flip the latch to true so the shop menu is displayed to the user.
			shouldShowShop = true
			if coreGuiShopAvailable then
				integration.availability:available()
			end
		end)
	else
		task.spawn(prefetchShopDataOnGameJoin)
	end
end

-- Trial tooltip. The shop watcher picks the global shop icon when that icon
-- is on screen, and the hamburger otherwise, then submits that slot once.
-- The hamburger hosts the tooltip and re-anchors it onto the shop icon.
if FFlagEnableAnyFreeTrialToolTip then
	local submitFreeTrialTooltips = require(CorePackages.Workspace.Packages.InExperienceShop.submitFreeTrialTooltips)
	submitFreeTrialTooltips()
end

if FFlagEnableFreeTrialBlueDot then
	local submitFreeTrialBlueDot = require(CorePackages.Workspace.Packages.InExperienceShop.submitFreeTrialBlueDot)
	submitFreeTrialBlueDot()
end

-- TODO(DMP-2518): Drop the intersection cast once the Luau type checker's API dump picks
-- up `MarketplaceService.OpenShopRequested`. Using an intersection (instead of `:: any`)
-- keeps the rest of the service typed.
--
-- Any new shop-window entrypoint added here MUST also gate
-- on `shouldShowShop` so the `FFlagHideShopMenuOnFailure` hide is honored
-- on every path that can open the window, not just the unibar entry.
if EnableOpenShopSignal then
	(MarketplaceService :: MarketplaceService & { OpenShopRequested: RBXScriptSignal }).OpenShopRequested:Connect(
		function(player)
			if player == Players.LocalPlayer then
				if FFlagHideShopMenuOnFailure and not shouldShowShop then
					return
				end
				if not ChromeService:isWindowOpen(Constants.IN_EXPERIENCE_SHOP_ID) then
					dismissTrialBadgeIfShopIsClosed()
					toggleShopWindow()
				end
			end
		end
	)
end

if ShopCoreGuiToggleSupported then
	-- Under `FFlagHideShopMenuOnFailure`, a mid-session CoreGui enable
	-- shows the entry iff the prefetch already succeeded (latch released).
	-- A failed or empty prefetch keeps the entry hidden until rejoin, even
	-- if the developer re-enables CoreGui later.
	local function updateShopAvailability()
		if coreGuiShopAvailable and (not FFlagHideShopMenuOnFailure or shouldShowShop) then
			integration.availability:available()
		else
			if ChromeService:isWindowOpen(Constants.IN_EXPERIENCE_SHOP_ID) then
				ChromeService:toggleWindow(Constants.IN_EXPERIENCE_SHOP_ID)
			end
			integration.availability:unavailable()
		end
	end

	-- Listen for CoreGui changes to the In-Experience Shop
	ChromeUtils.setCoreGuiAvailability(integration, Enum.CoreGuiType.ExperienceShop, function(available)
		coreGuiShopAvailable = available
		updateShopAvailability()
	end)
end

return integration
