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

local EmojiRoot = UIBlox.Core.Emoji
local Emoji = require(EmojiRoot.Emoji)
local EmojiEnum = require(EmojiRoot.Enum.Emoji)

local GenericTextLabel = require(UIBlox.Core.Text.GenericTextLabel.GenericTextLabel)

local MAX_BOUND = 10000

type Props = {
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
	local fontSizeMax = props.fontStyle.RelativeSize * baseSize
	local emojiWidth = fontSizeMax

	local genericTextLabelProps = Cryo.Dictionary.join(props, {
		emoji = Cryo.None,
		emojiOnActivated = Cryo.None,
	})

	return React.createElement(GenericTextLabel, genericTextLabelProps, {
		Emoji = hasEmoji and React.createElement(Emoji, {
			emoji = props.emoji,
			onActivated = props.emojiOnActivated,
			textFont = textFont,
			textSize = emojiWidth,
		}),
	})
end

return EmojiTextLabel
