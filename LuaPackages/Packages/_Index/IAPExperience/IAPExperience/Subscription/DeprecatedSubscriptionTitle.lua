local SubscriptionRoot = script.Parent
local IAPExperienceRoot = SubscriptionRoot.Parent
local Packages = IAPExperienceRoot.Parent

local UIBlox = require(Packages.UIBlox)
local React = require(Packages.React)

local withStyle = UIBlox.Style.withStyle

type Props = {
	name: string,
	displayPrice: string,
	subscriptionProviderName: string,
	period: string,
	disclaimerText: string,
	layoutOrder: number,
}
return function(props: Props)
	local props: Props = props

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		local fonts = stylePalette.Font
		local titleTextSize = 20
		local priceTextSize = 16
		local disclaimerTextSize = 16
		local font = fonts.Body.Font

		return React.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
			LayoutOrder = props.layoutOrder,
		}, {
			Layout = React.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				Padding = UDim.new(0, 8),
			}),
		}, {
			AppName = React.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 0, titleTextSize),
				BackgroundTransparency = 1,
				Text = props.subscriptionProviderName,
				TextSize = 16,
				TextColor3 = theme.TextEmphasis.Color,
				TextTransparency = theme.TextEmphasis.Transparency,
				Font = font,
				TextXAlignment = Enum.TextXAlignment.Center,
				TextWrapped = true,
				LayoutOrder = props.layoutOrder,
			}),
		}, {
			Title = React.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 0, titleTextSize),
				BackgroundTransparency = 1,
				Text = props.name,
				TextSize = titleTextSize,
				TextColor3 = theme.TextEmphasis.Color,
				TextTransparency = theme.TextEmphasis.Transparency,
				Font = font,
				TextXAlignment = Enum.TextXAlignment.Center,
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
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					FillDirection = Enum.FillDirection.Horizontal,
				}),
				Price = React.createElement("TextLabel", {
					Size = UDim2.new(0, 0, 0, priceTextSize),
					BackgroundTransparency = 1,
					Text = props.displayPrice,
					TextSize = priceTextSize,
					TextColor3 = theme.TextEmphasis.Color,
					TextTransparency = theme.TextDefault.Transparency,
					Font = font,
					RichText = true,
					TextXAlignment = Enum.TextXAlignment.Center,
					TextWrapped = true,
					LayoutOrder = props.layoutOrder + 1,
					AutomaticSize = Enum.AutomaticSize.X,
				}),
				Period = React.createElement("TextLabel", {
					Size = UDim2.new(0, 0, 0, priceTextSize),
					BackgroundTransparency = 1,
					Text = props.period,
					TextSize = priceTextSize,
					TextColor3 = theme.TextDefault.Color,
					TextTransparency = theme.TextDefault.Transparency,
					Font = font,
					RichText = true,
					TextXAlignment = Enum.TextXAlignment.Center,
					TextWrapped = true,
					LayoutOrder = props.layoutOrder + 1,
					AutomaticSize = Enum.AutomaticSize.X,
				}),
			}),
		}, {
			DisclaimerText = React.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 0, disclaimerTextSize),
				BackgroundTransparency = 1,
				Text = props.disclaimerText,
				TextSize = disclaimerTextSize,
				TextColor3 = theme.TextDefault.Color,
				Font = font,
				TextXAlignment = Enum.TextXAlignment.Center,
				TextWrapped = true,
				LayoutOrder = props.layoutOrder + 3,
			}),
		})
	end)
end
