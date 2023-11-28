local SubscriptionRoot = script.Parent
local IAPExperienceRoot = SubscriptionRoot.Parent
local Packages = IAPExperienceRoot.Parent

local UIBlox = require(Packages.UIBlox)
local React = require(Packages.React)

local withStyle = UIBlox.Style.withStyle
local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local SubscriptionTitle = Roact.PureComponent:extend("SubscriptionTitle")

local ICON_SIZE = 96
local TITLE_TEXT_SIZE = 20
local PRICE_TEXT_SIZE = 16
local DISCLAIMER_TEXT_SIZE = 16
local LINE_PADDING = 8
local CONTENT_PADDING = 24
local SUB_INFO_HEIGHT = TITLE_TEXT_SIZE + LINE_PADDING -- game title
	+ TITLE_TEXT_SIZE + LINE_PADDING -- sub product title
	+ PRICE_TEXT_SIZE + LINE_PADDING
	+ DISCLAIMER_TEXT_SIZE
local NORMAL_MODE_HEIGHT = ICON_SIZE + CONTENT_PADDING + SUB_INFO_HEIGHT
local COMPACT_MODE_HEIGHT = math.min(ICON_SIZE, SUB_INFO_HEIGHT)

SubscriptionTitle.validateProps = t.strictInterface({
	name = t.string,
	displayPrice = t.string,
	subscriptionProviderName = t.string,
	period = t.string,
	disclaimerText = t.string,
	layoutOrder = t.number,
	contentHeight = t.number,
	itemIcon = t.any,
})

local function createSubscriptionInfo(props, alignmentLeft)
	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		local fonts = stylePalette.Font
		local font = fonts.Body.Font

		return React.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
			LayoutOrder = props.layoutOrder,
		}, {
			Layout = React.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				HorizontalAlignment = alignmentLeft and Enum.HorizontalAlignment.Left
					or Enum.HorizontalAlignment.Center,
				Padding = UDim.new(0, LINE_PADDING),
			}),
		}, {
			AppName = React.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 0, TITLE_TEXT_SIZE),
				BackgroundTransparency = 1,
				Text = props.subscriptionProviderName,
				TextSize = 16,
				TextColor3 = theme.TextEmphasis.Color,
				TextTransparency = theme.TextEmphasis.Transparency,
				Font = font,
				TextXAlignment = alignmentLeft and Enum.TextXAlignment.Left or Enum.TextXAlignment.Center,
				TextWrapped = true,
				LayoutOrder = props.layoutOrder,
			}),
		}, {
			Title = React.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 0, TITLE_TEXT_SIZE),
				BackgroundTransparency = 1,
				Text = props.name,
				TextSize = TITLE_TEXT_SIZE,
				TextColor3 = theme.TextEmphasis.Color,
				TextTransparency = theme.TextEmphasis.Transparency,
				Font = font,
				TextXAlignment = alignmentLeft and Enum.TextXAlignment.Left or Enum.TextXAlignment.Center,
				TextWrapped = true,
				LayoutOrder = props.layoutOrder + 1,
			}),
		}, {
			PriceFrame = React.createElement("Frame", {
				BorderSizePixel = 0,
				BackgroundColor3 = Color3.fromRGB(255, 0, 0),
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				LayoutOrder = props.layoutOrder + 2,
			}, {
				Layout = React.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					HorizontalAlignment = alignmentLeft and Enum.HorizontalAlignment.Left
						or Enum.HorizontalAlignment.Center,
					FillDirection = Enum.FillDirection.Horizontal,
				}),
				Price = React.createElement("TextLabel", {
					Size = UDim2.new(0, 0, 0, PRICE_TEXT_SIZE),
					BackgroundTransparency = 1,
					Text = props.displayPrice,
					TextSize = PRICE_TEXT_SIZE,
					TextColor3 = theme.TextEmphasis.Color,
					TextTransparency = theme.TextDefault.Transparency,
					Font = font,
					RichText = true,
					TextXAlignment = alignmentLeft and Enum.TextXAlignment.Left or Enum.TextXAlignment.Center,
					TextWrapped = true,
					LayoutOrder = props.layoutOrder + 1,
					AutomaticSize = Enum.AutomaticSize.X,
				}),
				Period = React.createElement("TextLabel", {
					Size = UDim2.new(0, 0, 0, PRICE_TEXT_SIZE),
					BackgroundTransparency = 1,
					Text = props.period,
					TextSize = PRICE_TEXT_SIZE,
					TextColor3 = theme.TextDefault.Color,
					TextTransparency = theme.TextDefault.Transparency,
					Font = font,
					RichText = true,
					TextXAlignment = alignmentLeft and Enum.TextXAlignment.Left or Enum.TextXAlignment.Center,
					TextWrapped = true,
					LayoutOrder = props.layoutOrder + 1,
					AutomaticSize = Enum.AutomaticSize.X,
				}),
			}),
		}, {
			DisclaimerText = React.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 0, DISCLAIMER_TEXT_SIZE),
				BackgroundTransparency = 1,
				Text = props.disclaimerText,
				TextSize = DISCLAIMER_TEXT_SIZE,
				TextColor3 = theme.TextDefault.Color,
				Font = font,
				TextXAlignment = alignmentLeft and Enum.TextXAlignment.Left or Enum.TextXAlignment.Center,
				TextWrapped = true,
				LayoutOrder = props.layoutOrder + 3,
			}),
		})
	end)
end

local function createCompactSubscriptionTitle(props)
	return React.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		LayoutOrder = 1,
	}, {
		Layout = React.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new(0, CONTENT_PADDING),
		}),
		Icon = React.createElement(ImageSetLabel, {
			LayoutOrder = 1,
			BackgroundTransparency = 1,
			Size = UDim2.new(0, ICON_SIZE, 0, ICON_SIZE),
			ScaleType = Enum.ScaleType.Fit,
			AutomaticSize = Enum.AutomaticSize.X,
			Image = props.itemIcon,
		}),
		SubscriptionInfo = createSubscriptionInfo(props, true),
	})
end

local function createNormalSubscriptionTitle(props)
	return React.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		LayoutOrder = 1,
	}, {
		Layout = React.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			FillDirection = Enum.FillDirection.Vertical,
			Padding = UDim.new(0, CONTENT_PADDING),
		}),
		Icon = React.createElement(ImageSetLabel, {
			LayoutOrder = 1,
			BackgroundTransparency = 1,
			Size = UDim2.new(0, ICON_SIZE, 0, ICON_SIZE),
			ScaleType = Enum.ScaleType.Fit,
			AutomaticSize = Enum.AutomaticSize.X,
			Image = props.itemIcon,
		}),
		SubscriptionInfo = createSubscriptionInfo(props, false),
	})
end

function SubscriptionTitle:getTitleHeight(contentHeight)
	if contentHeight > NORMAL_MODE_HEIGHT then
		return NORMAL_MODE_HEIGHT
	else
		return COMPACT_MODE_HEIGHT
	end
end

function SubscriptionTitle:render()
	if self.props.contentHeight > NORMAL_MODE_HEIGHT then
		return createNormalSubscriptionTitle(self.props)
	else
		return createCompactSubscriptionTitle(self.props)
	end
end

return SubscriptionTitle
