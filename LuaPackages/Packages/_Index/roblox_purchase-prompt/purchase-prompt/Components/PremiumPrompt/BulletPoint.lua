local Root = script.Parent.Parent.Parent
local TextService = game:GetService("TextService")

local LuaPackages = Root.Parent
local UIBlox = require(LuaPackages.UIBlox)
local Roact = require(LuaPackages.Roact)
local t = require(LuaPackages.t)
local Cryo = require(LuaPackages.Cryo)

local Images = UIBlox.App.ImageSet.Images
local withStyle = UIBlox.Style.withStyle
local IconSize = UIBlox.App.Constant.IconSize

local CHECK_ICON = "icons/status/success_small"
local TEXT_LEFT_PADDING = IconSize.Small + 16

local BulletPoint = Roact.PureComponent:extend("BulletPoint")

local validateProps = t.strictInterface({
	text = t.string,
	width = t.number,
	layoutOrder = t.number,
})

function BulletPoint:render()
	assert(validateProps(self.props))

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		local fonts = stylePalette.Font

		local text = self.props.text
		local textSize = fonts.Body.RelativeSize * fonts.BaseSize
		local font = fonts.Body.Font

		local totalTextSize
		if text ~= nil then
			totalTextSize = TextService:GetTextSize(text, textSize, font,
				Vector2.new(self.props.width - TEXT_LEFT_PADDING, 10000))
		else
			totalTextSize = Vector2.new(0, 0)
		end

		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, totalTextSize.Y),
			BackgroundTransparency = 1,
			LayoutOrder = self.props.layoutOrder,
		} , {
			Roact.createElement("ImageLabel", Cryo.Dictionary.join(Images[CHECK_ICON], {
				Position = UDim2.new(0, 2, 0, 2),
				Size = UDim2.new(0, IconSize.Small, 0, IconSize.Small),
				ImageColor3 = theme.IconDefault.Color,
				ImageTransparency = theme.IconDefault.Transparency,
				BackgroundTransparency = 1,
			})),
			Roact.createElement("TextLabel", {
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
				LayoutOrder = self.props.layoutOrder,
			})
		})
	end)
end

return BulletPoint