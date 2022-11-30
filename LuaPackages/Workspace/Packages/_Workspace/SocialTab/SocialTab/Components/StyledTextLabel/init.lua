local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)

local Roact = dependencies.Roact
local t = dependencies.t
local UIBlox = dependencies.UIBlox
local llama = dependencies.llama
local withStyle = UIBlox.Style.withStyle
local validateColorInfo = UIBlox.Style.Validator.validateColorInfo
local validateFontInfo = UIBlox.Style.Validator.validateFontInfo

local StyledTextLabel = Roact.PureComponent:extend("StyledTextLabel")
StyledTextLabel.defaultProps = {
	BackgroundStyle = {
		Color = Color3.fromRGB(0, 0, 0),
		Transparency = 1,
	},
	FontStyle = {
		Font = Enum.Font.Gotham,
		RelativeSize = 1,
		RelativeMinSize = 1,
	},
	TextStyle = {
		Color = Color3.fromRGB(0, 0, 0),
		Transparency = 1,
	},

	BorderSizePixel = 0,
	Size = UDim2.new(1, 0, 1, 0),
	Text = "Text",
}

StyledTextLabel.validateProps = t.interface({
	BackgroundStyle = t.optional(validateColorInfo),
	FontStyle = t.optional(validateFontInfo),
	TextStyle = t.optional(validateColorInfo),
	Text = t.optional(t.string),
})

function StyledTextLabel:render()
	return withStyle(function(style)
		local textSize = self.props.FontStyle.RelativeSize * style.Font.BaseSize

		return Roact.createElement(
			"TextLabel",
			llama.Dictionary.join(
				{
					BackgroundColor3 = self.props.BackgroundStyle.Color,
					BackgroundTransparency = self.props.BackgroundStyle.Transparency,
					Font = self.props.FontStyle.Font,
					TextSize = textSize,
					TextColor3 = self.props.TextStyle.Color,
					TextTransparency = self.props.TextStyle.Transparency,
				},
				self.props,
				{
					BackgroundStyle = llama.None,
					FontStyle = llama.None,
					TextStyle = llama.None,
				}
			)
		)
	end)
end

return StyledTextLabel
