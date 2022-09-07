--[[
	Bottom Bar of the Asset Details Page of the InspectAndBuy Menu
	This BottomBar includes the following elements from left to right:
	1. More Button - opens a contextual menu for options of favoriting and reporting
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
local IBConstants = require(InGameMenu.InspectAndBuyConstants)
local withLocalization = require(InGameMenu.Localization.withLocalization)
local getPurchaseInfo = require(InGameMenu.Selectors.getPurchaseInfo)

local BUTTON_WIDTH = 184
local BOTTOM_BAR_GRADIENT_SIZE = 20
local CONTEXTUAL_MENU_PADDING = 12
local ICON_BUTTON_SIZE = 22

local ROBUX_ICON = Images["icons/common/robux"]
local TRYON_ICON_OFF = Images["icons/menu/tryOnOff"]
local MORE_ICON = Images["icons/common/more"]
local OWNED_ICON = Images["icons/menu/avatar_on"]
local FAVORITE_OFF_ICON = Images["icons/actions/favoriteOff"]
local FAVORITE_ON_ICON = Images["icons/actions/favoriteOn"]
local REPORT_ICON = Images["icons/actions/feedback"]

local AssetDetailBottomBar = Roact.PureComponent:extend("AssetDetailBottomBar")

AssetDetailBottomBar.validateProps = t.strictInterface({
	bundleInfo = t.optional(t.table),

	-- from mapStateToProps
	purchaseInfo = t.optional(t.table),
	screenSize = t.Vector2,
	selectedItem = t.table,
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
end

function AssetDetailBottomBar:renderWithProviders(stylePalette, localized, getSelectionCursor)
	local theme = stylePalette.Theme
	local actionButtonHeight = IBConstants.BUTTON_HEIGHT + IBConstants.BOTTOM_BAR_PADDING
	local purchaseInfo = self.props.purchaseInfo
	local owned, robuxPrice, isLoading
	if purchaseInfo then
		owned = purchaseInfo.owned
		robuxPrice = purchaseInfo.robuxPrice
		isLoading = purchaseInfo.isLoading
	end

	local icon, text
	if owned then
		icon = OWNED_ICON
		text = ""
	elseif robuxPrice == 0 then
		icon = nil
		text = "Free" --TODO: Localize
	elseif robuxPrice then
		icon = ROBUX_ICON
		text = string.format("%.0f", robuxPrice)
	elseif isLoading then
		icon = nil
		text = "Offsale" --TODO: Localize
	end

	local favoriteIcon = FAVORITE_OFF_ICON
	if self.props.bundleInfo then
		if self.props.bundleInfo.isFavorited then
			favoriteIcon = FAVORITE_ON_ICON
		end
	elseif self.props.selectedItem then
		if self.props.selectedItem.isFavorited then
			favoriteIcon = FAVORITE_ON_ICON
		end
	end

	local contextualMenuButtons = {
		{
			icon = favoriteIcon,
			text = "Favorite", --TODO: Localize
			onActivated = self.closeMenu,
		},
		{
			icon = REPORT_ICON,
			text = "Report", --TODO: Localize
			onActivated = self.closeMenu,
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
						onActivated = function()
							--TODO: AVBURST-8605 Functionality
						end,
						isDisabled = owned or isLoading,
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
							icon = TRYON_ICON_OFF,
							iconColor3 = theme.SystemPrimaryDefault.Color,
							iconTransparency = theme.SystemPrimaryDefault.Transparency,
							onActivated = function()
								--TODO: AVBURST-8605 Functionality
							end,
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
	}
end, nil)(AssetDetailBottomBar)