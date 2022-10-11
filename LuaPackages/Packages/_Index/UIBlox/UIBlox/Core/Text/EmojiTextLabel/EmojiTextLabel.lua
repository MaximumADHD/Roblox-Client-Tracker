local EmojiTextLabelRoot = script.Parent
local Text = EmojiTextLabelRoot.Parent
local App = Text.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)
local Cryo = require(Packages.Cryo)

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
	Text: string,
	fontStyle: validateFontInfo.FontInfo,
	colorStyle: validateColorInfo.ColorInfo,
	maxSize: Vector2?,
	fluidSizing: boolean?,
	emoji: string?,
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
	local textFont = props.fontStyle.Font
	local fontSize = props.fontStyle.RelativeSize * baseSize
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
