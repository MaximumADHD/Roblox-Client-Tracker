local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")
local InspectAndBuyFolder = script.Parent.Parent
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local Constants = require(InspectAndBuyFolder.Constants)
local UtilityFunctions = require(InspectAndBuyFolder.UtilityFunctions)
local FavoritesButton = require(InspectAndBuyFolder.Components.FavoritesButton)
local TryOnButton = require(InspectAndBuyFolder.Components.TryOnButton)
local BuyButton = require(InspectAndBuyFolder.Components.BuyButton)
local InspectAndBuyControllerBar = require(InspectAndBuyFolder.Components.InspectAndBuyControllerBar)
local GetIsFavorite = require(InspectAndBuyFolder.Selectors.GetIsFavorite)
local RobloxTranslator = require(CoreGui.RobloxGui.Modules.RobloxTranslator)
local tutils = require(CorePackages.tutils)

local FFlagEnableFavoriteButtonForUgc = require(InspectAndBuyFolder.Flags.FFlagEnableFavoriteButtonForUgc)
local GetFFlagUseInspectAndBuyControllerBar = require(InspectAndBuyFolder.Flags.GetFFlagUseInspectAndBuyControllerBar)
local GetCollectibleItemInInspectAndBuyEnabled =
	require(InspectAndBuyFolder.Flags.GetCollectibleItemInInspectAndBuyEnabled)
local GetFFlagIBGateUGC4ACollectibleAssetsBundles =
	require(InspectAndBuyFolder.Flags.GetFFlagIBGateUGC4ACollectibleAssetsBundles)
local GetFFlagIBEnableCollectiblesSystemSupport =
	require(InspectAndBuyFolder.Flags.GetFFlagIBEnableCollectiblesSystemSupport)
local GetFFlagIBEnableNewDataCollectionForCollectibleSystem =
	require(InspectAndBuyFolder.Flags.GetFFlagIBEnableNewDataCollectionForCollectibleSystem)
local GetFFlagIBEnableCollectiblePurchaseForUnlimited =
	require(InspectAndBuyFolder.Flags.GetFFlagIBEnableCollectiblePurchaseForUnlimited)
local FFlagIBDisableBuyButtonForUnlimitedAsset = game:DefineFastFlag("IBDisableBuyButtonForUnlimitedAsset", false)
local FFlagIBDisableBuyButtonForUnlimitedBundle = game:DefineFastFlag("IBDisableBuyButtonForUnlimitedBundle", false)

local DetailsButtons = Roact.PureComponent:extend("DetailsButtons")

local OFFSALE_KEY = "InGame.InspectMenu.Label.Offsale"
local LIMITED_KEY = "InGame.InspectMenu.Label.Limited"
local OWNED_KEY = "InGame.InspectMenu.Label.Owned"
local PREMIUM_ONLY_KEY = "InGame.InspectMenu.Label.PremiumOnly"
local LIMIT_REACHED_KEY = "InGame.InspectMenu.Action.LimitReached"
local FROM_RESALE_KEY = "InGame.InspectMenu.Action.FromResale"
local ROBLOX_CREATOR_ID = "1"

--[[
	If an asset is an animation (or emotes in the future) we cannot support
	try on functionality.
]]
local function isAnimationAsset(assetTypeId)
	return Constants.AnimationAssetTypes[assetTypeId] ~= nil
end

local function getBuyText(itemInfo, locale, collectibleQuantityLimitReached, collectibleLowestResalePrice)
	local buyText
	-- isLimited is only referring to Limited 1.0 instead of Limited 2.0 or new collectibles
	local isLimited: boolean = itemInfo.isLimited
		or (GetFFlagIBEnableCollectiblesSystemSupport() and itemInfo.isLimitedUnique)

	if collectibleLowestResalePrice then
		buyText = RobloxTranslator:FormatByKeyForLocale(
			FROM_RESALE_KEY,
			locale,
			{ PRICE = tostring(collectibleLowestResalePrice) }
		)
	elseif
	  collectibleQuantityLimitReached
		and itemInfo.isForSale
	then
		buyText = RobloxTranslator:FormatByKeyForLocale(LIMIT_REACHED_KEY, locale)
	elseif
	  itemInfo.price ~= nil
		and itemInfo.productType == Constants.ProductType.CollectibleItem -- TODO (lliu): verify if we still use this to identify collectible items
		and itemInfo.isForSale
	then
		buyText = itemInfo.price
	elseif itemInfo.owned then
		buyText = RobloxTranslator:FormatByKeyForLocale(OWNED_KEY, locale)
	elseif isLimited then
		buyText = RobloxTranslator:FormatByKeyForLocale(LIMITED_KEY, locale)
	elseif not itemInfo.isForSale and not isLimited then
		buyText = RobloxTranslator:FormatByKeyForLocale(OFFSALE_KEY, locale)
	elseif itemInfo.isForSale then
		if itemInfo.premiumPricing ~= nil then
			if (Players.LocalPlayer :: Player).MembershipType == Enum.MembershipType.Premium then
				buyText = itemInfo.premiumPricing.premiumPriceInRobux
			else
				if itemInfo.price == nil then
					buyText = RobloxTranslator:FormatByKeyForLocale(PREMIUM_ONLY_KEY, locale)
				else
					buyText = itemInfo.price
				end
			end
		else
			buyText = itemInfo.price
		end
	end
	return buyText
end

function DetailsButtons:init()
	self.tryOnButtonRef = Roact.createRef()
	self.buyButtonRef = Roact.createRef()
	self.favoriteButtonRef = Roact.createRef()
end

function DetailsButtons:didUpdate(prevProps)
	local detailsInformation = self.props.detailsInformation
	local gamepadEnabled = self.props.gamepadEnabled
	local bundlesObtainedAndDetailPageOpened = (prevProps.assetInfo.bundlesAssetIsIn == nil and self.props.assetInfo.bundlesAssetIsIn ~= nil)
		and detailsInformation.viewingDetails

	if GetFFlagIBEnableNewDataCollectionForCollectibleSystem() then
		bundlesObtainedAndDetailPageOpened = detailsInformation.viewingDetails
	end

	if bundlesObtainedAndDetailPageOpened
	then
		local assetInfo = self.props.assetInfo
		local showTryOn = not isAnimationAsset(assetInfo.assetTypeId)
		local visible = self.props.visible

		if gamepadEnabled and visible then
			local creatorId = assetInfo and assetInfo.creatorId or 0

			if FFlagEnableFavoriteButtonForUgc then
				GuiService.SelectedCoreObject = self.favoriteButtonRef.current
			else
				if creatorId == ROBLOX_CREATOR_ID then
					GuiService.SelectedCoreObject = self.favoriteButtonRef.current
				elseif showTryOn then
					GuiService.SelectedCoreObject = self.tryOnButtonRef.current
				else
					GuiService.SelectedCoreObject = self.buyButtonRef.current
				end
			end
		end
	elseif self.props.assetInfo.bundlesAssetIsIn == nil and detailsInformation.viewingDetails and gamepadEnabled then
		GuiService.SelectedCoreObject = nil
	end
end

function DetailsButtons:render()
	local locale = self.props.locale
	local assetInfo = self.props.assetInfo
	local bundleInfo = self.props.bundleInfo
	local isLimited = assetInfo.isLimited
		or (GetFFlagIBEnableCollectiblesSystemSupport() and assetInfo.isLimitedUnique)
		or false
	local showRobuxIcon = false
	local showTryOn = false
	local creatorId = assetInfo and assetInfo.creatorId or 0
	local buyText, forSale, partOfBundle, bundleId, itemType, itemId, partOfBundleAndOffsale
	local collectibleQuantityLimitReached = false
	local collectibleItemId = nil
	local collectibleLowestResalePrice = nil
	local collectibleLowestAvailableResaleProductId = nil
	local collectibleLowestAvailableResaleItemInstanceId = nil
	if assetInfo then
		-- Part of Bundle buy button text
		partOfBundle = assetInfo.bundlesAssetIsIn and #assetInfo.bundlesAssetIsIn == 1
		if GetFFlagIBEnableNewDataCollectionForCollectibleSystem() then
			partOfBundle = assetInfo.parentBundleId ~= nil
		end
		partOfBundleAndOffsale = partOfBundle and not assetInfo.isForSale
		-- TODO (lliu): restructure, make limited collectible be supported together
		if partOfBundleAndOffsale then
			bundleId = UtilityFunctions.getBundleId(assetInfo)
			itemType = Constants.ItemType.Bundle
			itemId = bundleId
			if bundleInfo[bundleId] then
				buyText = getBuyText(
					bundleInfo[bundleId],
					locale,
					collectibleQuantityLimitReached,
					collectibleLowestResalePrice
				)
				forSale = bundleInfo[bundleId].isForSale and not bundleInfo[bundleId].owned
				showRobuxIcon = bundleInfo[bundleId].price ~= nil and not bundleInfo[bundleId].owned and forSale
			end
		else
			-- Asset + Limited collectible Buy Text
			itemType = Constants.ItemType.Asset
			if GetFFlagIBEnableNewDataCollectionForCollectibleSystem() then
				if partOfBundle then
					itemType = Constants.ItemType.Bundle
				end
			end
			itemId = assetInfo.assetId
			local isLimitedCollectible = if GetFFlagIBEnableCollectiblesSystemSupport()
				then UtilityFunctions.isLimitedCollectible(assetInfo)
				else (assetInfo.productType == Constants.ProductType.CollectibleItem)

			if GetFFlagIBEnableCollectiblePurchaseForUnlimited() then
				isLimitedCollectible = UtilityFunctions.isLimited2Point0_Or_LimitedCollectible(assetInfo)
			end

			if GetCollectibleItemInInspectAndBuyEnabled() and isLimitedCollectible then
				-- isForSale bit for Collectible Items is already computed in GetProductInfo() where sale location
				-- and remaining stock are already taken into account.
				forSale = assetInfo.isForSale

				--[[
					TODO (lliu): this logic should not be in the frontend. Since it is here now, it should be extracted to be a proper place.
					TODO (lliu): It's not DetailsButtons responsiblity to determine what to show up on BuyButton or prepare for purchase.
					It should be the responsibility of the BuyButton component.
				]]
				-- we use resale for the following conditions:
				-- 1. when there is no original instance
				-- 2. when the user reached quantity limit
				-- 3. when resale has a lower price than original instance
				local resellableInstances = self.props.resellableInstances
				local ownedInstances = resellableInstances
					and resellableInstances[assetInfo.collectibleItemId]
					and tutils.fieldCount(resellableInstances[assetInfo.collectibleItemId])
				collectibleQuantityLimitReached = ownedInstances
					and assetInfo.collectibleQuantityLimitPerUser ~= nil
					and assetInfo.collectibleQuantityLimitPerUser > 0
					and ownedInstances >= assetInfo.collectibleQuantityLimitPerUser
				local resaleAvailable = assetInfo.collectibleLowestAvailableResaleProductId
					and assetInfo.collectibleLowestAvailableResaleProductId ~= ""
				local resaleHasLowerPrice = resaleAvailable
					and (assetInfo.price or 0) > assetInfo.collectibleLowestResalePrice
				if resaleAvailable then
					if not forSale or collectibleQuantityLimitReached or resaleHasLowerPrice then
						collectibleLowestResalePrice = assetInfo.collectibleLowestResalePrice
						collectibleLowestAvailableResaleItemInstanceId =
							assetInfo.collectibleLowestAvailableResaleItemInstanceId
						collectibleLowestAvailableResaleProductId =
							assetInfo.collectibleLowestAvailableResaleProductId
						collectibleItemId = assetInfo.collectibleItemId
						forSale = true
					end
				elseif collectibleQuantityLimitReached then
					forSale = false
				end
			else
				--[[
					Code Path for unlimited collectible bundles and unlimited collectible assets
				]]
				forSale = assetInfo.isForSale and not assetInfo.owned and not isLimited and assetInfo.owned ~= nil
				if GetFFlagIBEnableCollectiblePurchaseForUnlimited() then
					-- assetInfo.owned is true or false or nil, not assetInfo.owned is sufficent, no need to check `~= nil` again
					forSale = assetInfo.isForSale and not assetInfo.owned and not isLimited
				end
			end

			if forSale and assetInfo.price == nil and assetInfo.premiumPricing ~= nil then
				forSale = (Players.LocalPlayer :: Player).MembershipType == Enum.MembershipType.Premium
			end
			buyText = getBuyText(assetInfo, locale, collectibleQuantityLimitReached, collectibleLowestResalePrice)

			showRobuxIcon = (assetInfo.price ~= nil and not assetInfo.owned and forSale)
				or collectibleLowestResalePrice ~= nil
				or (
					assetInfo.price ~= nil
					and assetInfo.productType == Constants.ProductType.CollectibleItem
					and forSale
				)
		end

		showTryOn = not isAnimationAsset(assetInfo.assetTypeId)
		if
			Constants.AssetTypeIdStringToHumanoidDescriptionProp[assetInfo.assetTypeId] == nil
			and Constants.AssetTypeIdToAccessoryTypeEnum[assetInfo.assetTypeId] == nil
		then
			showTryOn = false
		end
	end

	local hideBuyButton
	if GetFFlagIBGateUGC4ACollectibleAssetsBundles() then
		hideBuyButton = UtilityFunctions.isUnlimitedCollectibleAsset(itemType, assetInfo)
			or UtilityFunctions.isLimitedBundle(itemType, assetInfo)
			or UtilityFunctions.isUnlimitedCollectibleBundle(itemType, assetInfo)
	end

	if GetFFlagIBEnableCollectiblePurchaseForUnlimited() and assetInfo then
		-- this is the only way we know if the asset is in collectible system or not
		collectibleItemId = assetInfo.collectibleItemId

		local assetBundles = self.props.assetBundles[assetInfo.assetId]
		local belongToMultipleBundles = partOfBundle and #assetBundles > 1
		--[[
			One asset shared by multiple bundles is not purchasable in Inspect & Buy.

			TODO: Limited Bundle is not supported right now.
		]]
		hideBuyButton = UtilityFunctions.isLimitedBundle(itemType, assetInfo) or belongToMultipleBundles
	end

	--[[
		-- TODO (lliu): Remove this code block
		These 2 flags are temporarily hiding buy button on the Inspect&Buy Page waiting for the engine&RCC release.
		This will give us more control if we show the buy button for unlimited assets or unlimited bundles.
		It's safe to remove this code block once the purchase funtionality in game engine is ready.
		TEMPORARY FLAGS START
	]]
	if FFlagIBDisableBuyButtonForUnlimitedAsset or FFlagIBDisableBuyButtonForUnlimitedBundle then
		if FFlagIBDisableBuyButtonForUnlimitedAsset and FFlagIBDisableBuyButtonForUnlimitedBundle then
			hideBuyButton = hideBuyButton or UtilityFunctions.isUnlimitedCollectibleAsset(itemType, assetInfo)
				or UtilityFunctions.isUnlimitedCollectibleBundle(itemType, assetInfo)
		elseif FFlagIBDisableBuyButtonForUnlimitedAsset then
			hideBuyButton = hideBuyButton or UtilityFunctions.isUnlimitedCollectibleAsset(itemType, assetInfo)
		elseif FFlagIBDisableBuyButtonForUnlimitedBundle then
			hideBuyButton = hideBuyButton or UtilityFunctions.isUnlimitedCollectibleBundle(itemType, assetInfo)
		end
	end
	--[[
		TEMPORARY FLAGS END
	]]

	local showControllerBar = GetFFlagUseInspectAndBuyControllerBar()
		and self.props.detailsInformation.viewingDetails -- only show when item menu is open
		and self.props.gamepadEnabled

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, 51),
		Position = UDim2.new(0, 0, 1, -51),
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, 10),
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		ControllerBar = showControllerBar and Roact.createElement(InspectAndBuyControllerBar, {
			showTryOn = showTryOn,
			tryingOn = self.props.tryingOn,
			showFavorite = if FFlagEnableFavoriteButtonForUgc then true else creatorId == ROBLOX_CREATOR_ID, -- only Roblox-authored items are favoriteable
			isFavorited = self.props.isFavorited,
		}),
		FavoriteButton = Roact.createElement(FavoritesButton, {
			favoriteButtonRef = self.favoriteButtonRef,
		}),
		TryOnButton = Roact.createElement(TryOnButton, {
			showTryOn = showTryOn,
			assetInfo = assetInfo,
			partOfBundleAndOffsale = partOfBundleAndOffsale,
			bundleId = bundleId,
			tryOnButtonRef = self.tryOnButtonRef,
			localPlayerModel = self.props.localPlayerModel,
		}),
		TryOnFiller = Roact.createElement("ImageLabel", {
			AnchorPoint = Vector2.new(0.5, 0),
			BackgroundTransparency = 1,
			Size = UDim2.new(0.5, -32, 0, 44),
			Visible = not showTryOn,
			LayoutOrder = 2,
			Image = "",
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(5, 5, 120, 20),
		}),
		BuyButton = if GetFFlagIBGateUGC4ACollectibleAssetsBundles() and hideBuyButton
			then nil
			else Roact.createElement(BuyButton, {
				itemType = itemType,
				itemId = itemId,
				showRobuxIcon = showRobuxIcon,
				forSale = forSale,
				buyText = buyText,
				buyButtonRef = self.buyButtonRef,
				collectibleItemId = collectibleItemId,
				collectibleLowestAvailableResaleProductId = collectibleLowestAvailableResaleProductId,
				collectibleLowestAvailableResaleItemInstanceId = collectibleLowestAvailableResaleItemInstanceId,
				collectibleLowestResalePrice = collectibleLowestResalePrice,
			}),
	})
end

return RoactRodux.UNSTABLE_connect2(function(state, props)
	local assetId = state.detailsInformation.assetId

	local isFavorited
	if GetFFlagUseInspectAndBuyControllerBar() then
		isFavorited = GetIsFavorite(state)
	end

	return {
		visible = state.visible,
		assetInfo = state.assets[assetId] or {},
		assetBundles = if GetFFlagIBEnableCollectiblePurchaseForUnlimited() then state.assetBundles else nil,
		detailsInformation = state.detailsInformation,
		bundleInfo = state.bundles,
		locale = state.locale,
		gamepadEnabled = state.gamepadEnabled,
		isFavorited = isFavorited,
		tryingOn = state.tryingOnInfo.tryingOn,
		resellableInstances = state.collectibleResellableInstances,
	}
end)(DetailsButtons)
