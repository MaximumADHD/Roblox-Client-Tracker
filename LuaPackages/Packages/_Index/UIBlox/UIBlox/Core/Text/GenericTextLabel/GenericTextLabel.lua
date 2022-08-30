local GenericTextLabelRoot = script.Parent
local Text = GenericTextLabelRoot.Parent
local App = Text.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local UIBloxConfig = require(UIBlox.UIBloxConfig)
local Roact = require(Packages.Roact)
local Cryo = require(Packages.Cryo)
local t = require(Packages.t)

local GetTextSize = require(UIBlox.Core.Text.GetTextSize)
local validateFontInfo = require(UIBlox.Core.Style.Validator.validateFontInfo)
local validateColorInfo = require(UIBlox.Core.Style.Validator.validateColorInfo)
local withStyle = require(UIBlox.Core.Style.withStyle)
local devOnly = require(UIBlox.Utility.devOnly)

local useNewGenericTextLabelProps = UIBloxConfig.useNewGenericTextLabelProps

local GenericTextLabel = Roact.PureComponent:extend("GenericTextLabel")

local MAX_BOUND = 10000

local validateProps = devOnly(t.interface({
	-- The max size avaliable for the textbox
	maxSize = t.optional(t.Vector2),

	-- The Font table from the style palette
	fontStyle = validateFontInfo,

	-- The color table from the style palette
	colorStyle = validateColorInfo,

	-- Whether the TextLabel is Fluid Sizing between the font's min and default sizes (optional)
	fluidSizing = t.optional(t.boolean),

	-- Note that this component can accept all valid properties of the Roblox TextLabel instance
}))

GenericTextLabel.defaultProps = {
	maxSize = Vector2.new(MAX_BOUND, MAX_BOUND),
	fluidSizing = false,
}

function GenericTextLabel:render()
	assert(validateProps(self.props))

	local text = self.props.Text
	local isFluidSizing = self.props.fluidSizing

	return withStyle(function(stylePalette)
		local font = self.props.fontStyle
		local color = self.props.colorStyle
		local textColor = color.Color
		local textTransparency = color.Transparency

		local baseSize = stylePalette.Font.BaseSize
		local fontSizeMin = font.RelativeMinSize * baseSize
		local fontSizeMax = font.RelativeSize * baseSize
		local textFont = font.Font

		local textboxSize = self.props.Size
		if textboxSize == nil then
			local sampleText = text
			if self.props.TextTruncate == Enum.TextTruncate.AtEnd then
				sampleText = sampleText .. "..."
			end
			local textBounds = self.props.maxSize
			local textboxBounds = GetTextSize(sampleText, fontSizeMax, textFont, textBounds)
			textboxSize = UDim2.new(0, textboxBounds.X, 0, textboxBounds.Y)
		end

		-- can inline once useNewGenericTextLabelProps is removed
		local Size
		local TextSize
		local AutomaticSize

		if useNewGenericTextLabelProps then
			Size = not self.props.AutomaticSize and textboxSize or nil
			TextSize = self.props.TextSize or fontSizeMax
			AutomaticSize = self.props.AutomaticSize or nil
		else
			Size = textboxSize
			TextSize = fontSizeMax
		end

		local newProps = Cryo.Dictionary.join(self.props, {
			[Roact.Children] = Cryo.None,
			fluidSizing = Cryo.None,
			fontStyle = Cryo.None,
			colorStyle = Cryo.None,
			maxSize = Cryo.None,
			Size = Size,
			Text = text,
			Font = textFont,
			TextSize = TextSize,
			AutomaticSize = AutomaticSize,
			TextColor3 = textColor,
			TextTransparency = textTransparency,
			TextWrapped = self.props.TextWrapped == nil and true or self.props.TextWrapped,
			TextScaled = isFluidSizing,
			BackgroundTransparency = 1,
		})

		return Roact.createElement(
			"TextLabel",
			newProps,
			Cryo.Dictionary.join({
				UITextSizeConstraint = isFluidSizing and Roact.createElement("UITextSizeConstraint", {
					MaxTextSize = fontSizeMax,
					MinTextSize = fontSizeMin,
				} or nil),
			}, self.props[Roact.Children] or {})
		)
	end)
end

return GenericTextLabel
