local TextService = game:GetService("TextService")
local UserInputService = game:GetService("UserInputService")

local Menu = script.Parent
local App = Menu.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local withStyle = require(UIBlox.Core.Style.withStyle)

local Images = require(UIBlox.App.ImageSet.Images)

local GenericTextLabel = require(UIBlox.Core.Text.GenericTextLabel.GenericTextLabel)

local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)

-- Additional width for keys with centered text like [Backspace], [Enter], etc
local CENTERED_EXTRA_WIDTH = 14 * 2

-- Side padding for off-centered keys [Shift   ]
local OFF_CENTER_PADDING = 9

local TEXT_CENTER_OFFSET = -1

local KEY_LABEL_HEIGHT = 36

-- Big and small font sizes for key text.
local BIG = "CaptionHeader"
local SMALL = "Footer"

local CONTENT_OVERRIDE_MAP = {
	[Enum.KeyCode.Escape] = {text = "ESC", fontKey = SMALL, width = 36},
	[Enum.KeyCode.Space] = {text = "Space", width = 92},
	[Enum.KeyCode.LeftShift] = {text = "Shift", width = 66, alignment = Enum.TextXAlignment.Left},
	[Enum.KeyCode.LeftControl] = {text = "Ctrl", width = 66, alignment = Enum.TextXAlignment.Left},
	[Enum.KeyCode.Tab] = {text = "Tab", width = 56},

	[Enum.KeyCode.LeftSuper] = {text = "Command"},
	[Enum.KeyCode.LeftMeta] = {text = "fn"},
	[Enum.KeyCode.LeftAlt] = {text = "Opt"},

	[Enum.KeyCode.Tilde] = {text = "~", fontKey = BIG},

	[Enum.KeyCode.F10] = {fontKey = BIG, width = 36},
	[Enum.KeyCode.F11] = {fontKey = BIG, width = 36},

	[Enum.KeyCode.Up] = {image = Images["icons/controls/keys/arrowDown"]},
	[Enum.KeyCode.Down] = {image = Images["icons/controls/keys/arrowLeft"]},
	[Enum.KeyCode.Left] = {image = Images["icons/controls/keys/arrowRight"]},
	[Enum.KeyCode.Right] = {image = Images["icons/controls/keys/arrowUp"]},
}

local KeyLabel = Roact.PureComponent:extend("KeyLabel")

KeyLabel.validateProps =  t.strictInterface({
	keyCode = t.enum(Enum.KeyCode),

	anchorPoint = t.optional(t.Vector2),
	position = t.optional(t.UDim2),
	layoutOrder = t.optional(t.integer),

	[Roact.Change.AbsoluteSize] = t.optional(t.callback),
})

local cachedKeyCodeStrings = {}
local function getStringForKeyCode(keyCode)
	if cachedKeyCodeStrings[keyCode] == nil then
		cachedKeyCodeStrings[keyCode] = UserInputService:GetStringForKeyCode(keyCode)
	end
	return cachedKeyCodeStrings[keyCode]
end

function KeyLabel:getLabelWidthAndContent(style)
	local override = CONTENT_OVERRIDE_MAP[self.props.keyCode]
	local font = style.Font

	if override and override.image then
		local width = 36
		local content = Roact.createElement(ImageSetComponent.Label, {
			AnchorPoint = Vector2.new(0.5, 0.5),
			BackgroundTransparency = 1,
			Image = override.image,
			ImageColor3 = style.Theme.IconEmphasis.Color,
			ImageTransparency = style.Theme.IconEmphasis.Transparency,
			Position = UDim2.new(0.5, 0, 0.5, -1),
			Size = UDim2.fromOffset(16, 16),
		})

		return width, content
	else
		local text, fontKey, width, alignment do
			if override and override.text then
				text = override.text
			else
				local keyString = getStringForKeyCode(self.props.keyCode)
				if keyString and keyString ~= "" then
					text = keyString
				else
					text = self.props.keyCode.Name
				end
			end

			local textIsShort = text:len() < 3

			if override and override.fontKey then
				fontKey = override.fontKey
			else
				fontKey = textIsShort and BIG or SMALL
			end

			if override and override.width then
				width = override.width
			elseif textIsShort then
				width = 36
			else
				local fontStyle = style.Font[fontKey]

				local textSize = fontStyle.RelativeSize * style.Font.BaseSize
				local fontType = fontStyle.Font

				local textWidth = TextService:GetTextSize(
					text,
					textSize,
					fontType,
					Vector2.new(math.huge, 36)
				).X

				width = textWidth + CENTERED_EXTRA_WIDTH
			end

			if override and override.alignment then
				alignment = override.alignment
			end
		end

		local contentFont = font[fontKey]
		local contentTextSize = font.BaseSize * contentFont.RelativeSize

		local content = Roact.createElement(GenericTextLabel, {
			colorStyle = style.Theme.TextDefault,
			fontStyle = contentFont,

			Text = text,
			TextSize = contentTextSize,

			Size = UDim2.fromScale(1, 1),
			Position = UDim2.fromOffset(0, TEXT_CENTER_OFFSET),
			TextXAlignment = alignment,
		})

		return width, content, alignment
	end
end

function KeyLabel:render()
	return withStyle(function(style)
		local borderTheme = style.Theme.UIEmphasis

		local width, content, alignment = self:getLabelWidthAndContent(style)

		local padding
		if alignment then
			padding = OFF_CENTER_PADDING
		end

		return Roact.createElement(ImageSetComponent.Label, {
			BackgroundTransparency = 1,

			ImageTransparency = borderTheme.Transparency,
			ImageColor3 = borderTheme.Color,

			Image = Images["icons/controls/keys/key_single"],
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(Vector2.new(9, 7), Vector2.new(26, 26)),

			Size = UDim2.fromOffset(width, KEY_LABEL_HEIGHT),
			Position = self.props.Position,
			AnchorPoint = self.props.AnchorPoint,

			LayoutOrder = self.props.LayoutOrder,

			[Roact.Change.AbsoluteSize] = self.props[Roact.Change.AbsoluteSize]
		}, {
			Padding = padding and Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, padding),
				PaddingRight = UDim.new(0, padding)
			}),
			LabelContent = content
		})
	end)
end

return KeyLabel