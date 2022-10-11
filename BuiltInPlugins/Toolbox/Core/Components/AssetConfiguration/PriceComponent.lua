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
		allowedAssetTypesForFree, array, monetizable asset types that the user is allowed to set as free.
]]
local FIntToolboxPriceTextBoxMaxCount = game:GetFastInt("ToolboxPriceTextBoxMaxCount")
local FFlagToolboxAssetConfigurationVerifiedPrice = game:GetFastFlag("ToolboxAssetConfigurationVerifiedPrice")

local Plugin = script.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local Framework = require(Packages.Framework)
local RoactRodux = if FFlagToolboxAssetConfigurationVerifiedPrice then require(Packages.RoactRodux) else nil
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local TextInput = Framework.UI.TextInput
local TextLabel = Framework.UI.TextLabel
local LinkText = if FFlagToolboxAssetConfigurationVerifiedPrice then Framework.UI.LinkText else nil
local TitledFrame = Framework.StudioUI.TitledFrame
local GetTextSize = Framework.Util.GetTextSize

local Dash = Framework.Dash
local Util = Plugin.Core.Util
local LayoutOrderIterator = require(Util.LayoutOrderIterator)
local Constants = require(Util.Constants)
local AssetConfigUtil = require(Util.AssetConfigUtil)
local Images = require(Util.Images)
local ToolboxUtilities = if FFlagToolboxAssetConfigurationVerifiedPrice then require(Util.ToolboxUtilities) else nil

local ROW_HEIGHT = 24
local TEXT_INPUT_BOX_HEIGHT = 40
local SHALLOW_ROW_HEIGHT = ROW_HEIGHT*0.75
local INPUT_BOX_WIDTH = 225

local GuiService = if FFlagToolboxAssetConfigurationVerifiedPrice then game:GetService("GuiService") else nil

local PriceComponent = Roact.PureComponent:extend("PriceComponent")

local FFlagPriceComponentTextSize = game:GetFastFlag("PriceComponentTextSize")

function PriceComponent:init(props)
	self.onPriceChange = function(text)
		if props.OnPriceChange then
			props.OnPriceChange(text)
		end
	end

	if FFlagToolboxAssetConfigurationVerifiedPrice then
		self.onClickLearnMore = function()
			GuiService:OpenBrowserWindow(ToolboxUtilities.getVerificationDocumentationUrl())
		end
	end
end

function PriceComponent:render()
	local props = self.props
	local theme = props.Stylizer
	local localization = props.Localization

	local assetTypeEnum = props.AssetTypeEnum
	local allowedAssetTypesForRelease = props.AllowedAssetTypesForRelease
	local allowedAssetTypesForFree = props.AllowedAssetTypesForFree
	local assetStatus = props.NewAssetStatus

	local price = props.Price
	local minPrice = props.MinPrice
	local maxPrice = props.MaxPrice
	local feeRate = props.FeeRate
	local isPriceValid = props.IsPriceValid

	local order = props.LayoutOrder

	local orderIterator = LayoutOrderIterator.new()
	local finalPrice = AssetConfigUtil.calculatePotentialEarning(allowedAssetTypesForRelease, price, assetTypeEnum, minPrice)

	local assetConfigTheme = theme.assetConfig
	local publishAssetTheme = if FFlagToolboxAssetConfigurationVerifiedPrice then theme.publishAsset else nil

	local componentHeight = TEXT_INPUT_BOX_HEIGHT+ROW_HEIGHT+SHALLOW_ROW_HEIGHT

	local creatorEarningsPercent = math.max(100 - feeRate, 0)
	-- Clamp the earnings and fee to make sure it's within the max and min price range.
	local feePercent = feeRate / 100
	local earnPercent = 1 - feePercent
	finalPrice = math.floor(math.min(finalPrice, earnPercent * maxPrice))

	local finalPriceString = tostring(finalPrice)

	local canBeSetAsFree = if allowedAssetTypesForFree then Dash.find(allowedAssetTypesForFree, function(assetType)
		return assetType == assetTypeEnum.Name
	end) else nil
	local numberPrice = tonumber(price)
	local isOverMaxPrice = if numberPrice then numberPrice > maxPrice else nil

	local UntypedVector2 = Vector2
	local inputBoxSize = FFlagPriceComponentTextSize and Vector2.new(INPUT_BOX_WIDTH, ROW_HEIGHT) or UntypedVector2.new(0, INPUT_BOX_WIDTH, 0, ROW_HEIGHT)
	local earnVector = GetTextSize(finalPriceString, Constants.FONT_SIZE_MEDIUM, Constants.FONT, inputBoxSize)

	local textboxText = tostring(price or "")

	local textLength = utf8.len(textboxText)
	local textOverMaxCount = textLength > FIntToolboxPriceTextBoxMaxCount

	local subTextColor = if isPriceValid then assetConfigTheme.labelTextColor else assetConfigTheme.errorColor

	local publishingRequirements = props.publishingRequirements
	local isVerified = if FFlagToolboxAssetConfigurationVerifiedPrice then publishingRequirements and publishingRequirements.verification and publishingRequirements.verification.isVerified else nil

	-- show price input if we did not retrieve any publishing requirements (non-creator marketplace asset) or if they are verified already
	local showPriceInput = if FFlagToolboxAssetConfigurationVerifiedPrice then publishingRequirements == nil or isVerified else true

	if not showPriceInput then
		return Roact.createElement(TitledFrame, {
			Title = localization:getText("General", "SalesPrice"),
			LayoutOrder = order,
		}, {
			RightFrame = Roact.createElement("Frame", {
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, 0),
				LayoutOrder = 1,
			}, {
				UIListLayout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					VerticalAlignment = Enum.VerticalAlignment.Top,
					Padding = UDim.new(0, 0),
				}),

				SalesVerification = Roact.createElement(TextLabel, {
					AutomaticSize = Enum.AutomaticSize.Y,
					LayoutOrder = 1,
					Size = UDim2.new(1, 0, 0, 0),
					Text = localization:getText("General", "SalesVerification"),
					TextColor = publishAssetTheme.verifyTextColor,
					TextSize = Constants.FONT_SIZE_LARGE,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Center,
				}),

				LearnMore = Roact.createElement(LinkText, {
					AutomaticSize = Enum.AutomaticSize.Y,
					LayoutOrder = 2,
					OnClick = self.onClickLearnMore,
					Size = UDim2.new(1, 0, 0, 0),
					Text = localization:getText("General", "LearnMore"),
				})
			})
		})
	end

	return Roact.createElement(TitledFrame, {
		Title = localization:getText("General", "SalesPrice"),
		LayoutOrder = order,
	}, {
		InputRow = Roact.createElement("Frame", {
			Size = if canBeSetAsFree then UDim2.new(1, 0, 0, componentHeight - 15) else UDim2.new(1, 0, 0, componentHeight - 30),
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
					Size = Constants.Dialog.ROBUX_SIZE,

					Image = Images.ROBUX_SMALL,
					ImageColor3 = assetConfigTheme.textColor,
					BackgroundTransparency = 1,
				}),

				RoundTextBox = Roact.createElement(TextInput, {
					Enabled = AssetConfigUtil.isOnSale(assetStatus),
					OnTextChanged = self.onPriceChange,
					Size = UDim2.new(0.9, 0 ,1, 0),
					Style = (textOverMaxCount or not isPriceValid) and "FilledRoundedRedBorder" or "FilledRoundedBorder",
					Text = textboxText,
				}),
			}),

			PriceRangeFrame = Roact.createElement("Frame", {
				AutomaticSize = Enum.AutomaticSize.Y,
				Size = UDim2.new(1, INPUT_BOX_WIDTH, 0, 0),

				BackgroundTransparency = 1,

				LayoutOrder = 2,
			}, {
				UIPadding = Roact.createElement("UIPadding", {
					PaddingTop = if canBeSetAsFree then UDim.new(0, 4) else UDim.new(0, 8),
					PaddingLeft = UDim.new(0, 26),
				}),

				UIListLayout = if canBeSetAsFree then Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					VerticalAlignment = Enum.VerticalAlignment.Top,
					Padding = UDim.new(0, 0),
				}) else nil,

				MinimumPriceLabel = if canBeSetAsFree and not isOverMaxPrice then Roact.createElement(TextLabel, {
					AutomaticSize = Enum.AutomaticSize.Y,
					LayoutOrder = 1,
					LineHeight = 1.5,
					Size = UDim2.new(1, 0, 0, 0),

					Text = localization:getText("General", "SalesMinimumPrice", {
						minPrice = tostring(minPrice),
					}),
					TextColor = subTextColor,
					TextSize = Constants.FONT_SIZE_SMALL,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Center,
				}) else nil,

				FreePriceLabel = if canBeSetAsFree and not isOverMaxPrice then Roact.createElement(TextLabel, {
					AutomaticSize = Enum.AutomaticSize.Y,
					LayoutOrder = 2,
					LineHeight = 1.5,
					Size = UDim2.new(1, 0, 0, 0),

					Text = localization:getText("General", "SalesFreePrice"),
					TextColor = subTextColor,
					TextSize = Constants.FONT_SIZE_SMALL,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Center,
				}) else nil,

				MaxPriceLabel = if canBeSetAsFree and isOverMaxPrice then Roact.createElement(TextLabel, {
					AutomaticSize = Enum.AutomaticSize.Y,
					LayoutOrder = 1,
					LineHeight = 1.5,
					Size = UDim2.new(1, 0, 0, 0),

					Text = localization:getText("General", "SalesMaxPrice", {
						maxPrice = tostring(maxPrice),
					}),
					TextColor = subTextColor,
					TextSize = Constants.FONT_SIZE_SMALL,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Center,

				}) else nil,

				PriceRangeLabel = if not canBeSetAsFree then Roact.createElement(TextLabel, {
					LayoutOrder = 1,
					Size = UDim2.new(1, INPUT_BOX_WIDTH, 0, 0),

					Text = localization:getText("General", "SalesPriceRange", {
						minPrice = tostring(minPrice),
						maxPrice = tostring(maxPrice),
					}),
					TextColor = subTextColor,
					TextSize = Constants.FONT_SIZE_SMALL,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Center,
				}) else nil,
			}),
		}),

		CreatorEarningsFrame = Roact.createElement("Frame", {
			Size = UDim2.new(0, INPUT_BOX_WIDTH, 0, ROW_HEIGHT),

			BackgroundTransparency = 1,
			BorderSizePixel = 0,

			LayoutOrder = 2,
		}, {
			UIPadding = Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, 26),
			}),

			EarningsLabel = Roact.createElement(TextLabel, {
				LayoutOrder = 1,
				Size = UDim2.new(1, 0, 1, 0),

				Text = localization:getText("General", "SalesCreatorEarnings", {
					earningsPercent = tostring(creatorEarningsPercent)
				}),
				TextColor = assetConfigTheme.textColor,
				TextSize = Constants.FONT_SIZE_MEDIUM,
				TextXAlignment = Enum.TextXAlignment.Left,
			}),

			BaseFrame = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),

				BackgroundTransparency = 1,
				BorderSizePixel = 0,

				LayoutOrder = 2,
			}, {
				UIListLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Right,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 5),
				}),

				Robux = Roact.createElement("ImageLabel", {
					Size = Constants.Dialog.ROBUX_SIZE,

					Image = Images.ROBUX_SMALL,
					ImageColor3 = assetConfigTheme.textColor,
					BackgroundTransparency = 1,

					LayoutOrder = 1,
				}),

				Earnings = Roact.createElement(TextLabel, {
					LayoutOrder = 2,
					Size = UDim2.new(0, earnVector.X, 1, 0),

					Text = finalPriceString,
					TextColor = assetConfigTheme.textColor,
					TextSize = Constants.FONT_SIZE_LARGE,
					TextXAlignment = Enum.TextXAlignment.Right,
				}),
			})
		}),
	})
end


local function mapStateToProps(state)
	if not FFlagToolboxAssetConfigurationVerifiedPrice then
		return {}
	end

	state = state or {}

	local stateToProps = {
		publishingRequirements = state.publishingRequirements,
	}

	return stateToProps
end

PriceComponent = withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
})(PriceComponent)

if FFlagToolboxAssetConfigurationVerifiedPrice then
	return RoactRodux.connect(mapStateToProps, nil)(PriceComponent)
else
	return PriceComponent
end