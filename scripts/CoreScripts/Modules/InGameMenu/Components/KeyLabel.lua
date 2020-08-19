local TextService = game:GetService("TextService")
local UserInputService = game:GetService("UserInputService")
local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t

local withStyle = UIBlox.Core.Style.withStyle

local InGameMenu = script.Parent.Parent

local Assets = require(InGameMenu.Resources.Assets)

local GlobalConfig = require(InGameMenu.GlobalConfig)

local ThemedTextLabel = require(InGameMenu.Components.ThemedTextLabel)

local ImageSetLabel = UIBlox.Core.ImageSet.Label

-- Additional width for keys with centered text like [Backspace], [Enter], etc
local CENTERED_EXTRA_WIDTH = 14 * 2

-- Side padding for off-centered keys [Shift   ]
local OFF_CENTER_PADDING = 9

-- Big and small font sizes for key text. (Var names are succinct to make
-- populating override more easy)
local BIG = "CaptionHeader"
local SMALL = "Footer"

local DEFAULT_BORDER_THEME = "UIEmphasis"
local DEFAULT_TEXT_THEME = "TextEmphasis"

local CONTENT_OVERRIDE_MAP = {
	[Enum.KeyCode.Escape] = {text = "ESC", fontKey = SMALL, width = 36},
	[Enum.KeyCode.Space] = {text = "Space", width = 92},
	[Enum.KeyCode.LeftShift] = {text = "Shift", width = 66, alignment = Enum.TextXAlignment.Left},
	[Enum.KeyCode.LeftControl] = {text = "Ctrl", width = 66, alignment = Enum.TextXAlignment.Left},

	[Enum.KeyCode.LeftSuper] = {text = "Command"},
	[Enum.KeyCode.LeftMeta] = {text = "fn"},
	[Enum.KeyCode.LeftAlt] = {text = "Opt"},

	[Enum.KeyCode.Tilde] = {text = "~", fontKey = BIG},

	[Enum.KeyCode.F10] = {fontKey = BIG, width = 36},
	[Enum.KeyCode.F11] = {fontKey = BIG, width = 36},

	[Enum.KeyCode.Up] = {image = Assets.Images.UpArrow},
	[Enum.KeyCode.Down] = {image = Assets.Images.DownArrow},
	[Enum.KeyCode.Left] = {image = Assets.Images.LeftArrow},
	[Enum.KeyCode.Right] = {image = Assets.Images.RightArrow},
}

local validateProps = t.strictInterface({
	input = t.enum(Enum.KeyCode),
	--Defaults to UIEmphasis
	borderThemeKey = t.optional(t.string),
	--Defaults to TextEmphasis
	textThemeKey = t.optional(t.string),

	AnchorPoint = t.optional(t.Vector2),
	Position = t.optional(t.UDim2),
	LayoutOrder = t.optional(t.integer),
	ZIndex = t.optional(t.integer),
})

local function getLabelWidthAndContent(input, style, textThemeKey)
	local override = CONTENT_OVERRIDE_MAP[input]

	if override and override.image then
		local width = 36
		local content = Roact.createElement(ImageSetLabel, {
			AnchorPoint = Vector2.new(0.5, 0.5),
			BackgroundTransparency = 1,
			Image = override.image,
			ImageColor3 = style.Theme.IconEmphasis.Color,
			ImageTransparency = style.Theme.IconEmphasis.Transparency,
			Position = UDim2.new(0.5, 0, 0.5, -1),
			Size = UDim2.new(0, 16, 0, 16),
		})

		return width, content
	else
		local text, fontKey, width, alignment do
			local keyString = UserInputService:GetStringForKeyCode(input)

			if override and override.text then
				text = override.text
			elseif keyString and keyString ~= "" then
				text = keyString
			else
				text = input.Name
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

		local content = Roact.createElement(ThemedTextLabel, {
			fontKey = fontKey,
			themeKey = textThemeKey or DEFAULT_TEXT_THEME,
			Text = text,

			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0, 0, 0, -1),
			TextXAlignment = alignment,
		})

		return width, content, alignment
	end
end

local function KeyLabel(props)
	if GlobalConfig.propValidation then
		assert(validateProps(props))
	end

	return withStyle(function(style)
		local borderTheme = style.Theme[props.borderThemeKey or DEFAULT_BORDER_THEME]

		local width, content, alignment = getLabelWidthAndContent(
			props.input,
			style,
			props.textThemeKey
		)

		local padding
		if alignment then
			padding = OFF_CENTER_PADDING
		end

		return Roact.createElement(ImageSetLabel, {
			BackgroundTransparency = 1,

			ImageTransparency = borderTheme.Transparency,
			ImageColor3 = borderTheme.Color,

			Image = Assets.Images.KeyBorder,
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(Vector2.new(9, 7), Vector2.new(26, 26)),

			Size = UDim2.new(0, width, 0, 36),
			Position = props.Position,
			AnchorPoint = props.AnchorPoint,

			LayoutOrder = props.LayoutOrder,
			ZIndex = props.ZIndex,
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
