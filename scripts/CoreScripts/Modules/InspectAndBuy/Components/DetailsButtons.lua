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

local FFlagFixInspectAndBuyPremiumPrice = game:DefineFastFlag("FixInspectAndBuyPremiumPrice", false)
local GetFFlagUseInspectAndBuyControllerBar = require(InspectAndBuyFolder.Flags.GetFFlagUseInspectAndBuyControllerBar)

local DetailsButtons = Roact.PureComponent:extend("DetailsButtons")

local OFFSALE_KEY = "InGame.InspectMenu.Label.Offsale"
local LIMITED_KEY = "InGame.InspectMenu.Label.Limited"
local OWNED_KEY = "InGame.InspectMenu.Label.Owned"
local PREMIUM_ONLY_KEY = "InGame.InspectMenu.Label.PremiumOnly"
local ROBLOX_CREATOR_ID = "1"

--[[
	If an asset is an animation (or emotes in the future) we cannot support
	try on functionality.
]]
local function isAnimationAsset(assetTypeId)
	return Constants.AnimationAssetTypes[assetTypeId] ~= nil
end

local function getBuyText(itemInfo, locale)
	local buyText

	if itemInfo.owned then
		buyText = RobloxTranslator:FormatByKeyForLocale(OWNED_KEY, locale)
	elseif itemInfo.isLimited then
		buyText = RobloxTranslator:FormatByKeyForLocale(LIMITED_KEY, locale)
	elseif not itemInfo.isForSale and not itemInfo.isLimited then
		buyText = RobloxTranslator:FormatByKeyForLocale(OFFSALE_KEY, locale)
	elseif itemInfo.isForSale then
		if itemInfo.premiumPricing ~= nil then
			if FFlagFixInspectAndBuyPremiumPrice then
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
				if itemInfo.price == nil and (Players.LocalPlayer :: Player).MembershipType ~= Enum.MembershipType.Premium then
					buyText = RobloxTranslator:FormatByKeyForLocale(PREMIUM_ONLY_KEY, locale)
				else
					buyText = itemInfo.premiumPricing.premiumPriceInRobux
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

	if (prevProps.assetInfo.bundlesAssetIsIn == nil and self.props.assetInfo.bundlesAssetIsIn ~= nil)
		and detailsInformation.viewingDetails then
		local assetInfo = self.props.assetInfo
		local showTryOn = not isAnimationAsset(assetInfo.assetTypeId)
		local visible = self.props.visible

		if gamepadEnabled and visible then
			local creatorId = assetInfo and assetInfo.creatorId or 0

			if creatorId == ROBLOX_CREATOR_ID then
				GuiService.SelectedCoreObject = self.favoriteButtonRef.current
			elseif showTryOn then
				GuiService.SelectedCoreObject = self.tryOnButtonRef.current
			else
				GuiService.SelectedCoreObject = self.buyButtonRef.current
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
	local isLimited = assetInfo.isLimited or false
	local showRobuxIcon = false
	local showTryOn = false
	local creatorId = assetInfo and assetInfo.creatorId or 0
	local buyText, forSale, partOfBundle, bundleId, itemType, itemId, partOfBundleAndOffsale
	if assetInfo then
		partOfBundle = assetInfo.bundlesAssetIsIn and #assetInfo.bundlesAssetIsIn == 1
		partOfBundleAndOffsale = partOfBundle and not assetInfo.isForSale
		if partOfBundleAndOffsale then
			bundleId = UtilityFunctions.getBundleId(assetInfo)
			itemType = Constants.ItemType.Bundle
			itemId = bundleId
			if bundleInfo[bundleId] then
				buyText = getBuyText(bundleInfo[bundleId], locale)
				forSale = bundleInfo[bundleId].isForSale and not bundleInfo[bundleId].owned
				showRobuxIcon = bundleInfo[bundleId].price ~= nil and not bundleInfo[bundleId].owned and forSale
			end
		else
			itemType = Constants.ItemType.Asset
			itemId = assetInfo.assetId
			forSale = assetInfo.isForSale and not assetInfo.owned and not isLimited and assetInfo.owned ~= nil
			if forSale and assetInfo.price == nil and assetInfo.premiumPricing ~= nil then
				forSale = (Players.LocalPlayer :: Player).MembershipType == Enum.MembershipType.Premium
			end
			buyText = getBuyText(assetInfo, locale)
			showRobuxIcon = assetInfo.price ~= nil and not assetInfo.owned and forSale
		end

		showTryOn = not isAnimationAsset(assetInfo.assetTypeId)
		if Constants.HumanoidDescriptionIdToName[assetInfo.assetTypeId] == nil
			and Constants.AssetTypeIdToAccessoryTypeEnum[assetInfo.assetTypeId] == nil then
			showTryOn = false
		end
	end

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
			showFavorite = creatorId == ROBLOX_CREATOR_ID, -- only Roblox-authored items are favoriteable
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
		BuyButton = Roact.createElement(BuyButton, {
			itemType = itemType,
			itemId = itemId,
			showRobuxIcon = showRobuxIcon,
			forSale = forSale,
			buyText = buyText,
			buyButtonRef = self.buyButtonRef,
		}),
	})
end

return RoactRodux.UNSTABLE_connect2(
	function(state, props)
		local assetId = state.detailsInformation.assetId

		local isFavorited
		if GetFFlagUseInspectAndBuyControllerBar() then
			isFavorited = GetIsFavorite(state)
		end

		return {
			visible = state.visible,
			assetInfo = state.assets[assetId] or {},
			detailsInformation = state.detailsInformation,
			bundleInfo = state.bundles,
			locale = state.locale,
			gamepadEnabled = state.gamepadEnabled,
			isFavorited = isFavorited,
			tryingOn = state.tryingOnInfo.tryingOn,
		}
	end
)(DetailsButtons)
