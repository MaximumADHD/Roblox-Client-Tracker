local EmojiRoot = script.Parent
local Core = EmojiRoot.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)

local EmojiEnum = require(EmojiRoot.Enum.Emoji)
local constants = require(EmojiRoot.constants)

export type Props = {
	emoji: string,
	textFont: Enum.Font,
	textSize: number,
	onActivated: (() -> ())?,
}

local function getEmojiString(emoji: string)
	if EmojiEnum.isEnumValue(emoji) then
		local enum = emoji.rawValue()
		return constants[enum]
	end
	return ""
end

local function Emoji(props: Props)
	return React.createElement(if props.onActivated then "TextButton" else "TextLabel", {
		Position = UDim2.fromScale(1, 0),
		Size = UDim2.fromScale(0, 1),
		Text = getEmojiString(props.emoji),
		TextColor3 = Color3.fromHex("#fff"),
		AutomaticSize = Enum.AutomaticSize.X,
		Font = props.textFont,
		TextSize = props.textSize,
		BackgroundTransparency = 1,
		[React.Event.Activated] = props.onActivated,
	})
end

return Emoji
