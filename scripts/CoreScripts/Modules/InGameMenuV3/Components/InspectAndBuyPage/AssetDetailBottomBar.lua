--[[
	Bottom Bar of the Asset Details Page of the InspectAndBuy Menu
	This BottomBar includes the following elements from left to right:
	1. More Button - opens a contextual menu for options of favoriting
	2. Try On Button - try on the item and replace thumbnail with try on region
		Press again to remove try on and bring back original thumbnail
	3. Action Button - purchase item, get item (if free), or button is disabled (offsale/owned)
]]
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local UIBlox = require(CorePackages.UIBlox)
local t = require(CorePackages.Packages.t)

local withSelectionCursorProvider = UIBlox.App.SelectionImage.withSelectionCursorProvider
local withStyle = UIBlox.Core.Style.withStyle
local Images = UIBlox.App.ImageSet.Images
local ActionBar = UIBlox.App.Button.ActionBar
local ContextualMenu = UIBlox.App.Menu.ContextualMenu
local MenuDirection = UIBlox.App.Menu.MenuDirection

local InGameMenu = script.Parent.Parent.Parent
local withLocalization = require(InGameMenu.Localization.withLocalization)
local getPurchaseInfo = require(InGameMenu.Selectors.getPurchaseInfo)
local PromptPurchase = require(InGameMenu.Thunks.PromptPurchase)
local SetTryOnItemInfo = require(InGameMenu.Actions.InspectAndBuy.SetTryOnItemInfo)
local SetFavoriteForItem = require(InGameMenu.Thunks.SetFavoriteForItem)
local Constants = require(InGameMenu.Resources.Constants)
local IBConstants = require(InGameMenu.InspectAndBuyConstants)
local IBUtils = require(InGameMenu.Utility.InspectAndBuyUtils)

local BUTTON_WIDTH = 184
local BOTTOM_BAR_GRADIENT_SIZE = 20
local CONTEXTUAL_MENU_PADDING = 12
local ICON_BUTTON_SIZE = 22

local TRYON_ICON_OFF = Images["icons/menu/tryOnOff"]
local TRYON_ICON_ON = Images["icons/menu/tryOnOn"]
local MORE_ICON = Images["icons/common/more"]
local FAVORITE_OFF_ICON = Images["icons/actions/favoriteOff"]
local FAVORITE_ON_ICON = Images["icons/actions/favoriteOn"]

local AssetDetailBottomBar = Roact.PureComponent:extend("AssetDetailBottomBar")

AssetDetailBottomBar.validateProps = t.strictInterface({
	bundleInfo = t.optional(t.table),
	localPlayerModel = t.optional(t.table),

	-- from mapStateToProps
	purchaseInfo = t.optional(t.table),
	screenSize = t.Vector2,
	selectedItem = t.table,
	tryingOn = t.boolean,
	currentPage = t.string,
})

function AssetDetailBottomBar:init()
	self:setState({
		contextualMenuOpened = false
	})

	self.closeMenu = function()
		self:setState({
			contextualMenuOpened = false
		})
	end

	self.openMenu = function()
		self:setState({
			contextualMenuOpened = true
		})
	end

	self.favoriteButtonActivated = function()
		local itemId = if self.props.bundleInfo then self.props.bundleInfo.bundleId else self.props.selectedItem.assetId
		local itemType = if self.props.bundleInfo then Enum.AvatarItemType.Bundle else Enum.AvatarItemType.Asset
		local shouldFavorite = not self:isItemFavorited()

		self.props.setFavoriteForItem(itemId, itemType, shouldFavorite)
	end

	self.buyButtonActivated = function()
		if self.props.bundleInfo then
			self.props.promptPurchase(self.props.bundleInfo.bundleId, Enum.AvatarItemType.Bundle)
		else
			self.props.promptPurchase(self.props.selectedItem.assetId, Enum.AvatarItemType.Asset)
		end
	end

	self.tryOnButtonActivated = function()
		if self.props.tryingOn then
			self.props.setTryOnItemInfo(false)
		else
			self.props.setTryOnItemInfo(true)
		end
	end
end

function AssetDetailBottomBar:isItemFavorited()
	if self.props.bundleInfo then
		return self.props.bundleInfo.isFavorited or false
	elseif self.props.selectedItem then
		return self.props.selectedItem.isFavorited or false
	end

	return false
end

--[[
	The try on button should be disabled when any of the following are the case:
	1. Inspecting an LC asset while using an R6 character
	2. Inspecting an asset that is not LC or directly accessible via HumanoidDescription names
		(e.g. Emotes)
	3. Inspecting an Animation type bundle
]]
function AssetDetailBottomBar:shouldDisableTryOn()
	if not self.props.bundleInfo then
		local assetType = self.props.selectedItem.assetTypeId
		-- Do not try on LC items on an R6 model
		local model = self.props.localPlayerModel
		if (IBConstants.LayeredAssetTypes[assetType] ~= nil and assetType ~= tostring(Enum.AssetType.HairAccessory.Value)) and model.Humanoid.RigType == Enum.HumanoidRigType.R6 then
			return true
		end

		if IBConstants.HumanoidDescriptionIdToName[assetType] == nil
			and IBConstants.AssetTypeIdToAccessoryTypeEnum[assetType] == nil then
			return true
		end
	elseif self.props.bundleInfo.bundleType == IBConstants.BundleTypeAsString.Animations or
		self.props.bundleInfo.bundleType == IBConstants.BundleTypeAsString.AvatarAnimations then
		return true
	end

	return false
end

function AssetDetailBottomBar:renderWithProviders(stylePalette, localized, getSelectionCursor)
	local theme = stylePalette.Theme
	local actionButtonHeight = IBConstants.BUTTON_HEIGHT + IBConstants.BOTTOM_BAR_PADDING
	local purchaseInfo = self.props.purchaseInfo
	local icon, text, isBuyButtonDisabled = IBUtils.getItemLabelData(purchaseInfo, localized)

	local favoriteIcon = self:isItemFavorited() and FAVORITE_ON_ICON or FAVORITE_OFF_ICON
	local shouldDisableTryOn = self:shouldDisableTryOn()

	local contextualMenuButtons = {
		{
			icon = favoriteIcon,
			text = "Favorite", --TODO: Localize
			onActivated = self.favoriteButtonActivated,
		}
	}

	return Roact.createFragment({
		BottomBarContainer = Roact.createElement("Frame", {
			Position = UDim2.new(0, 0, 1, -actionButtonHeight),
			Size = UDim2.new(1, 0, 0, actionButtonHeight),
			BackgroundColor3 = theme.BackgroundDefault.Color,
		}, {
			GradientFrame = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, BOTTOM_BAR_GRADIENT_SIZE),
				Position = UDim2.fromOffset(0, -BOTTOM_BAR_GRADIENT_SIZE),
				BackgroundColor3 = theme.BackgroundDefault.Color,
				BorderSizePixel = 0,
			}, {
				Gradient = Roact.createElement("UIGradient", {
					Rotation = -90,
					Transparency = NumberSequence.new({
						NumberSequenceKeypoint.new(0, 0),
						NumberSequenceKeypoint.new(1, 1)
					}),
				}),
			}),
			ActionBar = Roact.createElement(ActionBar, {
				button = {
					props = {
						layoutOrder = 3,
						size = UDim2.fromOffset(BUTTON_WIDTH, IBConstants.BUTTON_HEIGHT),
						text = text,
						icon = icon,
						onActivated = self.buyButtonActivated,
						isDisabled = isBuyButtonDisabled,
					},
				},
				icons = {
					{
						props = {
							size = UDim2.fromOffset(ICON_BUTTON_SIZE, ICON_BUTTON_SIZE),
							layoutOrder = 1,
							icon = MORE_ICON,
							iconColor3 = theme.SystemPrimaryDefault.Color,
							iconTransparency = theme.SystemPrimaryDefault.Transparency,
							onActivated = self.openMenu,
						},
					},
					{
						props = {
							size = UDim2.fromOffset(ICON_BUTTON_SIZE, ICON_BUTTON_SIZE),
							layoutOrder = 2,
							icon = self.props.tryingOn and TRYON_ICON_ON or TRYON_ICON_OFF,
							iconColor3 = theme.SystemPrimaryDefault.Color,
							iconTransparency = shouldDisableTryOn and 0.5 or theme.SystemPrimaryDefault.Transparency,
							onActivated = self.tryOnButtonActivated,
							isDisabled = shouldDisableTryOn,
						},
					},
				}
			})
		}),
		MoreContextualMenu = Roact.createElement(ContextualMenu, {
			buttonProps = contextualMenuButtons,
			open = self.state.contextualMenuOpened,
			menuDirection = MenuDirection.Up,
			openPositionY = UDim.new(1, -(actionButtonHeight + CONTEXTUAL_MENU_PADDING)),

			closeBackgroundVisible = true,
			screenSize = self.props.screenSize,

			onDismiss = self.closeMenu,
		}),
	})
end

function AssetDetailBottomBar:didUpdate(prevProps)
	-- When leaving the page, reset trying on status back to false
	if self.props.currentPage ~= prevProps.currentPage and prevProps.currentPage == Constants.InspectAndBuyAssetDetailsPageKey then
		if self.props.tryingOn then
			self.props.setTryOnItemInfo(false)
		end
	end
end

function AssetDetailBottomBar:render()
	return withStyle(function(stylePalette)
		return withLocalization({
		})(function(localized)
			return withSelectionCursorProvider(function(getSelectionCursor)
				return self:renderWithProviders(stylePalette, localized, getSelectionCursor)
			end)
		end)
	end)
end

return RoactRodux.connect(function(state, props)
	return {
		purchaseInfo = getPurchaseInfo(state),
		screenSize = state.screenSize,
		selectedItem = state.inspectAndBuy.SelectedItem,
		tryingOn = state.inspectAndBuy.TryingOn,
		currentPage = state.menuPage,
	}
end, function(dispatch)
	return {
		promptPurchase = function(itemId, itemType)
			dispatch(PromptPurchase(itemId, itemType))
		end,
		setTryOnItemInfo = function(tryingOn)
			dispatch(SetTryOnItemInfo(tryingOn))
		end,
		setFavoriteForItem = function(itemId, itemType, shouldFavorite)
			dispatch(SetFavoriteForItem(itemId, itemType, shouldFavorite))
		end,
	}
end)(AssetDetailBottomBar)