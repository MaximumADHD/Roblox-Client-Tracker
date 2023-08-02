--!nocheck
local ImageTextLabelRoot = script.Parent
local Text = ImageTextLabelRoot.Parent
local App = Text.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local Cryo = require(Packages.Cryo)
local t = require(Packages.t)

local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)
local GenericTextLabel = require(UIBlox.Core.Text.GenericTextLabel.GenericTextLabel)
local GetTextSize = require(UIBlox.Core.Text.GetTextSize)
local GetWrappedTextWithIcon = require(UIBlox.Core.Text.GetWrappedTextWithIcon)
local validateFontInfo = require(UIBlox.Core.Style.Validator.validateFontInfo)
local validateTypographyInfo = require(UIBlox.Core.Style.Validator.validateTypographyInfo)
local validateColorInfo = require(UIBlox.Core.Style.Validator.validateColorInfo)
local withStyle = require(UIBlox.Core.Style.withStyle)

-- This component is used to inline an icon into your text.
-- The current version of the component will only work with the icon being before the text
-- Text must be aligned at the top left and cannot be dynamic.
-- Icon positioning is left up to the user to allow as much functionality as possible
local ImageTextLabel = Roact.PureComponent:extend("ImageTextLabel")

local MAX_BOUND = 10000

-- If this component ever becomes public, please restrict the props that can be used on imageProps, textProps
-- Removing a used prop in the future will be difficult.
ImageTextLabel.validateProps = t.interface({
	imageProps = t.optional(t.interface({
		Size = t.UDim2,
	})),

	genericTextLabelProps = t.interface({
		Text = t.string,
		fontStyle = t.union(validateFontInfo, validateTypographyInfo),
		colorStyle = validateColorInfo,

		-- fluidSizing is ignored if imageProps is non-nil
		fluidSizing = t.optional(t.boolean),

		AnchorPoint = t.None,
		Position = t.None,
		Size = t.None,
		TextXAlignment = t.None,
		TextYAlignment = t.None,
		TextScaled = t.None,
		maxSize = t.None,
	}),

	frameProps = t.optional(t.interface({
		Size = t.None,
	})),

	maxSize = t.optional(t.Vector2),
	padding = t.optional(t.number),
})

ImageTextLabel.defaultProps = {
	maxSize = Vector2.new(MAX_BOUND, MAX_BOUND),
	frameProps = {},
	padding = 0,
}

function ImageTextLabel:render()
	local genericTextLabelProps = self.props.genericTextLabelProps
	local imageProps = self.props.imageProps
	local frameProps = self.props.frameProps
	local padding = self.props.padding
	local text = self.props.genericTextLabelProps.Text
	local maxSize = self.props.maxSize
	local useMaxHeight = self.props.useMaxHeight

	return withStyle(function(stylePalette)
		local fontStyle = genericTextLabelProps.fontStyle

		local baseSize = stylePalette.Font.BaseSize
		local fontSize = if fontStyle.RelativeSize then baseSize * fontStyle.RelativeSize else fontStyle.FontSize

		local font = fontStyle.Font

		if imageProps then
			text = GetWrappedTextWithIcon(text, fontSize, font, imageProps.Size.X.Offset, padding)
		end

		local labelTextSize = GetTextSize(text, fontSize, font, Vector2.new(maxSize.X, maxSize.Y))
		local labelTextHeight = useMaxHeight and maxSize.Y or labelTextSize.Y

		return Roact.createElement(
			"Frame",
			Cryo.Dictionary.join(frameProps, {
				Size = UDim2.new(0, labelTextSize.X, 0, labelTextHeight),
			}),
			{
				Icon = if imageProps then Roact.createElement(ImageSetComponent.Label, imageProps) else nil,
				Name = Roact.createElement(
					GenericTextLabel,
					Cryo.Dictionary.join(genericTextLabelProps, {
						Text = text,
						AnchorPoint = Vector2.new(0, 0),
						Position = UDim2.new(0, 0, 0, 0),
						Size = UDim2.new(1, 0, 1, 0),
						TextXAlignment = Enum.TextXAlignment.Left,
						TextYAlignment = Enum.TextYAlignment.Top,
						fluidSizing = if imageProps then false else self.props.fluidSizing,
						maxSize = maxSize,
					})
				),
			}
		)
	end)
end

return ImageTextLabel
