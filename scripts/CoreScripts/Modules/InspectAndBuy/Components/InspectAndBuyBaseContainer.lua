--[[
  This is the base container for the Inspect and Buy 2.0 pop-up menu. This container also contains all the
  redux-level dependencies that are passed down as callbacks to the ResponsivePanelLayout component.
]]

local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local CoreGui = game:GetService("CoreGui")
local InspectAndBuyFolder = script.Parent.Parent
local React = require(CorePackages.Packages.React)
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local AvatarExperienceFlags = require(CorePackages.Workspace.Packages.AvatarExperienceFlags)
local AvatarViewport = require(InspectAndBuyFolder.Components.AvatarViewport)
local AvatarExperienceInspectAndBuy = require(CorePackages.Workspace.Packages.AvatarExperienceInspectAndBuy)
local useViewBreakpoints = AvatarExperienceInspectAndBuy.Hooks.useViewBreakpoints
local ResponsivePanelLayout = AvatarExperienceInspectAndBuy.Components.ResponsivePanelLayout
local useResponsivePanelLayoutProps = AvatarExperienceInspectAndBuy.Hooks.useResponsivePanelLayoutProps
local applyTryOnItemToHumanoidDescription = AvatarExperienceInspectAndBuy.Utils.applyTryOnItemToHumanoidDescription

local UpdateBulkPuchaseResults = require(InspectAndBuyFolder.Actions.UpdateBulkPuchaseResults)
local GetProductInfo = require(InspectAndBuyFolder.Thunks.GetProductInfo)
local GetFavoriteForAsset = require(InspectAndBuyFolder.Thunks.GetFavoriteForAsset)
local getFavoriteForBundle = require(InspectAndBuyFolder.Thunks.GetFavoriteForBundle)
local CreateFavoriteForAsset = require(InspectAndBuyFolder.Thunks.CreateFavoriteForAsset)
local DeleteFavoriteForAsset = require(InspectAndBuyFolder.Thunks.DeleteFavoriteForAsset)
local CreateFavoriteForBundle = require(InspectAndBuyFolder.Thunks.CreateFavoriteForBundle)
local DeleteFavoriteForBundle = require(InspectAndBuyFolder.Thunks.DeleteFavoriteForBundle)
local PromptPurchase = require(InspectAndBuyFolder.Thunks.PromptPurchase)
local GetItemDetails = require(InspectAndBuyFolder.Thunks.GetItemDetails)
local useDispatch = require(CorePackages.Workspace.Packages.RoactUtils).Hooks.RoactRodux.useDispatch
local ItemTypeEnum = require(CorePackages.Workspace.Packages.AvatarExperienceCommon).Enums.ItemTypeEnum
local OpenOverlay = require(InspectAndBuyFolder.Actions.OpenOverlay)
local OverlayEnum = require(InspectAndBuyFolder.Enums.Overlay)
local Overlay = require(InspectAndBuyFolder.Components.Overlay)

local useUnifiedEventListenerInExperience =
	require(CorePackages.Workspace.Packages.AvatarExperienceAnalytics).useUnifiedEventListener.useUnifiedEventListenerInExperience

local Foundation = require(CorePackages.Packages.Foundation)
local useTokens = Foundation.Hooks.useTokens
local Modules = CoreGui.RobloxGui.Modules
local Theme = require(Modules.Settings.Theme)
local TopBarConstants = require(Modules.TopBar.Constants)

type PromptBulkPurchaseFinishedResult = AvatarExperienceInspectAndBuy.PromptBulkPurchaseFinishedResult
type AvatarItem = AvatarExperienceInspectAndBuy.AvatarItem
type TryOnItem = AvatarExperienceInspectAndBuy.TryOnItem
type LocalPlayerModel = AvatarExperienceInspectAndBuy.LocalPlayerModel

-- this flag controls whether the avatar model rotates when the user is not interacting with it
local FFlagEnableAvatarViewportAutoRotation = game:DefineFastFlag("EnableAvatarViewportAutoRotation", false)
-- this fint controls the zoom of the viewport camera
local FIntViewportCameraFieldOfView = game:DefineFastInt("AXViewportCameraFieldOfView", 68)
local FFlagIBV2Attribution = SharedFlags.FFlagIBV2Attribution
local FFlagAXEnableBatchItemDetailsFetchV2 = AvatarExperienceFlags.FFlagAXEnableBatchItemDetailsFetchV2

export type InspectAndBuyBaseContainerProps = {
	localPlayerModel: LocalPlayerModel?,
	analytics: any, -- Analytics service instance
}

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

		-- refresh the item card price line content (mainly for resale items)
		for _, item in result.Items do
			-- only report purchase success if the item was purchased successfully
			if item.status == Enum.MarketplaceItemPurchaseStatus.Success then
				if item.type == Enum.MarketplaceProductType.AvatarAsset then
					props.analytics.reportPurchaseSuccess(ItemTypeEnum.Asset, item.id)
					dispatch(GetItemDetails(item.id, Enum.AvatarItemType.Asset))
				elseif item.type == Enum.MarketplaceProductType.AvatarBundle then
					props.analytics.reportPurchaseSuccess(ItemTypeEnum.Bundle, item.id)
					dispatch(GetItemDetails(item.id, Enum.AvatarItemType.Bundle))
				end
			end
		end
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

		if item.itemType == ItemTypeEnum.Asset then
			dispatch(GetFavoriteForAsset(item.id))
			dispatch(GetProductInfo(item.id))

			if FFlagIBV2Attribution and FFlagAXEnableBatchItemDetailsFetchV2 then
				-- IEC attribution currently only supported for assets.
				dispatch(GetItemDetails(item.id, Enum.AvatarItemType.Asset))
			end
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

	local openAttributionOverlay = if FFlagIBV2Attribution then React.useCallback(function(experienceInfo)
		dispatch(OpenOverlay(OverlayEnum.AttributionTraversal, experienceInfo))
	end, { dispatch }) else nil

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

	local renderTryOnViewport = React.useCallback(function(tryOnItem: TryOnItem): React.ReactElement<any>?
		if props.localPlayerModel and props.localPlayerModel.Humanoid then
			local humanoid = props.localPlayerModel.Humanoid
			local humanoidDescription = humanoid.HumanoidDescription:Clone()
			applyTryOnItemToHumanoidDescription(tryOnItem, humanoidDescription)
			return React.createElement(AvatarViewport, {
				size = UDim2.new(1, 0, 1, 0),
				position = UDim2.new(0.5, 0, 0.5, 0),
				humanoidDescription = humanoidDescription,
				model = props.localPlayerModel,
				visible = true,
				backgroundTransparency = 1,
				disableAutoRotation = not FFlagEnableAvatarViewportAutoRotation,
				offsetOptions = {
					defaultCameraOffset = CFrame.new(0, 0.5, -5),
					toolOffset = CFrame.new(0, 2, -8),
				},
				cameraFieldOfView = FIntViewportCameraFieldOfView,
				resetCameraAndAutoRotationOnModelChange = true,
			})
		end
		return nil
	end, { props.localPlayerModel })

	local responsivePanelLayoutProps = useResponsivePanelLayoutProps({
		onInspectMenuClosed = onInspectMenuClosed,
		onBulkPurchaseFinished = onBulkPurchaseFinished,
		onItemDetailsOpened = onItemDetailsOpened,
		onToggleFavorite = onToggleFavorite,
		openAttributionOverlay = if FFlagIBV2Attribution then openAttributionOverlay else nil,
		onPromptPurchase = onPromptPurchase,
		renderTryOnViewport = renderTryOnViewport,
		localPlayerModel = props.localPlayerModel :: LocalPlayerModel,
		analytics = props.analytics,
	})

	useUnifiedEventListenerInExperience()

	-- outer overlay container will close the menu when clicked on
	return React.createElement(Foundation.View, {
		Size = viewBreakpoints.OverlaySize,
		Position = viewBreakpoints.OverlayPosition,
		backgroundStyle = tokens.Color.Common.Shadow,
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
			backgroundStyle = {
				Color3 = Theme.color("MenuContainer"),
				Transparency = Theme.transparency("MenuContainer", 1) * GuiService.PreferredTransparency,
			},
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
		Overlay = if FFlagIBV2Attribution then React.createElement(Overlay) else nil,
	})
end

return InspectAndBuyBaseContainer
