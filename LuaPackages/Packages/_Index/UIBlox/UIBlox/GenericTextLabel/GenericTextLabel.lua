local LoadingRoot = script.Parent
local UIBloxRoot = LoadingRoot.Parent

local Roact = require(UIBloxRoot.Parent.Roact)
local Cryo = require(UIBloxRoot.Parent.Cryo)
local t = require(UIBloxRoot.Parent.t)
local validateFontInfo = require(UIBloxRoot.Style.Validator.validateFontInfo)
local validateColor = require(UIBloxRoot.Style.Validator.validateColor)
local withStyle = require(UIBloxRoot.Style.withStyle)

local GenericTextLabel = Roact.PureComponent:extend("GenericTextLabel")

local validateProps = t.interface({
	-- The text of the TextLabel
	Text = t.string,

	-- The Font table from the style palette
	font = validateFontInfo,

	-- The Color table from the style palette
	color = validateColor,

	-- Whether the TextLabel is Fluid Sizing between the font's min and default sizes (optional)
	fluidSizing = t.optional(t.boolean),

	-- Note that this component can accept all valid properties of the Roblox TextLabel instance
})

GenericTextLabel.defaultProps = {
	fluidSizing = false,
}

function GenericTextLabel:render()
	assert(validateProps(self.props))

	local text = self.props.Text
	local font = self.props.font
	local color = self.props.color
	local isFluidSizing = self.props.fluidSizing

	local textColor = color.Color
	local textTransparency = color.Transparency

	return withStyle(function(stylePalette)
		local baseSize = stylePalette.Font.BaseSize
		local fontSizeMin = font.RelativeMinSize * baseSize
		local fontSizeMax = font.RelativeSize * baseSize
		local textFont = font.Font

		local newProps = Cryo.Dictionary.join(self.props, {
			text = Cryo.None,
			fluidSizing = Cryo.None,
			color = Cryo.None,
			font = Cryo.None,
			Text = text,
			Font = textFont,
			TextSize = fontSizeMax,
			TextTruncate = Enum.TextTruncate.AtEnd,
			TextWrapped = true,
			TextColor3 = textColor,
			TextTransparency = textTransparency,
			BackgroundTransparency = 1,
			TextScaled = isFluidSizing,
		})

		return Roact.createElement("TextLabel", newProps, {
			UITextSizeConstraint = isFluidSizing and Roact.createElement("UITextSizeConstraint", {
				MaxTextSize = fontSizeMax,
				MinTextSize = fontSizeMin,
			})
		})
	end)
end

return GenericTextLabel