--[[
	This component shows the sales status and price of published assets

	Necessary props:
		assetTypeEnum, Enum.AssetType
		allowedAssetTypesForRelease, table, information about what asset types can be released
		newAssetStatus, string, from Constants.AssetStatus (what the status for the asset will be in the back-end after we save the changes on this widget)

		price, number, the actual price.
		minPrice, number, minimal price we allow.
		maxPrice, number, maximum price we allow.
		isPriceValid, bool, to change the UI appearance.

		onPriceChange, function, price has changed

	Optional props:
		LayoutOrder, number, used to override position of the whole component by the layouter.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local UILibrary = Libs.UILibrary
local RoundTextBox = require(UILibrary.Components.RoundTextBox)
local TitledFrame = require(UILibrary.Components.TitledFrame)

local Util = Plugin.Core.Util
local ContextHelper = require(Util.ContextHelper)
local LayoutOrderIterator = require(Util.LayoutOrderIterator)
local Constants = require(Util.Constants)
local AssetConfigUtil = require(Util.AssetConfigUtil)

local withTheme = ContextHelper.withTheme
local withLocalization = ContextHelper.withLocalization

local ROW_HEIGHT = 24
local TEXT_INPUT_BOX_HEIGHT = 40
local SHALLOW_ROW_HEIGHT = ROW_HEIGHT*0.75
local INPUT_BOX_WIDTH = 200

local PriceComponent = Roact.PureComponent:extend("PriceComponent")

function PriceComponent:init(props)
	self.state = {
	}

	self.onPriceChange = function(text)
		if tostring(props.Price) ~= tostring(text) then
			if props.onPriceChange then
				props.onPriceChange(text)
			end
		end
	end
end

function PriceComponent:render(order)
	return withTheme(function(theme)
		return withLocalization(function(localization, localizedContent)
			local props = self.props

			local assetTypeEnum = props.assetTypeEnum
			local allowedAssetTypesForRelease = props.allowedAssetTypesForRelease
			local assetStatus = props.newAssetStatus

			local price = props.price
			local minPrice = props.minPrice
			local maxPrice = props.maxPrice
			local isPriceValid = props.isPriceValid

			local order = props.layoutOrder

			local orderIterator = LayoutOrderIterator.new()

			local assetConfigTheme = theme.assetConfig

			return Roact.createElement(TitledFrame, {
				Title = localizedContent.Sales.Price,
				MaxHeight = TEXT_INPUT_BOX_HEIGHT+ROW_HEIGHT+SHALLOW_ROW_HEIGHT,
				TextSize = Constants.FONT_SIZE_TITLE,
				LayoutOrder = order
			}, {
				UIListLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					VerticalAlignment = Enum.VerticalAlignment.Top,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 0),
				}),

				InputRow = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, TEXT_INPUT_BOX_HEIGHT),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					LayoutOrder = orderIterator:getNextOrder(),
				}, {
					UIListLayout = Roact.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Horizontal,
						HorizontalAlignment = Enum.HorizontalAlignment.Left,
						VerticalAlignment = Enum.VerticalAlignment.Center,
						SortOrder = Enum.SortOrder.LayoutOrder,
						Padding = UDim.new(0, 10),
					}),

					TextInputBox = Roact.createElement("Frame", {
						Size = UDim2.new(0, INPUT_BOX_WIDTH, 1, 0),
						BackgroundTransparency = 1,
						LayoutOrder = 1,
					}, {
						Roact.createElement(RoundTextBox, {
							Active = AssetConfigUtil.isOnSale(assetStatus),
							Text = price,
							TextSize = Constants.FONT_SIZE_SMALL,
							Multiline = false,
							MaxLength = 1000,
							Height = TEXT_INPUT_BOX_HEIGHT,
							ShowToolTip = false,
							ErrorBorder = not isPriceValid,

							SetText = self.onPriceChange,
						}),
					}),

					PriceRangeLabel = Roact.createElement("TextLabel", {
						Size = UDim2.new(1, 0, 1, 0),

						BackgroundTransparency = 1,
						TextColor3 = isPriceValid and assetConfigTheme.labelTextColor or assetConfigTheme.errorColor,
						BorderSizePixel = 0,

						Font = Constants.FONT,
						TextSize = Constants.FONT_SIZE_SMALL,

						Text = localization:getLocalizedPriceRangeText(minPrice, maxPrice),
						TextXAlignment = Enum.TextXAlignment.Left,
						TextYAlignment = Enum.TextYAlignment.Center,
						LayoutOrder = 2,
					}),
				}),

				YouEarnLabel = Roact.createElement("TextLabel", {
					Size = UDim2.new(1, 0, 0, ROW_HEIGHT),

					BackgroundTransparency = 1,
					TextColor3 = AssetConfigUtil.isReadyForSale(assetStatus) and assetConfigTheme.textColor or assetConfigTheme.labelTextColor,
					BorderSizePixel = 0,

					Font = Constants.FONT,
					TextSize = Constants.FONT_SIZE_SMALL,

					Text = localization:getLocalizedEarningText(
						AssetConfigUtil.isOnSale(assetStatus) and AssetConfigUtil.calculatePotentialEarning(allowedAssetTypesForRelease, price, assetTypeEnum) or 0
					),
					TextXAlignment = Enum.TextXAlignment.Left,

					LayoutOrder = orderIterator:getNextOrder()
				}),

				ServiceFeeLabel = Roact.createElement("TextLabel", {
					Size = UDim2.new(1, 0, 0, SHALLOW_ROW_HEIGHT),

					BackgroundTransparency = 1,
					TextColor3 = assetConfigTheme.labelTextColor,
					BorderSizePixel = 0,

					Font = Constants.FONT,
					TextSize = Constants.FONT_SIZE_SMALL,

					Text = localizedContent.Sales.ServiceFee,
					TextXAlignment = Enum.TextXAlignment.Left,

					LayoutOrder = orderIterator:getNextOrder()
				}),
			})
		end)
	end)
end

return PriceComponent