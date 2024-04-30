--!nonstrict
local GenericTextLabelRoot = script.Parent
local Text = GenericTextLabelRoot.Parent
local App = Text.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local Cryo = require(Packages.Cryo)
local t = require(Packages.t)

local GetTextSize = require(UIBlox.Core.Text.GetTextSize)
local validateFontInfo = require(UIBlox.Core.Style.Validator.validateFontInfo)
local validateTypographyInfo = require(UIBlox.Core.Style.Validator.validateTypographyInfo)
local validateColorInfo = require(UIBlox.Core.Style.Validator.validateColorInfo)
local validateColorToken = require(UIBlox.Core.Style.Validator.validateColorToken)
local withStyle = require(UIBlox.Core.Style.withStyle)
local UIBloxConfig = require(UIBlox.UIBloxConfig)

local GenericTextLabel = Roact.PureComponent:extend("GenericTextLabel")

local MAX_BOUND = 10000

GenericTextLabel.validateProps = t.interface({
	-- The max size avaliable for the textbox
	maxSize = t.optional(t.Vector2),

	-- The Font table from the style palette
	fontStyle = t.union(validateFontInfo, validateTypographyInfo),

	-- The color table from the style palette
	colorStyle = t.union(validateColorInfo, validateColorToken),

	-- Whether the TextLabel is Fluid Sizing between the font's min and default sizes (optional)
	fluidSizing = t.optional(t.boolean),

	-- Note that this component can accept all valid properties of the Roblox TextLabel instance
})

GenericTextLabel.defaultProps = {
	maxSize = Vector2.new(MAX_BOUND, MAX_BOUND),
	fluidSizing = false,
}

function GenericTextLabel:render()
	local text = self.props.Text
	local isFluidSizing = self.props.fluidSizing

	return withStyle(function(stylePalette)
		local font = self.props.fontStyle
		local color = self.props.colorStyle
		local textColor = color.Color or color.Color3
		local textTransparency = color.Transparency
		local richText = self.props.RichText

		local baseSize = stylePalette.Font.BaseSize

		-- Fonts derived from tokens do not have min sizes
		local fontSizeMin = if font.RelativeMinSize then baseSize * font.RelativeMinSize else font.FontSize
		local fontSizeMax = if font.RelativeSize then baseSize * font.RelativeSize else font.FontSize

		local textFont = font.Font

		local textboxSize = self.props.Size
		if textboxSize == nil then
			local sampleText = text
			if self.props.TextTruncate == Enum.TextTruncate.AtEnd then
				sampleText = sampleText .. "..."
			end
			local textBounds = self.props.maxSize
			local lineHeightMax = if UIBloxConfig.fixGenericTextLabelTextBound and self.props.LineHeight
				then fontSizeMax * self.props.LineHeight
				else fontSizeMax
			local textboxBounds = GetTextSize(sampleText, lineHeightMax, textFont, textBounds)
			textboxSize = UDim2.new(0, textboxBounds.X, 0, textboxBounds.Y)
		end

		local size = if self.props.AutomaticSize == nil or self.props.AutomaticSize == Enum.AutomaticSize.None
			then textboxSize
			else nil
		local textSize = self.props.TextSize or fontSizeMax
		local automaticSize = self.props.AutomaticSize or nil

		local newProps = Cryo.Dictionary.join(self.props, {
			[Roact.Children] = Cryo.None,
			fluidSizing = Cryo.None,
			fontStyle = Cryo.None,
			colorStyle = Cryo.None,
			maxSize = Cryo.None,
			Size = size,
			Text = text,
			Font = textFont,
			TextSize = textSize,
			AutomaticSize = automaticSize,
			TextColor3 = textColor,
			TextTransparency = textTransparency,
			TextWrapped = self.props.TextWrapped == nil and true or self.props.TextWrapped,
			TextScaled = isFluidSizing,
			BackgroundTransparency = 1,
			RichText = richText,
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
