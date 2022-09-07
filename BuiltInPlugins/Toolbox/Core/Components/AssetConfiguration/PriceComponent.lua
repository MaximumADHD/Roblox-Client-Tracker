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
local FFlagToolboxAssetConfigurationMinPriceFloor2 = game:GetFastFlag("ToolboxAssetConfigurationMinPriceFloor2")
local FFlagToolboxAssetConfigurationMaxPrice = game:GetFastFlag("ToolboxAssetConfigurationMaxPrice")
local FFlagToolboxAssetConfigurationVerifiedPrice = game:GetFastFlag("ToolboxAssetConfigurationVerifiedPrice")

local Plugin = script.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local Framework = require(Packages.Framework)
local RoactRodux = if FFlagToolboxAssetConfigurationVerifiedPrice then require(Packages.RoactRodux) else nil
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local TextInput = Framework.UI.TextInput
local TextLabel = if FFlagToolboxAssetConfigurationMaxPrice or FFlagToolboxAssetConfigurationVerifiedPrice then Framework.UI.TextLabel else nil
local LinkText = if FFlagToolboxAssetConfigurationVerifiedPrice then Framework.UI.LinkText else nil
local TitledFrame = Framework.StudioUI.TitledFrame
local GetTextSize = Framework.Util.GetTextSize

local Dash = if FFlagToolboxAssetConfigurationMinPriceFloor2 then Framework.Dash else nil
local Util = Plugin.Core.Util
local ContextHelper = require(Util.ContextHelper)
local LayoutOrderIterator = require(Util.LayoutOrderIterator)
local Constants = require(Util.Constants)
local AssetConfigUtil = require(Util.AssetConfigUtil)
local Images = require(Util.Images)
local ToolboxUtilities = if FFlagToolboxAssetConfigurationVerifiedPrice then require(Util.ToolboxUtilities) else nil

local withLocalization = ContextHelper.withLocalization

local ROW_HEIGHT = 24
local TEXT_INPUT_BOX_HEIGHT = 40
local SHALLOW_ROW_HEIGHT = ROW_HEIGHT*0.75
local INPUT_BOX_WIDTH = if FFlagToolboxAssetConfigurationMinPriceFloor2 then 225 else 200

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
	return withLocalization(function(DEPRECATED_localization, DEPRECATED_localizedContent)
		return self:renderContent(nil, DEPRECATED_localization, DEPRECATED_localizedContent)
	end)
end

-- remove DEPRECATED_localization and DEPRECATED_localizedContent with FFlagToolboxAssetConfigurationMinPriceFloor2 and FFlagToolboxAssetConfigurationMaxPrice
function PriceComponent:renderContent(theme, DEPRECATED_localization, DEPRECATED_localizedContent)
	local props = self.props
	theme = props.Stylizer
	local localization = if FFlagToolboxAssetConfigurationMaxPrice then props.Localization else nil

	local assetTypeEnum = props.AssetTypeEnum
	local allowedAssetTypesForRelease = props.AllowedAssetTypesForRelease
	local allowedAssetTypesForFree = if FFlagToolboxAssetConfigurationMinPriceFloor2 then props.AllowedAssetTypesForFree else nil
	local assetStatus = props.NewAssetStatus

	local price = props.Price
	local minPrice = props.MinPrice
	local maxPrice = props.MaxPrice
	local feeRate = props.FeeRate
	local isPriceValid = props.IsPriceValid

	local order = props.LayoutOrder

	local orderIterator = LayoutOrderIterator.new()
	local finalPrice, fee -- remove fee when FFlagToolboxAssetConfigurationMinPriceFloor2 is removed
	if FFlagToolboxAssetConfigurationMinPriceFloor2 then
		finalPrice = AssetConfigUtil.calculatePotentialEarning(allowedAssetTypesForRelease, price, assetTypeEnum, minPrice)
	else
		finalPrice, fee = AssetConfigUtil.calculatePotentialEarning(allowedAssetTypesForRelease, price, assetTypeEnum, minPrice)
	end

	local assetConfigTheme = theme.assetConfig
	local publishAssetTheme = if FFlagToolboxAssetConfigurationVerifiedPrice then theme.publishAsset else nil

	local componentHeight = TEXT_INPUT_BOX_HEIGHT+ROW_HEIGHT+SHALLOW_ROW_HEIGHT

	local creatorEarningsPercent = if FFlagToolboxAssetConfigurationMinPriceFloor2 then math.max(100 - feeRate, 0) else nil
	-- Clamp the earnings and fee to make sure it's within the max and min price range.
	local feePercent = feeRate / 100
	local earnPercent = 1 - feePercent
	fee = if FFlagToolboxAssetConfigurationMinPriceFloor2 then nil else math.floor(math.min(fee or 0, feePercent * maxPrice))
	finalPrice = math.floor(math.min(finalPrice, earnPercent * maxPrice))

	local feeString = if FFlagToolboxAssetConfigurationMinPriceFloor2 then nil else tostring(fee)
	local finalPriceString = tostring(finalPrice)

	local canBeSetAsFree = if FFlagToolboxAssetConfigurationMinPriceFloor2 and allowedAssetTypesForFree then Dash.find(allowedAssetTypesForFree, function(assetType)
		return assetType == assetTypeEnum.Name
	end) else nil
	local numberPrice = if FFlagToolboxAssetConfigurationMaxPrice then tonumber(price) else nil
	local isOverMaxPrice = if FFlagToolboxAssetConfigurationMaxPrice and numberPrice then numberPrice > maxPrice else nil

	local UntypedVector2 = Vector2
	local inputBoxSize = FFlagPriceComponentTextSize and Vector2.new(INPUT_BOX_WIDTH, ROW_HEIGHT) or UntypedVector2.new(0, INPUT_BOX_WIDTH, 0, ROW_HEIGHT)
	local feeVector = if FFlagToolboxAssetConfigurationMinPriceFloor2 then nil else GetTextSize(feeString, Constants.FONT_SIZE_MEDIUM, Constants.FONT, inputBoxSize)
	local earnVector = GetTextSize(finalPriceString, Constants.FONT_SIZE_MEDIUM, Constants.FONT, inputBoxSize)

	local textboxText = tostring(price or "")

	local textLength = utf8.len(textboxText)
	local textOverMaxCount = textLength > FIntToolboxPriceTextBoxMaxCount

	local subTextColor
	if FFlagToolboxAssetConfigurationMaxPrice then
		subTextColor = if isPriceValid then assetConfigTheme.labelTextColor else assetConfigTheme.errorColor
	end

	local publishingRequirements = props.publishingRequirements
	local isVerified = if FFlagToolboxAssetConfigurationVerifiedPrice then publishingRequirements and publishingRequirements.verification and publishingRequirements.verification.isVerified else nil

	-- show price input if we did not retrieve any publishing requirements (non-creator marketplace asset) or if they are verified already
	local showPriceInput = if FFlagToolboxAssetConfigurationVerifiedPrice then publishingRequirements == nil or isVerified else true

	if not showPriceInput then
		return Roact.createElement(TitledFrame, {
			Title = if FFlagToolboxAssetConfigurationMaxPrice then localization:getText("General", "SalesPrice") else DEPRECATED_localizedContent.Sales.Price,
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
		Title = if FFlagToolboxAssetConfigurationMaxPrice then localization:getText("General", "SalesPrice") else DEPRECATED_localizedContent.Sales.Price,
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
					Position = if FFlagToolboxAssetConfigurationMinPriceFloor2 then nil else UDim2.new(0, 0, 0, 0),
					Size = Constants.Dialog.ROBUX_SIZE,

					Image = Images.ROBUX_SMALL,
					ImageColor3 = if FFlagToolboxAssetConfigurationMaxPrice then assetConfigTheme.textColor else Color3.fromRGB(255, 255, 255),
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

			PriceRangeFrame = if FFlagToolboxAssetConfigurationMinPriceFloor2 then Roact.createElement("Frame", {
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

				MinimumPriceLabel = if canBeSetAsFree and not isOverMaxPrice then Roact.createElement(if FFlagToolboxAssetConfigurationMaxPrice then TextLabel else "TextLabel", {
					AutomaticSize = Enum.AutomaticSize.Y,
					BackgroundTransparency = if FFlagToolboxAssetConfigurationMaxPrice then nil else 1,
					BorderSizePixel = if FFlagToolboxAssetConfigurationMaxPrice then nil else 0,
					Font = if FFlagToolboxAssetConfigurationMaxPrice then nil else Constants.FONT,
					LayoutOrder = 1,
					LineHeight = 1.5,
					Size = UDim2.new(1, 0, 0, 0),

					Text = if FFlagToolboxAssetConfigurationMaxPrice then localization:getText("General", "SalesMinimumPrice", {
						minPrice = tostring(minPrice),
					}) else DEPRECATED_localization:getLocalizedMinimumPrice(minPrice),
					TextColor = subTextColor, -- inline subTextColor with FFlagToolboxAssetConfigurationMaxPrice is removed
					TextColor3 = if FFlagToolboxAssetConfigurationMaxPrice then nil else isPriceValid and assetConfigTheme.labelTextColor or assetConfigTheme.errorColor,
					TextSize = Constants.FONT_SIZE_SMALL,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Center,
				}) else nil,

				FreePriceLabel = if canBeSetAsFree and not isOverMaxPrice then Roact.createElement(if FFlagToolboxAssetConfigurationMaxPrice then TextLabel else "TextLabel", {
					AutomaticSize = if FFlagToolboxAssetConfigurationMaxPrice then Enum.AutomaticSize.Y else nil,
					BackgroundTransparency = if FFlagToolboxAssetConfigurationMaxPrice then nil else 1,
					BorderSizePixel = if FFlagToolboxAssetConfigurationMaxPrice then nil else 0,
					Font = if FFlagToolboxAssetConfigurationMaxPrice then nil else Constants.FONT,
					LayoutOrder = 2,
					LineHeight = if FFlagToolboxAssetConfigurationMaxPrice then 1.5 else nil,
					Size = if FFlagToolboxAssetConfigurationMaxPrice then UDim2.new(1, 0, 0, 0) else nil,

					Text = if FFlagToolboxAssetConfigurationMaxPrice then localization:getText("General", "SalesFreePrice") else DEPRECATED_localizedContent.Sales.FreePrice,
					TextColor = subTextColor, -- inline subTextColor with FFlagToolboxAssetConfigurationMaxPrice is removed
					TextColor3 = if FFlagToolboxAssetConfigurationMaxPrice then nil else isPriceValid and assetConfigTheme.labelTextColor or assetConfigTheme.errorColor,
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
					TextColor = subTextColor, -- inline subTextColor with FFlagToolboxAssetConfigurationMaxPrice is removed
					TextSize = Constants.FONT_SIZE_SMALL,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Center,

				}) else nil,

				PriceRangeLabel = if not canBeSetAsFree then Roact.createElement(if FFlagToolboxAssetConfigurationMaxPrice then TextLabel else "TextLabel", {
					BackgroundTransparency = if FFlagToolboxAssetConfigurationMaxPrice then nil else 1,
					BorderSizePixel = if FFlagToolboxAssetConfigurationMaxPrice then nil else 0,
					Font = if FFlagToolboxAssetConfigurationMaxPrice then nil else Constants.FONT,
					LayoutOrder = 1,
					Size = UDim2.new(1, INPUT_BOX_WIDTH, 0, 0),

					Text = if FFlagToolboxAssetConfigurationMaxPrice then localization:getText("General", "SalesPriceRange", {
						minPrice = tostring(minPrice),
						maxPrice = tostring(maxPrice),
					}) else DEPRECATED_localization:getLocalizedPriceRangeText(minPrice, maxPrice),
					TextColor = subTextColor, -- inline subTextColor with FFlagToolboxAssetConfigurationMaxPrice is removed
					TextColor3 = if FFlagToolboxAssetConfigurationMaxPrice then nil else isPriceValid and assetConfigTheme.labelTextColor or assetConfigTheme.errorColor,
					TextSize = Constants.FONT_SIZE_SMALL,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Center,
				}) else nil,
			}) else nil,

			PriceRangeLabel = if FFlagToolboxAssetConfigurationMinPriceFloor2 then nil else Roact.createElement("TextLabel", {
				Size = UDim2.new(0, 105, 0, 15),

				BackgroundTransparency = 1,
				TextColor3 = isPriceValid and assetConfigTheme.labelTextColor or assetConfigTheme.errorColor,
				BorderSizePixel = 0,

				Font = Constants.FONT,
				TextSize = Constants.FONT_SIZE_SMALL,

				Text = DEPRECATED_localization:getLocalizedPriceRangeText(minPrice, maxPrice),
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
				LayoutOrder = 2,
			}),
		}),

		CreatorEarningsFrame = if FFlagToolboxAssetConfigurationMinPriceFloor2 then Roact.createElement("Frame", {
			Size = UDim2.new(0, INPUT_BOX_WIDTH, 0, ROW_HEIGHT),

			BackgroundTransparency = 1,
			BorderSizePixel = 0,

			LayoutOrder = 2,
		}, {
			UIPadding = Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, 26),
			}),

			EarningsLabel = Roact.createElement(if FFlagToolboxAssetConfigurationMaxPrice then TextLabel else "TextLabel", {
				BackgroundTransparency = if FFlagToolboxAssetConfigurationMaxPrice then nil else 1,
				BorderSizePixel = if FFlagToolboxAssetConfigurationMaxPrice then nil else 0,
				Font = if FFlagToolboxAssetConfigurationMaxPrice then nil else Constants.FONT,
				LayoutOrder = 1,
				Size = UDim2.new(1, 0, 1, 0),

				Text = if FFlagToolboxAssetConfigurationMaxPrice then localization:getText("General", "SalesCreatorEarnings", {
					earningsPercent = tostring(creatorEarningsPercent)
				}) else DEPRECATED_localization:getLocalizedCreatorEarnings(creatorEarningsPercent),
				TextColor = if FFlagToolboxAssetConfigurationMaxPrice then assetConfigTheme.textColor else nil,
				TextColor3 = if FFlagToolboxAssetConfigurationMaxPrice then nil else assetConfigTheme.textColor,
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

				Earnings = Roact.createElement(if FFlagToolboxAssetConfigurationMaxPrice then TextLabel else "TextLabel", {
					BackgroundTransparency = if FFlagToolboxAssetConfigurationMaxPrice then nil else 1,
					BorderSizePixel = if FFlagToolboxAssetConfigurationMaxPrice then nil else 0,
					Font = if FFlagToolboxAssetConfigurationMaxPrice then nil else Constants.FONT,
					LayoutOrder = 2,
					Size = UDim2.new(0, earnVector.X, 1, 0),

					Text = finalPriceString,
					TextColor = if FFlagToolboxAssetConfigurationMaxPrice then assetConfigTheme.textColor else nil,
					TextColor3 = if FFlagToolboxAssetConfigurationMaxPrice then nil else assetConfigTheme.textColor,
					TextSize = Constants.FONT_SIZE_LARGE,
					TextXAlignment = Enum.TextXAlignment.Right,
				}),
			})
		}) else nil,

		FeeFrame = if FFlagToolboxAssetConfigurationMinPriceFloor2 then nil else Roact.createElement("Frame", {
			Size = UDim2.new(0, INPUT_BOX_WIDTH, 0, ROW_HEIGHT),

			BackgroundTransparency = 1,
			BorderSizePixel = 0,

			LayoutOrder = 2,
		}, {
			Label = Roact.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 1, 0),

				BackgroundTransparency = 1,
				BorderSizePixel = 0,

				Text = DEPRECATED_localization:getLocalizedFee(tostring(feeRate)),
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

					Text = feeString,
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

		EarnFrame = if FFlagToolboxAssetConfigurationMinPriceFloor2 then nil else Roact.createElement("Frame", {
			Size = UDim2.new(0, INPUT_BOX_WIDTH, 0, ROW_HEIGHT),

			BackgroundTransparency = 1,
			BorderSizePixel = 0,

			LayoutOrder = 3,
		}, {
			EarnLabel = Roact.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 1, 0),

				BackgroundTransparency = 1,
				BorderSizePixel = 0,

				Text = DEPRECATED_localizedContent.Sales.Earn,
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

					Text = finalPriceString,
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