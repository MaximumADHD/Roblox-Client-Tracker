--[[
	This component shows the sales status and price of published assets

	Necessary props:
		title, string, used to set the title for the sales componnent.
		newAssetStatus, string, from Constants.AssetStatus (what the status for the asset will be in the back-end after we save the changes on this widget)
		currentAssetStatus, string, from Constants.AssetStatus (what the current status for the asset is in the back-end)
		canChangeSalesStatus, bool, will be used to determine if the toggle button for sale is enabled or disabled.

		onStatusChange, function, sales status has changed

	Optional props:
		LayoutOrder, number, used to override position of the whole component by the layouter.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local UILibrary = Libs.UILibrary
local ToggleButton = require(UILibrary.Components.ToggleButton)
local TitledFrame = require(UILibrary.Components.TitledFrame)

local Util = Plugin.Core.Util
local ContextHelper = require(Util.ContextHelper)
local LayoutOrderIterator = require(Util.LayoutOrderIterator)
local Constants = require(Util.Constants)
local AssetConfigUtil = require(Util.AssetConfigUtil)

local withTheme = ContextHelper.withTheme
local withLocalization = ContextHelper.withLocalization

local ROW_HEIGHT = 24
local TOGGLE_BUTTON_WIDTH = 40

local SalesComponent = Roact.PureComponent:extend("SalesComponent")

function SalesComponent:init(props)
	self.onToggle = function()
		local props = self.props
		local canChangeSalesStatus = props.canChangeSalesStatus
		local newAssetStatus = props.newAssetStatus
		local currentAssetStatus = props.currentAssetStatus
		local onStatusChange = props.onStatusChange

		if canChangeSalesStatus then
			local onSaleStatus = AssetConfigUtil.isOnSale(currentAssetStatus) and currentAssetStatus or Constants.AssetStatus.OnSale
			local offSaleStatus = not AssetConfigUtil.isOnSale(currentAssetStatus) and currentAssetStatus or Constants.AssetStatus.OffSale -- this allows us to return to the exact status in the back-end

			local newStatus = AssetConfigUtil.isOnSale(newAssetStatus) and offSaleStatus or onSaleStatus
			onStatusChange(newStatus)
		end
	end
end

function SalesComponent:render(order)
	return withTheme(function(theme)
		return withLocalization(function(_, localizedContent)
			local props = self.props

			local title = props.title
			local newAssetStatus = props.newAssetStatus
			local currentAssetStatus = props.currentAssetStatus

			local subText = AssetConfigUtil.getSubText(newAssetStatus, currentAssetStatus, localizedContent)
			local canChangeSalesStatus = props.canChangeSalesStatus

			local layoutOrder = props.layoutOrder
			local orderIterator = LayoutOrderIterator.new()

			local assetConfigTheme = theme.assetConfig

			return Roact.createElement(TitledFrame, {
				Title = title,
				MaxHeight = ROW_HEIGHT*2,
				TextSize = Constants.FONT_SIZE_TITLE,
				LayoutOrder = layoutOrder
			}, {
				UIListLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					VerticalAlignment = Enum.VerticalAlignment.Top,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 0),
				}),

				ToggleButton = Roact.createElement(ToggleButton, {
					Size = UDim2.new(0, TOGGLE_BUTTON_WIDTH, 0, ROW_HEIGHT),
					Enabled = canChangeSalesStatus,
					IsOn = AssetConfigUtil.isOnSale(newAssetStatus),

					onToggle = self.onToggle,

					LayoutOrder = orderIterator:getNextOrder(),
				}),

				Label = Roact.createElement("TextLabel", {
					Size = UDim2.new(1, 0, 0, ROW_HEIGHT),

					BackgroundTransparency = 1,
					TextColor3 = canChangeSalesStatus and assetConfigTheme.textColor or assetConfigTheme.labelTextColor,
					BorderSizePixel = 0,

					Font = Constants.FONT,
					TextSize = Constants.FONT_SIZE_SMALL,

					Text = subText,
					TextXAlignment = Enum.TextXAlignment.Left,

					LayoutOrder = orderIterator:getNextOrder()
				})
			})
		end)
	end)
end

return SalesComponent
