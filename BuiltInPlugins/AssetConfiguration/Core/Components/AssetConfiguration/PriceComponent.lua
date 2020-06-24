--[[
	This component shows the sales status and price of published assets

	Necessary props:
		assetTypeEnum, Enum.AssetType
		allowedAssetTypesForRelease, table, information about what asset types can be released
		newAssetStatus, string, from AssetConfigConstants.ASSET_STATUS (what the status for the asset will be in the back-end after we save the changes on this widget)

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
local UILibrary = require(Libs.UILibrary)

local RoundTextBox = UILibrary.Component.RoundTextBox
local TitledFrame = UILibrary.Component.TitledFrame

local Util = Plugin.Core.Util
local ContextHelper = require(Util.ContextHelper)
local LayoutOrderIterator = require(Util.LayoutOrderIterator)
local Constants = require(Util.Constants)
local AssetConfigUtil = require(Util.AssetConfigUtil)
local Images = require(Util.Images)

local withTheme = ContextHelper.withTheme
local withLocalization = ContextHelper.withLocalization

local ROW_HEIGHT = 24
local TEXT_INPUT_BOX_HEIGHT = 40
local SHALLOW_ROW_HEIGHT = ROW_HEIGHT*0.75
local INPUT_BOX_WIDTH = 200

local FFlagEnablePurchasePluginFromLua2 = settings():GetFFlag("EnablePurchasePluginFromLua2")

local PriceComponent = Roact.PureComponent:extend("PriceComponent")

function PriceComponent:init(props)
	self.state = {
	}

	self.onPriceChange = function(text)
		if FFlagEnablePurchasePluginFromLua2 then
			if props.OnPriceChange then
				props.OnPriceChange(text)
			end
		else
			if tostring(props.Price) ~= tostring(text) then
				if props.OnPriceChange then
					props.OnPriceChange(text)
				end
			end
		end
	end
end

function PriceComponent:render(order)
	return withTheme(function(theme)
		return withLocalization(function(localization, localizedContent)
			local props = self.props

			local assetTypeEnum = props.AssetTypeEnum
			local allowedAssetTypesForRelease = props.AllowedAssetTypesForRelease
			local assetStatus = props.NewAssetStatus

			local price = props.Price
			local minPrice = props.MinPrice
			local maxPrice = props.MaxPrice
			local feeRate = props.FeeRate
			local isPriceValid = props.IsPriceValid

			local order = props.LayoutOrder

			local orderIterator = LayoutOrderIterator.new()
			local finalPrice, fee = AssetConfigUtil.calculatePotentialEarning(allowedAssetTypesForRelease, price, assetTypeEnum, minPrice)
			local localizedEarn = localization:getLocalizedEarningText(
				AssetConfigUtil.isOnSale(assetStatus) and finalPrice
			)

			local assetConfigTheme = theme.assetConfig

			local componentHeight = FFlagEnablePurchasePluginFromLua2 and
				TEXT_INPUT_BOX_HEIGHT+ROW_HEIGHT+SHALLOW_ROW_HEIGHT or
				TEXT_INPUT_BOX_HEIGHT+ROW_HEIGHT+SHALLOW_ROW_HEIGHT + 30

			-- Clamp the earn and fee to make sure it's within the max and min price range.
			if FFlagEnablePurchasePluginFromLua2 then
				local feePercent = feeRate / 100
				local earnPercent = 1 - feePercent
				fee = math.floor(math.min(fee or 0, feePercent * maxPrice))
				finalPrice = math.floor(math.min(finalPrice, earnPercent * maxPrice))
			end

			local feeVector = Constants.getTextSize(fee, Constants.FONT_SIZE_MEDIUM, Constants.FONT, Vector2.new(0, INPUT_BOX_WIDTH, 0, ROW_HEIGHT))
			local earnVector = Constants.getTextSize(finalPrice, Constants.FONT_SIZE_MEDIUM, Constants.FONT, Vector2.new(0, INPUT_BOX_WIDTH, 0, ROW_HEIGHT))

			return Roact.createElement(TitledFrame, {
				Title = localizedContent.Sales.Price,
				MaxHeight = componentHeight,
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
					Size = UDim2.new(1, 0, 1, -30),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					LayoutOrder = orderIterator:getNextOrder(),
				}, {
					UIListLayout = Roact.createElement("UIListLayout", {
						FillDirection = FFlagEnablePurchasePluginFromLua2 and Enum.FillDirection.Vertical or Enum.FillDirection.Horizontal,
						HorizontalAlignment = Enum.HorizontalAlignment.Left,
						VerticalAlignment = FFlagEnablePurchasePluginFromLua2 and Enum.VerticalAlignment.Top or Enum.VerticalAlignment.Center,
						SortOrder = Enum.SortOrder.LayoutOrder,
						Padding = FFlagEnablePurchasePluginFromLua2 and UDim.new(0, 0) or UDim.new(0, 10),
					}),

					TextInputBox = Roact.createElement("Frame", {
						Size = UDim2.new(0, INPUT_BOX_WIDTH, 0, TEXT_INPUT_BOX_HEIGHT),
						BackgroundTransparency = 1,
						LayoutOrder = 1,
					}, {
						UIListLayout = FFlagEnablePurchasePluginFromLua2 and Roact.createElement("UIListLayout", {
							FillDirection = Enum.FillDirection.Horizontal,
							HorizontalAlignment = Enum.HorizontalAlignment.Left,
							VerticalAlignment = Enum.VerticalAlignment.Center,
							SortOrder = Enum.SortOrder.LayoutOrder,
							Padding = UDim.new(0, 10),
						}),

						RobuxIcon = FFlagEnablePurchasePluginFromLua2 and Roact.createElement("ImageLabel",{
							Position = UDim2.new(0, 0, 0, 0),
							Size = Constants.Dialog.ROBUX_SIZE,

							Image = Images.ROBUX_SMALL,
							ImageColor3 = Color3.fromRGB(255, 255, 255),
							BackgroundTransparency = 1,
						}),

						RoundTextBox = Roact.createElement(RoundTextBox, {
							Active = AssetConfigUtil.isOnSale(assetStatus),
							Position = UDim2.new(0.1, 0, 0, 0),
							Size = UDim2.new(0.9, 0 ,1, 0),
							Text = price or "",
							TextSize = Constants.FONT_SIZE_MEDIUM,
							Multiline = false,
							MaxLength = 1000,
							Height = TEXT_INPUT_BOX_HEIGHT,
							ShowToolTip = false,
							ErrorBorder = not isPriceValid,
							WidthOffset = -21,

							SetText = self.onPriceChange,
						}),
					}),

					PriceRangeLabel = Roact.createElement("TextLabel", {
						Size = FFlagEnablePurchasePluginFromLua2 and UDim2.new(0, 105, 0, 15) or UDim2.new(1, 0, 1, 0),

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

				YouEarnLabel = (not FFlagEnablePurchasePluginFromLua2) and Roact.createElement("TextLabel", {
					Size = UDim2.new(1, 0, 0, ROW_HEIGHT),

					BackgroundTransparency = 1,
					TextColor3 = AssetConfigUtil.isReadyForSale(assetStatus) and assetConfigTheme.textColor or assetConfigTheme.labelTextColor,
					BorderSizePixel = 0,

					Font = Constants.FONT,
					TextSize = Constants.FONT_SIZE_SMALL,

					Text = localizedEarn,
					TextXAlignment = Enum.TextXAlignment.Left,

					LayoutOrder = orderIterator:getNextOrder()
				}),

				ServiceFeeLabel = (not FFlagEnablePurchasePluginFromLua2) and Roact.createElement("TextLabel", {
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

				FeeFrame = FFlagEnablePurchasePluginFromLua2 and Roact.createElement("Frame", {
					Size = UDim2.new(0, INPUT_BOX_WIDTH, 0, ROW_HEIGHT),

					BackgroundTransparency = 1,
					BorderSizePixel = 0,

					LayoutOrder = 2,
				}, {
					Label = Roact.createElement("TextLabel", {
						Size = UDim2.new(1, 0, 1, 0),

						BackgroundTransparency = 1,
						BorderSizePixel = 0,

						Text = localization:getLocalizedFee(tostring(feeRate)),
						TextColor3 = assetConfigTheme.textColor,
						Font = Constants.FONT,
						TextSize = Constants.FONT_SIZE_MEDIUM,
						TextXAlignment = Enum.TextXAlignment.Left,
					}),

					BaseFrame = Roact.createElement("Frame", {
						Size = UDim2.new(1, 0, 1, 0),

						BackgroundTransparency = 1,
						BorderSizePixel = 0,

					}, {

						UIListLayout = Roact.createElement("UIListLayout", {
							FillDirection = Enum.FillDirection.Horizontal,
							HorizontalAlignment = Enum.HorizontalAlignment.Right,
							VerticalAlignment = Enum.VerticalAlignment.Center,
							SortOrder = Enum.SortOrder.LayoutOrder,
							Padding = UDim.new(0, 5),
						}),

						Fee = Roact.createElement("TextLabel", {
							Size = UDim2.new(0, feeVector.X, 1, 0),

							BackgroundTransparency = 1,
							BorderSizePixel = 0,

							Text = fee,
							TextColor3 = assetConfigTheme.textColor,
							Font = Constants.FONT,
							TextSize = Constants.FONT_SIZE_LARGE,
							TextXAlignment = Enum.TextXAlignment.Right,

							LayoutOrder = 3,
						}),

						Robux = Roact.createElement("ImageLabel", {
							Size = Constants.Dialog.ROBUX_SIZE,

							Image = Images.ROBUX_SMALL,
							ImageColor3 = assetConfigTheme.textColor,
							BackgroundTransparency = 1,

							LayoutOrder = 2,
						}),

						Minus = Roact.createElement("Frame", {
							Size = UDim2.new(0, 6, 0, 2),

							BackgroundTransparency = 0,
							BackgroundColor3 = assetConfigTheme.textColor,
							BorderSizePixel = 0,

							LayoutOrder = 1,
						}),
					}),
				}),

				EarnFrame = FFlagEnablePurchasePluginFromLua2 and Roact.createElement("Frame", {
					Size = UDim2.new(0, INPUT_BOX_WIDTH, 0, ROW_HEIGHT),

					BackgroundTransparency = 1,
					BorderSizePixel = 0,

					LayoutOrder = 3,
				}, {
					EarnLabel = Roact.createElement("TextLabel", {
						Size = UDim2.new(1, 0, 1, 0),

						BackgroundTransparency = 1,
						BorderSizePixel = 0,

						Text = localizedContent.Sales.Earn,
						TextColor3 = assetConfigTheme.textColor,
						Font = Constants.FONT,
						TextSize = Constants.FONT_SIZE_MEDIUM,
						TextXAlignment = Enum.TextXAlignment.Left,
					}),

					BaseFrame = Roact.createElement("Frame", {
						Size = UDim2.new(1, 0, 1, 0),

						BackgroundTransparency = 1,
						BorderSizePixel = 0,

					}, {
						UIListLayout = Roact.createElement("UIListLayout", {
							FillDirection = Enum.FillDirection.Horizontal,
							HorizontalAlignment = Enum.HorizontalAlignment.Right,
							VerticalAlignment = Enum.VerticalAlignment.Center,
							SortOrder = Enum.SortOrder.LayoutOrder,
							Padding = UDim.new(0, 5),
						}),

						Earn = Roact.createElement("TextLabel", {
							Size = UDim2.new(0, earnVector.X, 1, 0),

							BackgroundTransparency = 1,
							BorderSizePixel = 0,

							Text = finalPrice,
							TextColor3 = assetConfigTheme.textColor,
							Font = Constants.FONT,
							TextSize = Constants.FONT_SIZE_LARGE,
							TextXAlignment = Enum.TextXAlignment.Right,

							LayoutOrder = 2,
						}),

						Robux = Roact.createElement("ImageLabel", {
							Size = Constants.Dialog.ROBUX_SIZE,

							Image = Images.ROBUX_SMALL,
							ImageColor3 = assetConfigTheme.textColor,
							BackgroundTransparency = 1,

							LayoutOrder = 1,
						}),
					})
				})
			})
		end)
	end)
end

return PriceComponent