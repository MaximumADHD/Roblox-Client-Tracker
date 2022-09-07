--!nonstrict
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local TextService = game:GetService("TextService")

local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local withStyle = UIBlox.Core.Style.withStyle
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local validateImage = UIBlox.Core.ImageSet.Validator.validateImage

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local Modules = script.Parent.Parent.Parent.Parent.Parent
local InGameMenu = Modules.InGameMenu

local ICON_SIZE = 36
local PADDING = 8

local ButtonHint = Roact.PureComponent:extend("ButtonHint")

ButtonHint.validateProps = t.strictInterface({
	layoutOrder = t.optional(t.integer),
	localizationKey = t.string,
	keyImage = validateImage,
})

function ButtonHint:render()
	return withStyle(function(style)
		local theme = style.Theme
		local font = style.Font

		local text = RobloxTranslator:FormatByKey(self.props.localizationKey)

		local fontSize = font.BaseSize * font.Header2.RelativeSize or font.BaseSize * font.Header1.RelativeSize
		local textWidth = TextService:GetTextSize(text,
			fontSize,
			font.Header2.Font,
			Vector2.new(1000, 1000)).X
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
				Image = self.props.keyImage,
				ImageTransparency = theme.IconEmphasis.Transparency,
				ImageColor3 = theme.IconEmphasis.Color,
			}),

			Text = Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				Size = UDim2.new(0, textWidth, 0, 1),
				LayoutOrder = 2,

				Font = font.Header2.Font,
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
