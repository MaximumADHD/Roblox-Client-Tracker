local TextService = game:GetService("TextService")

local PremiumUpsellRoot = script.Parent
local IAPExperienceRoot = PremiumUpsellRoot.Parent
local Packages = IAPExperienceRoot.Parent

local UIBlox = require(Packages.UIBlox)
local Roact = require(Packages.Roact)
local t = require(Packages.t)

local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel
local withStyle = UIBlox.Style.withStyle
local IconSize = UIBlox.App.Constant.IconSize

local CHECK_ICON = "icons/status/success_small"
local TEXT_LEFT_PADDING = IconSize.Small + 16

type Props = {
	text: string,
	width: number,
	layoutOrder: number,
}

return function(props: Props)
	local props: Props = props

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		local fonts = stylePalette.Font

		local text = props.text
		local textSize = fonts.Body.RelativeSize * fonts.BaseSize
		local font = fonts.Body.Font

		local totalTextSize
		if text ~= nil then
			totalTextSize =
				TextService:GetTextSize(text, textSize, font, Vector2.new(props.width - TEXT_LEFT_PADDING, 10000))
		else
			totalTextSize = Vector2.new(0, 0)
		end

		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, totalTextSize.Y),
			BackgroundTransparency = 1,
			LayoutOrder = props.layoutOrder,
		}, {
			Bullet = Roact.createElement(ImageSetLabel, {
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 2, 0, 2),
				Size = UDim2.new(0, IconSize.Small, 0, IconSize.Small),
				ScaleType = Enum.ScaleType.Stretch,
				Image = Images[CHECK_ICON],
				ImageColor3 = theme.IconDefault.Color,
				ImageTransparency = theme.IconDefault.Transparency,
			}),
			Text = Roact.createElement("TextLabel", {
				Position = UDim2.new(0, TEXT_LEFT_PADDING, 0, 0),
				Size = UDim2.new(1, -TEXT_LEFT_PADDING, 0, totalTextSize.Y),
				BackgroundTransparency = 1,
				Text = text,
				TextSize = textSize,
				TextColor3 = theme.TextDefault.Color,
				TextTransparency = theme.TextDefault.Transparency,
				Font = font,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextWrapped = true,
				LayoutOrder = props.layoutOrder,
			}),
		})
	end)
end
