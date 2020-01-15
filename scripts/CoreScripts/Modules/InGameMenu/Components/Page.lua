local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox

local withStyle = UIBlox.Core.Style.withStyle

local TITLE_HEIGHT = 28
local TITLE_TOP_PADDING = 28
local TITLE_BOTTOM_PADDING = 12
local TOTAL_TITLE_SPACE = TITLE_TOP_PADDING + TITLE_HEIGHT + TITLE_BOTTOM_PADDING

local ThemedTextLabel = require(script.Parent.ThemedTextLabel)

local function Page(props)
	return withStyle(function(style)
		return Roact.createElement("TextButton", {
			AutoButtonColor = false,
			Text = "",
			BackgroundColor3 = style.Theme.BackgroundContrast.Color,
			BackgroundTransparency = style.Theme.BackgroundContrast.Transparency,
			BorderSizePixel = 0,
			Position = props.position,
			Size = UDim2.new(1, 0, 1, 0),
			Visible = props.visible and not props.pageIsModal,
			ZIndex = props.zIndex,
		}, {
			PageTitle = Roact.createElement(ThemedTextLabel, {
				fontKey = "Header1",
				themeKey = "TextEmphasis",

				AnchorPoint = Vector2.new(0.5, 0),
				Position = UDim2.new(0.5, 0, 0, TITLE_TOP_PADDING),
				Size = UDim2.new(1, -48, 0, TITLE_HEIGHT),
				Text = props.pageTitle,
			}, props.titleChildren),
			PageContainer = Roact.createElement("Frame", {
				AnchorPoint = Vector2.new(0, 1),
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 0, 1, 0),
				Size = UDim2.new(1, 0, 1, -TOTAL_TITLE_SPACE),
			}, props[Roact.Children])
		})
	end)
end

return Page