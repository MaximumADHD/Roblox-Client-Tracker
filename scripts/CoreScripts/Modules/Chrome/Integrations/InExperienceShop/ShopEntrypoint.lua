local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")
local MarketplaceService = game:GetService("MarketplaceService")
local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")

local React = require(CorePackages.Packages.React)
local ChromeService = require(Chrome.Service)
local WindowSizeSignal = require(Chrome.ChromeShared.Service.WindowSizeSignal)
local Constants = require(Chrome.ChromeShared.Unibar.Constants)
local CommonIcon = require(Chrome.Integrations.CommonIcon)
local ShopChromeWrapper = require(Chrome.Integrations.InExperienceShop.ShopChromeWrapper)
local ShopIcon = require(Chrome.Integrations.InExperienceShop.ShopIcon)
local ChromeUtils = require(Chrome.ChromeShared.Service.ChromeUtils)
local MappedSignal = ChromeUtils.MappedSignal

local Shop = require(CorePackages.Workspace.Packages.InExperienceShop)
local FFlagEnableShopPrefetch = Shop.FFlagEnableShopPrefetch
local FFlagHideShopMenuOnFailure = Shop.FFlagHideShopMenuOnFailure
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagAddIGMToSideSheet = SharedFlags.FFlagAddIGMToSideSheet
local FFlagChromeActivatedMappedSignal = SharedFlags.FFlagChromeActivatedMappedSignal

local ShopCoreGuiToggleSupported = game:GetEngineFeature("ShopCoreGuiToggleSupported")
local EnableOpenShopSignal = game:GetEngineFeature("EnableOpenShopSignal")

local isActive = MappedSignal.new(ChromeService:onIntegrationStatusChanged(), function()
	return ChromeService:isWindowOpen(Constants.IN_EXPERIENCE_SHOP_ID)
end)

local MAX_WINDOW_WIDTH = 844
local MAX_WINDOW_HEIGHT = 754

local windowSize = WindowSizeSignal.new(MAX_WINDOW_WIDTH, MAX_WINDOW_HEIGHT, false, true)

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

local integration = ChromeService:register({
	initialAvailability = getInitialAvailability(),
	id = Constants.IN_EXPERIENCE_SHOP_ID,
	-- TODO: Create a shop specific localization key (DMP-2402)
	label = "Feature.Avatar.Action.Shop",
	cachePosition = true,
	draggable = true,
	windowSize = windowSize,
	activated = function(_self)
		ChromeService:toggleWindow(Constants.IN_EXPERIENCE_SHOP_ID)
	end,
	isActivated = if FFlagChromeActivatedMappedSignal
		then isActive
		else function()
			return isActive:get()
		end,
	components = {
		-- TODO(DMP-2519): Drop the bespoke ShopIcon fallback once FFlagAddIGMToSideSheet is
		-- fully rolled out and only the CommonIcon Foundation path is needed.
		Icon = function()
			if FFlagAddIGMToSideSheet then
				return CommonIcon("BuildingStore", nil, isActive)
			end
			return React.createElement(ShopIcon, {
				isActive = isActive,
			})
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
					ChromeService:toggleWindow(Constants.IN_EXPERIENCE_SHOP_ID)
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
