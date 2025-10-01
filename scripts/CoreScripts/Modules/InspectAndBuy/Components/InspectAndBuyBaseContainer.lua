--[[
  This is the base container for the Inspect and Buy 2.0 pop-up menu. This container also contains all the
  redux-level dependencies that are passed down as callbacks to the ResponsivePanelLayout component.
]]

local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local CoreGui = game:GetService("CoreGui")
local InspectAndBuyFolder = script.Parent.Parent
local React = require(CorePackages.Packages.React)
local AvatarExperienceInspectAndBuy = require(CorePackages.Workspace.Packages.AvatarExperienceInspectAndBuy)
local useViewBreakpoints = AvatarExperienceInspectAndBuy.Hooks.useViewBreakpoints
local ResponsivePanelLayout = AvatarExperienceInspectAndBuy.Components.ResponsivePanelLayout
local useResponsivePanelLayoutProps = AvatarExperienceInspectAndBuy.Hooks.useResponsivePanelLayoutProps

local UpdateBulkPuchaseResults = require(InspectAndBuyFolder.Actions.UpdateBulkPuchaseResults)
local GetProductInfo = require(InspectAndBuyFolder.Thunks.GetProductInfo)
local GetFavoriteForAsset = require(InspectAndBuyFolder.Thunks.GetFavoriteForAsset)
local getFavoriteForBundle = require(InspectAndBuyFolder.Thunks.GetFavoriteForBundle)
local CreateFavoriteForAsset = require(InspectAndBuyFolder.Thunks.CreateFavoriteForAsset)
local DeleteFavoriteForAsset = require(InspectAndBuyFolder.Thunks.DeleteFavoriteForAsset)
local CreateFavoriteForBundle = require(InspectAndBuyFolder.Thunks.CreateFavoriteForBundle)
local DeleteFavoriteForBundle = require(InspectAndBuyFolder.Thunks.DeleteFavoriteForBundle)
local PromptPurchase = require(InspectAndBuyFolder.Thunks.PromptPurchase)
local useDispatch = require(CorePackages.Workspace.Packages.RoactUtils).Hooks.RoactRodux.useDispatch
local ItemTypeEnum = require(CorePackages.Workspace.Packages.AvatarExperienceCommon).Enums.ItemTypeEnum

local useUnifiedEventListenerInExperience =
	require(CorePackages.Workspace.Packages.AvatarExperienceAnalytics).useUnifiedEventListener.useUnifiedEventListenerInExperience

local Foundation = require(CorePackages.Packages.Foundation)
local useTokens = Foundation.Hooks.useTokens
local Modules = CoreGui.RobloxGui.Modules
local Theme = require(Modules.Settings.Theme)
local TopBarConstants = require(Modules.TopBar.Constants)

type PromptBulkPurchaseFinishedResult = AvatarExperienceInspectAndBuy.PromptBulkPurchaseFinishedResult
type AvatarItem = AvatarExperienceInspectAndBuy.AvatarItem

local function InspectAndBuyBaseContainer(props)
	local viewBreakpoints = useViewBreakpoints(TopBarConstants.TopBarHeight)
	local tokens = useTokens()
	local dispatch = useDispatch()

	--[[
		Close and unmount the inspect and buy menu
	]]
	local onInspectMenuClosed = React.useCallback(function()
		GuiService:CloseInspectMenu()
	end, {})

	--[[
		When a bulk purchase is finished, update the bulk purchase results (owndership status)
	]]
	local onBulkPurchaseFinished = React.useCallback(function(player, status, result: PromptBulkPurchaseFinishedResult)
		dispatch(UpdateBulkPuchaseResults(result))
	end, { dispatch })

	--[[
		when item details is opened, we need to call additional APIs to get more information
		1. Economy Product Info
		2. Favorites status for the selected item
		3. Saved versions for item attribution
		   3a. Experience Playability
		   3b. Experience Info
	]]
	local onItemDetailsOpened = React.useCallback(function(item: AvatarItem)
		-- TODO [ACS-5423]: use the performFetchStatus to check if the data is already fetched as a perf improvement

		--[[
			TODO [ACS-5515]: IEC attribution version info currently only works for assets.
			We need to update the GetVersionInfo thunk to support bundles as well (purchase-details
	        endpoint currently groups IEC body assets into a bundle, breaking the current logic). As a
			workaround, this can be done by invoking the GetVersionInfo thunk on the first asset within
			a bundle—essentially a hack on top of the existing hack due to backend constraints.
		]]

		if item.itemType == ItemTypeEnum.Asset then
			dispatch(GetFavoriteForAsset(item.id))
			dispatch(GetProductInfo(item.id))
		elseif item.itemType == ItemTypeEnum.Bundle then
			dispatch(getFavoriteForBundle(item.id))
		end
	end, { dispatch })

	--[[
		when the favorite button is clicked, call the appropriate API to toggle the favorite status
	]]
	local onToggleFavorite = React.useCallback(function(item: AvatarItem, isFavorited: boolean)
		if item.itemType == ItemTypeEnum.Asset then
			if isFavorited then
				dispatch(DeleteFavoriteForAsset(item.id))
			else
				dispatch(CreateFavoriteForAsset(item.id))
			end
		elseif item.itemType == ItemTypeEnum.Bundle then
			if isFavorited then
				dispatch(DeleteFavoriteForBundle(item.id))
			else
				dispatch(CreateFavoriteForBundle(item.id))
			end
		end
	end, { dispatch })

	--[[
	Prompts a purchase for a single item.

	NOTE: PromptPurchase Thunk enforces stricter parameter types than its implementation needs. 
	Collectible-related parameters are effectively nullable, so this callback keeps everything as generic types. 
	Otherwise, we would need to assign fake "default" values (e.g. 0 or "") just to satisfy 
	the type checker — a hacky workaround that could be misinterpreted as real data and cause bugs.

	Future action item could be to properly type the PromptPurchase Thunk and all consumers.

	Arguments (type breakdown):
	- itemId (string , required) — ID of the item to purchase
	- itemType (string, required) — "Asset" or "Bundle"
	- collectibleItemId (string, optional)
	- collectibleLowestAvailableResaleProductId (string, optional)
	- collectibleLowestAvailableResaleItemInstanceId (string, optional)
	- collectibleLowestResalePrice (number, optional)
	- isLimited20OrLimitedCollectible (boolean, optional) — true if item is Limited, Limited Unique, or Limited 2.0

	Purchase Flow:
	1. If collectibleLowestAvailableResaleProductId exists AND itemType ≠ "Bundle":
	   → MarketplaceService:PromptCollectiblesPurchase (resale of Limited collectibles)

	2. If itemType = "Bundle":
	   → MarketplaceService:PromptBundlePurchase

	3. If itemType = "Asset":
	   a. If collectibleItemId exists AND item is not Limited/Limited 2.0:
	      → MarketplaceService:PromptPurchase (unlimited collectibles)
	   b. Otherwise:
	      → MarketplaceService:PromptRobloxPurchase (non-collectibles or original Limiteds)
]]

	local onPromptPurchase = function(
		itemId: any,
		itemType: any,
		collectibleItemId: any,
		collectibleLowestAvailableResaleProductId: any,
		collectibleLowestAvailableResaleItemInstanceId: any,
		collectibleLowestResalePrice: any,
		isLimited20OrLimitedCollectible: any
	)
		dispatch(
			PromptPurchase(
				itemId,
				itemType,
				collectibleItemId,
				collectibleLowestAvailableResaleProductId,
				collectibleLowestAvailableResaleItemInstanceId,
				collectibleLowestResalePrice,
				isLimited20OrLimitedCollectible
			)
		)
	end

	local responsivePanelLayoutProps = useResponsivePanelLayoutProps({
		onInspectMenuClosed = onInspectMenuClosed,
		onBulkPurchaseFinished = onBulkPurchaseFinished,
		onItemDetailsOpened = onItemDetailsOpened,
		onToggleFavorite = onToggleFavorite,
		onPromptPurchase = onPromptPurchase,
	})

	useUnifiedEventListenerInExperience()

	-- outer overlay container will close the menu when clicked on
	return React.createElement(Foundation.View, {
		Size = viewBreakpoints.OverlaySize,
		Position = viewBreakpoints.OverlayPosition,
		backgroundStyle = {
			-- same theme used by SettingsHub menu
			Color3 = Theme.color("MenuContainer"),
			Transparency = Theme.transparency("MenuContainer", 1),
		},
		stateLayer = {
			affordance = Foundation.Enums.StateLayerAffordance.None,
		},
		onActivated = function()
			GuiService:CloseInspectMenu()
		end,
	}, {
		ContainerView = React.createElement(Foundation.View, {
			AnchorPoint = viewBreakpoints.ContainerAnchorPoint,
			ClipsDescendants = true,
			Size = viewBreakpoints.ContainerSize,
			Position = viewBreakpoints.ContainerPosition,
			backgroundStyle = tokens.Color.Common.Shadow,
			stateLayer = {
				affordance = Foundation.Enums.StateLayerAffordance.None,
			},
			onActivated = function() end, -- stop click events from propagating up to overlay
		}, {
			UICorner = React.createElement("UICorner", {
				CornerRadius = Theme.DefaultCornerRadius,
			}),
			ResponsivePanelLayout = React.createElement(ResponsivePanelLayout, responsivePanelLayoutProps),
		}),
	})
end

return InspectAndBuyBaseContainer
