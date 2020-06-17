local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local TextService = game:GetService("TextService")

local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local withStyle = UIBlox.Core.Style.withStyle
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.Label

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local ICON_SIZE = 28
local PADDING = 12

local ICON_RING_IMAGE = Images["component_assets/circle_29_stroke_1"]

local ButtonHint = Roact.PureComponent:extend("ButtonHint")

ButtonHint.validateProps = t.strictInterface({
	layoutOrder = t.optional(t.integer),
	localizationKey = t.string,
	keyLabel = t.string,
})

function ButtonHint:render()
	return withStyle(function(style)
		local theme = style.Theme
		local font = style.Font

		local text = RobloxTranslator:FormatByKey(self.props.localizationKey)

		local fontSize = font.BaseSize * font.Header1.RelativeSize
		local textWidth = TextService:GetTextSize(text, fontSize, font.Header1.Font, Vector2.new(1000, 1000)).X
		local buttonHintWidth = ICON_SIZE + PADDING + textWidth

		return Roact.createElement("Frame", {
			LayoutOrder = self.props.layoutOrder,
			BackgroundTransparency = 1,
			Size = UDim2.new(0, buttonHintWidth, 1, 0),
		}, {
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				Padding = UDim.new(0, PADDING),
			}),

			Icon = Roact.createElement(ImageSetLabel, {
				BackgroundTransparency = 1,
				LayoutOrder = 1,
				Size = UDim2.fromOffset(ICON_SIZE, ICON_SIZE),
				Image = ICON_RING_IMAGE,
				ImageTransparency = theme.UIDefault.Transparency,
				ImageColor3 = theme.UIDefault.Color,
			}, {
				Text = Roact.createElement("TextLabel", {
					BackgroundTransparency = 1,
					Size = UDim2.fromScale(1, 1),
					Text = self.props.keyLabel,
					Font = font.Header2.Font,
					TextSize = font.BaseSize * font.Header2.RelativeSize,
					TextColor3 = theme.UIDefault.Color,
					TextTransparency = theme.UIDefault.TextTransparency,
					TextXAlignment = Enum.TextXAlignment.Center,
					TextYAlignment =  Enum.TextYAlignment.Center,
				}),
			}),

			Text = Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				Size = UDim2.new(0, textWidth, 0, 1),
				LayoutOrder = 2,

				Font = font.Header1.Font,
				Text = text,
				TextSize = fontSize,
				TextColor3 = theme.TextEmphasis.Color,
				TextTransparency = theme.TextEmphasis.TextTransparency,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment =  Enum.TextYAlignment.Center,
			})
		})
	end)
end

return ButtonHint