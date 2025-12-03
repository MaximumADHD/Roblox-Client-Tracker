local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")
local InspectAndBuyFolder = script.Parent.Parent
local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local Constants = require(InspectAndBuyFolder.Constants)
local UtilityFunctions = require(InspectAndBuyFolder.UtilityFunctions)
local FavoritesButton = require(InspectAndBuyFolder.Components.FavoritesButton)
local TryOnButton = require(InspectAndBuyFolder.Components.TryOnButton)
local BuyButton = require(InspectAndBuyFolder.Components.BuyButton)
local InspectAndBuyControllerBar = require(InspectAndBuyFolder.Components.InspectAndBuyControllerBar)
local GetIsFavorite = require(InspectAndBuyFolder.Selectors.GetIsFavorite)
local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)
local tutils = require(CorePackages.Packages.tutils)

local GetFFlagIBGateUGC4ACollectibleAssetsBundles =
	require(InspectAndBuyFolder.Flags.GetFFlagIBGateUGC4ACollectibleAssetsBundles)
local GetFFlagIBEnableCollectiblesSystemSupport =
	require(InspectAndBuyFolder.Flags.GetFFlagIBEnableCollectiblesSystemSupport)
local FFlagIBFixResaleAfterQuantityLimit = game:DefineFastFlag("IBFixResaleAfterQuantityLimit", false)

local DetailsButtons = Roact.PureComponent:extend("DetailsButtons")

local OFFSALE_KEY = "InGame.InspectMenu.Label.Offsale"
local LIMITED_KEY = "InGame.InspectMenu.Label.Limited"
local OWNED_KEY = "InGame.InspectMenu.Label.Owned"
local PREMIUM_ONLY_KEY = "InGame.InspectMenu.Label.PremiumOnly"
local LIMIT_REACHED_KEY = "InGame.InspectMenu.Action.LimitReached"
local FROM_RESALE_KEY = "InGame.InspectMenu.Action.FromResale"

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
	elseif collectibleQuantityLimitReached and itemInfo.isForSale then
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

	local bundlesObtainedAndDetailPageOpened = detailsInformation.viewingDetails

	if bundlesObtainedAndDetailPageOpened then
		local visible = self.props.visible

		if gamepadEnabled and visible then
			GuiService.SelectedCoreObject = self.favoriteButtonRef.current
		end
	elseif self.props.assetInfo.bundlesAssetIsIn == nil and detailsInformation.viewingDetails and gamepadEnabled then
		GuiService.SelectedCoreObject = nil
	end

	-- If an overlay was closed, break out of Roact Gamepad and back to regular gamepad usage.
	local overlay = self.props.overlay
	local prevOverlay = prevProps.overlay
	if gamepadEnabled and overlay and overlay.overlay == nil and prevOverlay and prevOverlay.overlay ~= nil then
		GuiService.SelectedCoreObject = self.tryOnButtonRef.current
	end
end

function DetailsButtons:calculateBuyStatusForLimitedItem(itemInfo, locale, forSale)
	local isLimitedCollectible = UtilityFunctions.isLimited2Point0_Or_LimitedCollectible(itemInfo)
	local isLimited = UtilityFunctions.isLimited1Point0(itemInfo)
		or UtilityFunctions.isLimited1Point0_LimitedUnique(itemInfo)
	local collectibleQuantityLimitReached
	local collectibleLowestResalePrice
	local collectibleLowestAvailableResaleItemInstanceId
	local collectibleLowestAvailableResaleProductId
	local collectibleItemId

	if isLimitedCollectible then
		-- isForSale bit for Collectible Items is already computed in GetProductInfo() where sale location
		-- and remaining stock are already taken into account.
		forSale = itemInfo.isForSale

		-- we use resale for the following conditions:
		-- 1. when there is no original instance
		-- 2. when the user reached quantity limit
		-- 3. when resale has a lower price than original instance
		local resellableInstances = self.props.resellableInstances
		local ownedInstances = resellableInstances
			and resellableInstances[itemInfo.collectibleItemId]
			and tutils.fieldCount(resellableInstances[itemInfo.collectibleItemId])
		collectibleQuantityLimitReached = ownedInstances
			and itemInfo.collectibleQuantityLimitPerUser ~= nil
			and itemInfo.collectibleQuantityLimitPerUser > 0
			and ownedInstances >= itemInfo.collectibleQuantityLimitPerUser
		local resaleAvailable = itemInfo.collectibleLowestAvailableResaleProductId
			and itemInfo.collectibleLowestAvailableResaleProductId ~= ""

		local resaleHasLowerPrice = false
		if FFlagIBFixResaleAfterQuantityLimit then
			-- Need to check whether we have remaining quantity for item
			local hasRemainingOriginalStock = itemInfo.remaining > 0
			if hasRemainingOriginalStock then
				resaleHasLowerPrice = resaleAvailable and (itemInfo.price or 0) > itemInfo.collectibleLowestResalePrice
			else
				resaleHasLowerPrice = resaleAvailable and itemInfo.collectibleLowestResalePrice
			end
		else
			-- Old behavior
			resaleHasLowerPrice = resaleAvailable and (itemInfo.price or 0) > itemInfo.collectibleLowestResalePrice
		end

		if resaleAvailable then
			if not forSale or collectibleQuantityLimitReached or resaleHasLowerPrice then
				collectibleLowestResalePrice = itemInfo.collectibleLowestResalePrice
				collectibleLowestAvailableResaleItemInstanceId = itemInfo.collectibleLowestAvailableResaleItemInstanceId
				collectibleLowestAvailableResaleProductId = itemInfo.collectibleLowestAvailableResaleProductId
				collectibleItemId = itemInfo.collectibleItemId
				forSale = true
			end
		elseif collectibleQuantityLimitReached then
			forSale = false
		end
	else
		forSale = itemInfo.isForSale and not itemInfo.owned and not isLimited
	end

	if forSale and itemInfo.price == nil and itemInfo.premiumPricing ~= nil then
		forSale = (Players.LocalPlayer :: Player).MembershipType == Enum.MembershipType.Premium
	end
	local buyText = getBuyText(itemInfo, locale, collectibleQuantityLimitReached, collectibleLowestResalePrice)

	local showRobuxIcon = (itemInfo.price ~= nil and not itemInfo.owned and forSale)
		or collectibleLowestResalePrice ~= nil
		or (itemInfo.price ~= nil and itemInfo.productType == Constants.ProductType.CollectibleItem and forSale)

	return {
		buyText = buyText,
		showRobuxIcon = showRobuxIcon,
		forSale = forSale,
		collectibleQuantityLimitReached = collectibleQuantityLimitReached,
		collectibleLowestResalePrice = collectibleLowestResalePrice,
		collectibleLowestAvailableResaleItemInstanceId = collectibleLowestAvailableResaleItemInstanceId,
		collectibleLowestAvailableResaleProductId = collectibleLowestAvailableResaleProductId,
		collectibleItemId = collectibleItemId,
	}
end

function DetailsButtons:render()
	local locale = self.props.locale
	local assetInfo = self.props.assetInfo
	local showRobuxIcon = false
	local showTryOn = false
	local buyText, forSale, partOfBundle, bundleId, itemType, itemId, partOfBundleAndOffsale
	local collectibleItemId = nil
	local collectibleLowestResalePrice = nil
	local collectibleLowestAvailableResaleProductId = nil
	local collectibleLowestAvailableResaleItemInstanceId = nil
	if assetInfo then
		-- Part of Bundle buy button text
		partOfBundle = assetInfo.parentBundleId ~= nil
		-- not assetInfo.isForSale was true before we reconstruct the code
		-- right now, if an asset is part of bundle, the asset will be treated as a bundle, including isForSale
		partOfBundleAndOffsale = partOfBundle and not assetInfo.isForSale

		local isBundle = partOfBundle

		if isBundle then
			bundleId = UtilityFunctions.getBundleId(assetInfo)
			itemType = Constants.ItemType.Bundle
			itemId = bundleId
		else
			-- Asset + Limited collectible Buy Text
			itemType = Constants.ItemType.Asset
			itemId = assetInfo.assetId
		end

		local limitedInfo = self:calculateBuyStatusForLimitedItem(assetInfo, locale, forSale)

		buyText = limitedInfo.buyText
		showRobuxIcon = limitedInfo.showRobuxIcon
		forSale = limitedInfo.forSale
		local _collectibleQuantityLimitReached = limitedInfo.collectibleQuantityLimitReached
		collectibleLowestResalePrice = limitedInfo.collectibleLowestResalePrice
		collectibleLowestAvailableResaleProductId = limitedInfo.collectibleLowestAvailableResaleProductId
		collectibleLowestAvailableResaleItemInstanceId = limitedInfo.collectibleLowestAvailableResaleItemInstanceId
		collectibleItemId = limitedInfo.collectibleItemId

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

	if assetInfo then
		-- this is the only way we know if the asset is in collectible system or not
		collectibleItemId = assetInfo.collectibleItemId

		local assetBundles = self.props.assetBundles[assetInfo.assetId]
		local belongToMultipleBundles = partOfBundle and #assetBundles > 1
		--[[
			One asset shared by multiple bundles is not purchasable in Inspect & Buy.

			TODO: Limited Bundle is not supported right now.
		]]
		hideBuyButton = belongToMultipleBundles
	end

	local showControllerBar = self.props.detailsInformation.viewingDetails -- only show when item menu is open
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
			showFavorite = true,
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

	local isFavorited = GetIsFavorite(state)

	return {
		visible = state.visible,
		assetInfo = state.assets[assetId] or {},
		assetBundles = state.assetBundles,
		detailsInformation = state.detailsInformation,
		bundleInfo = state.bundles,
		locale = state.locale,
		gamepadEnabled = state.gamepadEnabled,
		isFavorited = isFavorited,
		tryingOn = state.tryingOnInfo.tryingOn,
		resellableInstances = state.collectibleResellableInstances,
		overlay = state.overlay,
	}
end)(DetailsButtons)
