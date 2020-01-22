local Root = script.Parent.Parent.Parent
local TextService = game:GetService("TextService")

local LuaPackages = Root.Parent
local UIBlox = require(LuaPackages.UIBlox)
local Roact = require(LuaPackages.Roact)
local t = require(LuaPackages.t)

local withStyle = UIBlox.Style.withStyle

local AutoSizedText = Roact.PureComponent:extend("AutoSizedText")

local validateProps = t.strictInterface({
	text = t.string,
	width = t.number,
	layoutOrder = t.number,
})

function AutoSizedText:render()
	assert(validateProps(self.props))

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		local fonts = stylePalette.Font

		local text = self.props.text
		local textSize = fonts.Body.RelativeSize * fonts.BaseSize
		local font = fonts.Body.Font

		local totalTextSize
		if text ~= nil then
			totalTextSize = TextService:GetTextSize(text, textSize, font, Vector2.new(self.props.width, 10000))
		else
			totalTextSize = Vector2.new(0, 0)
		end

		return Roact.createElement("TextLabel", {
			Size = UDim2.new(1, 0, 0, totalTextSize.Y),
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
	end)
end

return AutoSizedText