--[[
	This component shows the sales status and price of published assets

	Necessary props:
		title, string, used to set the title for the sales componnent.
		newAssetStatus, string, from AssetConfigConstants.ASSET_STATUS (what the status for the asset will be in the back-end after we save the changes on this widget)
		currentAssetStatus, string, from AssetConfigConstants.ASSET_STATUS (what the current status for the asset is in the back-end)
		canChangeSalesStatus, bool, will be used to determine if the toggle button for sale is enabled or disabled.

		onStatusChange, function, sales status has changed

	Optional props:
		LayoutOrder, number, used to override position of the whole component by the layouter.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local ContextServices = require(Libs.Framework).ContextServices
local withContext = ContextServices.withContext

local ToggleButton = require(Libs.Framework).UI.ToggleButton
local TitledFrame = require(Libs.Framework).StudioUI.TitledFrame

local Util = Plugin.Core.Util
local ContextHelper = require(Util.ContextHelper)
local LayoutOrderIterator = require(Util.LayoutOrderIterator)
local Constants = require(Util.Constants)
local AssetConfigUtil = require(Util.AssetConfigUtil)
local AssetConfigConstants = require(Util.AssetConfigConstants)

local withLocalization = ContextHelper.withLocalization

local ROW_HEIGHT = 24
local TOGGLE_BUTTON_WIDTH = 40

local SalesComponent = Roact.PureComponent:extend("SalesComponent")

function SalesComponent:init(props)
	self.onToggle = function()
		local props = self.props
		local canChangeSalesStatus = props.CanChangeSalesStatus
		local newAssetStatus = props.NewAssetStatus
		local currentAssetStatus = props.CurrentAssetStatus
		local onStatusChange = props.OnStatusChange

		if canChangeSalesStatus then
			local newStatus = AssetConfigUtil.isOnSale(currentAssetStatus) and
				AssetConfigConstants.ASSET_STATUS.OffSale or
				AssetConfigConstants.ASSET_STATUS.OnSale
			onStatusChange(newStatus)
		end
	end
end

function SalesComponent:render()
	return withLocalization(function(localization, localizedContent)
		return self:renderContent(nil, localization, localizedContent)
	end)
end

function SalesComponent:renderContent(theme, localization, localizedContent)
	theme = self.props.Stylizer

	local props = self.props

	local title = props.Title
	local newAssetStatus = props.NewAssetStatus
	local currentAssetStatus = props.CurrentAssetStatus
	local assetTypeEnum = props.AssetTypeEnum
	local assetConfigTheme = theme.assetConfig

	local market = AssetConfigUtil.isMarketplaceAsset(assetTypeEnum) and "Marketplace" or "Catalog"
	local user = AssetConfigUtil.isMarketplaceAsset(assetTypeEnum) and "developer" or "user"

	local subText = localization:getSalesMessage(market, user)

	local canChangeSalesStatus = props.CanChangeSalesStatus
	local textColor = assetConfigTheme.labelTextColor

	local layoutOrder = props.LayoutOrder
	local orderIterator = LayoutOrderIterator.new()

	return Roact.createElement(TitledFrame, {
		Title = title,
		LayoutOrder = layoutOrder,
	}, {
		ToggleButton = Roact.createElement(ToggleButton, {
			Disabled = not canChangeSalesStatus,
			LayoutOrder = orderIterator:getNextOrder(),
			OnClick = self.onToggle,
			Selected = AssetConfigUtil.isOnSale(newAssetStatus),
			Size = UDim2.new(0, TOGGLE_BUTTON_WIDTH, 0, ROW_HEIGHT),
		}),

		Label = Roact.createElement("TextLabel", {
			Size = UDim2.new(1, 0, 0, ROW_HEIGHT),

			BackgroundTransparency = 1,
			TextColor3 = textColor,
			BorderSizePixel = 0,

			Font = Constants.FONT,
			TextSize = Constants.FONT_SIZE_SMALL,

			Text = subText,
			TextXAlignment = Enum.TextXAlignment.Left,

			LayoutOrder = orderIterator:getNextOrder()
		})
	})
end


SalesComponent = withContext({
	Stylizer = ContextServices.Stylizer,
})(SalesComponent)


return SalesComponent