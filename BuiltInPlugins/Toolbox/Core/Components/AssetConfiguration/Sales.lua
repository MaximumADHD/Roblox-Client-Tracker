--[[
	This component shows the sales status and price of published assets

	Necessary props:
	AssetTypeEnum, Enum.AssetType
	AllowedAssetTypesForRelease, table, information about what asset types can be released
	AssetStatusChanged, string, from Constants.AssetStatus (what the status for the asset will be in the back-end after we save the changes on this widget)
	AssetStatusInBackend, string, from Constants.AssetStatus (what the current status for the asset is in the back-end)
	Price, number
	MinPrice, number
	MaxPrice, number

	function onStatusChange, sales status has changed
	function onPriceChange = price has changed
	function validatePrice = is the price valid (numerical/within boundaries etc)
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local UILibrary = Libs.UILibrary
local ToggleButton = require(UILibrary.Components.ToggleButton)
local RoundTextBox = require(Libs.UILibrary.Components.RoundTextBox)
local TitledFrame = require(Libs.UILibrary.Components.TitledFrame)
local Separator = require(Libs.UILibrary.Components.Separator)
local MathUtils = require(Libs.UILibrary.Utils.MathUtils)

local Util = Plugin.Core.Util
local ContextHelper = require(Util.ContextHelper)
local LayoutOrderIterator = require(Util.LayoutOrderIterator)
local Constants = require(Util.Constants)

local withTheme = ContextHelper.withTheme
local withLocalization = ContextHelper.withLocalization

local TOTAL_VERTICAL_PADDING = 60
local ROW_HEIGHT = 24

local Sales = Roact.PureComponent:extend("Sales")

local function isReadyForSale(assetStatus)
	return Constants.AssetStatus.ReviewApproved == assetStatus or
		Constants.AssetStatus.OnSale == assetStatus or
		Constants.AssetStatus.OffSale == assetStatus or
		Constants.AssetStatus.DelayedRelease == assetStatus
end

local function isOnSale(assetStatus)
	return Constants.AssetStatus.OnSale == assetStatus
end

local function getMarketplaceFeesPercentage(allowedAssetTypesForRelease, assetTypeEnum)
	local releaseDataForAssetType = allowedAssetTypesForRelease[assetTypeEnum.Name]
	return releaseDataForAssetType and releaseDataForAssetType.marketplaceFeesPercentage or 0
end

local function calculatePotentialEarning(allowedAssetTypesForRelease, price, assetTypeEnum)
	price = tonumber(price)
	if not price then
		return 0
	end
	price = MathUtils:round(price)
	local convertToZeroToOne = 0.01
	local scaler = convertToZeroToOne * getMarketplaceFeesPercentage(allowedAssetTypesForRelease, assetTypeEnum)
	local marketPlaceFee = math.max(1, MathUtils:round(price * scaler))
	return math.max(0, price - marketPlaceFee)
end

local function getSubText(assetStatusChanged, assetStatusInBackend, localizedContent)
	if not isReadyForSale(assetStatusChanged) then
		return localizedContent.Sales.ItemCannotBeSold
	elseif isOnSale(assetStatusChanged) and isOnSale(assetStatusInBackend) then
		return localizedContent.Sales.Onsale
	elseif not isOnSale(assetStatusChanged) and isOnSale(assetStatusInBackend) then
		return localizedContent.Sales.OffsaleApplyToSave
	elseif isOnSale(assetStatusChanged) and not isOnSale(assetStatusInBackend) then
		return localizedContent.Sales.OnsaleApplyToSave
	end
	return localizedContent.Sales.Offsale
end

function Sales:createSalesStatus(order, assetConfigTheme, localizedContent)
	local TOGGLE_BUTTON_WIDTH = 40

	local props = self.props
	local assetStatusChanged = props.AssetStatusChanged
	local assetStatusInBackend = props.AssetStatusInBackend
	local onStatusChange = props.onStatusChange

	local subText = getSubText(assetStatusChanged, assetStatusInBackend, localizedContent)
	local canChangeSalesStatus = isReadyForSale(assetStatusChanged)

	local orderIterator = LayoutOrderIterator.new()

	return Roact.createElement(TitledFrame, {
		Title = localizedContent.Sales.Sale,
		MaxHeight = ROW_HEIGHT*2,
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

		ToggleButton = Roact.createElement(ToggleButton, {
			Size = UDim2.new(0, TOGGLE_BUTTON_WIDTH, 0, ROW_HEIGHT),
			Enabled = canChangeSalesStatus,
			IsOn = isOnSale(assetStatusChanged),

			onToggle = function()
				if canChangeSalesStatus then
					local onSaleStatus = isOnSale(assetStatusInBackend) and assetStatusInBackend or Constants.AssetStatus.OnSale
					local offSaleStatus = not isOnSale(assetStatusInBackend) and assetStatusInBackend or Constants.AssetStatus.OffSale -- this allows us to return to the exact status in the back-end

					local newStatus = isOnSale(assetStatusChanged) and offSaleStatus or onSaleStatus
					onStatusChange(newStatus)
				end
			end,

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
end

function Sales:createPrice(order, assetConfigTheme, localization, localizedContent)
	local TEXT_INPUT_BOX_HEIGHT = 40
	local SHALLOW_ROW_HEIGHT = ROW_HEIGHT*0.75
	local INPUT_BOX_WIDTH = 200

	local orderIterator = LayoutOrderIterator.new()

	local props = self.props
	local assetTypeEnum = props.AssetTypeEnum
	local allowedAssetTypesForRelease = props.AllowedAssetTypesForRelease
	local assetStatus = props.AssetStatusChanged

	local minPrice = props.MinPrice
	local maxPrice = props.MaxPrice

	local onStatusChange = props.onStatusChange
	local onPriceChange = props.onPriceChange
	local validatePrice = props.validatePrice

	local price = props.Price

	local isPriceValid = validatePrice(price, minPrice, maxPrice)

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
					Active = isOnSale(assetStatus),
					Text = price,
					TextSize = Constants.FONT_SIZE_SMALL,
					Multiline = false,
					MaxLength = 1000,
					Height = TEXT_INPUT_BOX_HEIGHT,
					ShowToolTip = false,
					ErrorBorder = not isPriceValid,

					SetText = function(text)
						if tostring(price) ~= tostring(text) then
							onPriceChange(text)
						end
					end
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
			TextColor3 = isReadyForSale(assetStatus) and assetConfigTheme.textColor or assetConfigTheme.labelTextColor,
			BorderSizePixel = 0,

			Font = Constants.FONT,
			TextSize = Constants.FONT_SIZE_SMALL,

			Text = localization:getLocalizedEarningText(isOnSale(assetStatus) and calculatePotentialEarning(allowedAssetTypesForRelease, price, assetTypeEnum) or 0),
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
end

function Sales:init(props)
	self.frameRef = Roact.createRef()
end

function Sales:render()
	return withTheme(function(theme)
		return withLocalization(function(localization, localizedContent)
			local props = self.props

			local Size = props.Size
			local LayoutOrder = props.LayoutOrder

			local orderIterator = LayoutOrderIterator.new()

			return Roact.createElement("ScrollingFrame", {
				Size = Size,

				BackgroundTransparency = 1,
				BorderSizePixel = 0,

				LayoutOrder = LayoutOrder,

				[Roact.Ref] = self.frameRef,
			}, {
				Padding = Roact.createElement("UIPadding", {
					PaddingTop = UDim.new(0, TOTAL_VERTICAL_PADDING*0.5),
					PaddingBottom = UDim.new(0, TOTAL_VERTICAL_PADDING*0.5),
					PaddingLeft = UDim.new(0, 30),
					PaddingRight = UDim.new(0, 30),
				}),

				UIListLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					VerticalAlignment = Enum.VerticalAlignment.Top,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 32),

					[Roact.Change.AbsoluteContentSize] = function(rbx)
						self.frameRef.current.CanvasSize = UDim2.new(Size.X.Scale, Size.X.Offset, 0, rbx.AbsoluteContentSize.y + TOTAL_VERTICAL_PADDING)
					end
				}),

				SalesStatus = self:createSalesStatus(orderIterator:getNextOrder(), theme.assetConfig, localizedContent),
				Separator1 = Roact.createElement(Separator, {
					LayoutOrder = orderIterator:getNextOrder(),
				}),
				Price = self:createPrice(orderIterator:getNextOrder(), theme.assetConfig, localization, localizedContent),
			})
		end)
	end)
end

return Sales