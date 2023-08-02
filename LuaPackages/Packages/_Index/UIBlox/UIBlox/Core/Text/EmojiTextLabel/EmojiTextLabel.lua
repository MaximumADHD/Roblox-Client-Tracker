--!nonstrict
local EmojiTextLabelRoot = script.Parent
local Text = EmojiTextLabelRoot.Parent
local Core = Text.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)
local Cryo = require(Packages.Cryo)

local StyleTypes = require(UIBlox.App.Style.StyleTypes)
local validateFontInfo = require(UIBlox.Core.Style.Validator.validateFontInfo)
local validateColorInfo = require(UIBlox.Core.Style.Validator.validateColorInfo)
local useStyle = require(UIBlox.Core.Style.useStyle)
local GetTextSize = require(UIBlox.Core.Text.GetTextSize)

local EmojiRoot = UIBlox.Core.Emoji
local Emoji = require(EmojiRoot.Emoji)
local EmojiEnum = require(EmojiRoot.Enum.Emoji)

local GenericTextLabel = require(UIBlox.Core.Text.GenericTextLabel.GenericTextLabel)

local MAX_BOUND = 10000

type Props = {
	-- the string to render within GenericTextLabel
	Text: string,
	-- the Font table from the style palette
	fontStyle: validateFontInfo.FontInfo | StyleTypes.TypographyItem?,
	-- the color table from the style palette
	colorStyle: validateColorInfo.ColorInfo,
	-- the size available for the textbox
	maxSize: Vector2?,
	-- whether the TextLabel has Fluid Sizing between the font's min and default sizes
	fluidSizing: boolean?,
	-- the string of the emoji's unique UTF-8 character
	emoji: string?,
	-- the function that is called when the emoji button is activated
	emojiOnActivated: (() -> ())?,
}

local defaultProps = {
	maxSize = Vector2.new(MAX_BOUND, MAX_BOUND),
	fluidSizing = false,
}

local function EmojiTextLabel(props: Props)
	props = Cryo.Dictionary.join(defaultProps, props)

	local style = useStyle()
	local hasEmoji = EmojiEnum.isEnumValue(props.emoji)
	local baseSize = style.Font.BaseSize

	local fontStyle = props.fontStyle
	local textFont = fontStyle.Font

	local fontSize = if fontStyle.RelativeSize then baseSize * fontStyle.RelativeSize else fontStyle.FontSize

	local emojiWidth = fontSize
	local maxSize = props.maxSize

	local labelTextSize = GetTextSize(props.Text, fontSize, textFont, maxSize)
	local textLabelWidth = math.min(labelTextSize.X, maxSize.X - emojiWidth)

	local genericTextLabelProps = Cryo.Dictionary.join(props, {
		emoji = Cryo.None,
		emojiOnActivated = Cryo.None,
		Size = UDim2.fromOffset(textLabelWidth, labelTextSize.Y),
	})

	return React.createElement(GenericTextLabel, genericTextLabelProps, {
		Emoji = hasEmoji and React.createElement(Emoji, {
			emoji = props.emoji,
			onActivated = props.emojiOnActivated,
			textFont = textFont,
			textSize = emojiWidth,
			Position = UDim2.fromScale(1, 0),
		}),
	})
end

return EmojiTextLabel
