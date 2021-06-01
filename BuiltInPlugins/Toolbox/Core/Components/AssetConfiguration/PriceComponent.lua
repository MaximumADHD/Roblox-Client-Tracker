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
local FFlagToolboxReplaceUILibraryComponentsPt1 = game:GetFastFlag("ToolboxReplaceUILibraryComponentsPt1")

local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local UILibrary = require(Libs.UILibrary)
local ContextServices = require(Libs.Framework).ContextServices

local RoundTextBox = UILibrary.Component.RoundTextBox

local TitledFrame
if FFlagToolboxReplaceUILibraryComponentsPt1 then
	TitledFrame = require(Libs.Framework).StudioUI.TitledFrame
else
	TitledFrame = UILibrary.Component.TitledFrame
end

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

local PriceComponent = Roact.PureComponent:extend("PriceComponent")

local FFlagPriceComponentTextSize = game:DefineFastFlag("PriceComponentTextSize", false)

function PriceComponent:init(props)
	self.onPriceChange = function(text)
		if props.OnPriceChange then
			props.OnPriceChange(text)
		end
	end
end

function PriceComponent:render()
	if FFlagToolboxReplaceUILibraryComponentsPt1 then
		return withLocalization(function(localization, localizedContent)
			return self:renderContent(nil, localization, localizedContent)
		end)
	else
		return withTheme(function(theme)
			return withLocalization(function(localization, localizedContent)
				return self:renderContent(theme, localization, localizedContent)
			end)
		end)
	end
end

function PriceComponent:renderContent(theme, localization, localizedContent)
	if FFlagToolboxReplaceUILibraryComponentsPt1 then
		theme = self.props.Stylizer
	end

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

	local assetConfigTheme = theme.assetConfig

	local componentHeight = TEXT_INPUT_BOX_HEIGHT+ROW_HEIGHT+SHALLOW_ROW_HEIGHT

	-- Clamp the earn and fee to make sure it's within the max and min price range.
	local feePercent = feeRate / 100
	local earnPercent = 1 - feePercent
	fee = math.floor(math.min(fee or 0, feePercent * maxPrice))
	finalPrice = math.floor(math.min(finalPrice, earnPercent * maxPrice))

	local UntypedVector2 = Vector2
	local inputBoxSize = FFlagPriceComponentTextSize and Vector2.new(INPUT_BOX_WIDTH, ROW_HEIGHT) or UntypedVector2.new(0, INPUT_BOX_WIDTH, 0, ROW_HEIGHT)
	local feeVector = Constants.getTextSize(fee, Constants.FONT_SIZE_MEDIUM, Constants.FONT, inputBoxSize)
	local earnVector = Constants.getTextSize(finalPrice, Constants.FONT_SIZE_MEDIUM, Constants.FONT, inputBoxSize)

	return Roact.createElement(TitledFrame, FFlagToolboxReplaceUILibraryComponentsPt1 and {
		Title = localizedContent.Sales.Price,
		LayoutOrder = order
	} or {
		Title = localizedContent.Sales.Price,
		MaxHeight = componentHeight,
		TextSize = Constants.FONT_SIZE_TITLE,
		LayoutOrder = order
	}, {
		UIListLayout = (not FFlagToolboxReplaceUILibraryComponentsPt1) and Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, 0),
		}),

		InputRow = Roact.createElement("Frame", {
			Size = FFlagToolboxReplaceUILibraryComponentsPt1 and UDim2.new(1, 0, componentHeight, -30) or UDim2.new(1, 0, 1, -30),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			LayoutOrder = orderIterator:getNextOrder(),
		}, {
			UIListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 0),
			}),

			TextInputBox = Roact.createElement("Frame", {
				Size = UDim2.new(0, INPUT_BOX_WIDTH, 0, TEXT_INPUT_BOX_HEIGHT),
				BackgroundTransparency = 1,
				LayoutOrder = 1,
			}, {
				UIListLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 10),
				}),

				RobuxIcon = Roact.createElement("ImageLabel",{
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
				Size = UDim2.new(0, 105, 0, 15),

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

		FeeFrame = Roact.createElement("Frame", {
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

		EarnFrame = Roact.createElement("Frame", {
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
end

if FFlagToolboxReplaceUILibraryComponentsPt1 then
	ContextServices.mapToProps(PriceComponent, {
		Stylizer = ContextServices.Stylizer,
	})
end

return PriceComponent