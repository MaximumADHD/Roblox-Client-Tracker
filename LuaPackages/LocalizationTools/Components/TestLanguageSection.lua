local Roact = require(game:GetService("CorePackages").Roact)
local Theming = require(script.Parent.Parent.Theming)

local RobloxLocaleSelector = require(script.Parent.RobloxLocaleSelector)

local TestLanguageSection = Roact.PureComponent:extend("TestLanguageSection")

local robloxLocaleLabelText = "Locale"

function TestLanguageSection:render()
	return Theming.withTheme(function(theme)
		return Roact.createElement("Frame", {
			Size = UDim2.new(0, 300, 0, 100),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			LayoutOrder = self.props.LayoutOrder,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical,
				Padding = UDim.new(0, 5),
			}),

			LocaleSectionLabel = Roact.createElement("TextLabel", {
				Text = "Test Language",
				Size = UDim2.new(0,300,0,20),
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextColor3 = theme.BrightText,
				LayoutOrder = 1,
			}),

			RobloxLocaleSelector = Roact.createElement(RobloxLocaleSelector, {
				AllLanguagesInfo = self.props.AllLanguagesInfo,
				Window = self.props.Window,
				LabelText = robloxLocaleLabelText,
				LayoutOrder = 2,
			}),
		})
	end)
end

return TestLanguageSection
