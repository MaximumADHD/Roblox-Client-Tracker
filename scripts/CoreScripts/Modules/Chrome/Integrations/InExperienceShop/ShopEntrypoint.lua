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

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagAddIGMToSideSheet = SharedFlags.FFlagAddIGMToSideSheet

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

local function getInitialAvailability()
	return if coreGuiShopAvailable
		then ChromeService.AvailabilitySignal.Available
		else ChromeService.AvailabilitySignal.Unavailable
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
	isActivated = function()
		return isActive:get()
	end,
	components = {
		-- TODO(DMP-2519): Drop the bespoke ShopIcon fallback once FFlagAddIGMToSideSheet is
		-- fully rolled out and only the CommonIcon Foundation path is needed.
		Icon = function()
			if FFlagAddIGMToSideSheet then
				return CommonIcon("ShoppingBasket", nil, isActive)
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

-- TODO(DMP-2518): Drop the intersection cast once the Luau type checker's API dump picks
-- up `MarketplaceService.OpenShopRequested`. Using an intersection (instead of `:: any`)
-- keeps the rest of the service typed.
if EnableOpenShopSignal then
	(MarketplaceService :: MarketplaceService & { OpenShopRequested: RBXScriptSignal }).OpenShopRequested:Connect(
		function(player)
			if player == Players.LocalPlayer then
				if not ChromeService:isWindowOpen(Constants.IN_EXPERIENCE_SHOP_ID) then
					ChromeService:toggleWindow(Constants.IN_EXPERIENCE_SHOP_ID)
				end
			end
		end
	)
end

if ShopCoreGuiToggleSupported then
	local function updateShopAvailability()
		if coreGuiShopAvailable then
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
