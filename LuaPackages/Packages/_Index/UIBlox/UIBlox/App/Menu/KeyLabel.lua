--!nonstrict
local TextService = game:GetService("TextService")
local UserInputService = game:GetService("UserInputService")

local Menu = script.Parent
local App = Menu.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local UIBloxConfig = require(UIBlox.UIBloxConfig)
local withStyle = require(UIBlox.Core.Style.withStyle)
local Images = require(UIBlox.App.ImageSet.Images)

local GenericTextLabel = require(UIBlox.Core.Text.GenericTextLabel.GenericTextLabel)
local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)

-- Additional width for keys with centered text like [Backspace], [Enter], etc
local CENTERED_EXTRA_WIDTH = 14 * 2

-- Side padding for off-centered keys [Shift   ]
local OFF_CENTER_PADDING = 9

local TEXT_CENTER_OFFSET = -1

local DEFAULT_KEY_LABEL_SIZE = require(Menu.MenuConstants).DefaultKeyLabelSize
local platformIconMap = require(Menu.platformIconMap)

-- Big and small font sizes for key text.
local BIG = "CaptionHeader"
local SMALL = "Footer"

local GAMEPAD_AXIS_OVERRIDE_MAP = if UIBloxConfig.usePlatformContentKeyLabels
	then platformIconMap.DIRECTIONAL_GAMEPAD_ICONS
	else {
		[Enum.KeyCode.Thumbstick1] = {
			directional = Images["icons/controls/keys/xboxLSDirectional"],
			horizontal = Images["icons/controls/keys/xboxLSHorizontal"],
			vertical = Images["icons/controls/keys/xboxLSVertical"],
		},
		[Enum.KeyCode.Thumbstick2] = {
			directional = Images["icons/controls/keys/xboxRSDirectional"],
			horizontal = Images["icons/controls/keys/xboxRSHorizontal"],
			vertical = Images["icons/controls/keys/xboxRSVertical"],
		},
	}

local GAMEPAD_OVERRIDE_MAP = if UIBloxConfig.usePlatformContentKeyLabels
	then platformIconMap.GAMEPAD_ICONS
	else {
		[Enum.KeyCode.ButtonX] = Images["icons/controls/keys/xboxX"],
		[Enum.KeyCode.ButtonY] = Images["icons/controls/keys/xboxY"],
		[Enum.KeyCode.ButtonA] = Images["icons/controls/keys/xboxA"],
		[Enum.KeyCode.ButtonB] = Images["icons/controls/keys/xboxB"],

		[Enum.KeyCode.DPadLeft] = Images["icons/controls/keys/dpadLeft"],
		[Enum.KeyCode.DPadRight] = Images["icons/controls/keys/dpadRight"],
		[Enum.KeyCode.DPadUp] = Images["icons/controls/keys/dpadUp"],
		[Enum.KeyCode.DPadDown] = Images["icons/controls/keys/dpadDown"],

		[Enum.KeyCode.ButtonStart] = Images["icons/controls/keys/xboxmenu"],
		[Enum.KeyCode.ButtonSelect] = Images["icons/controls/keys/xboxView"],

		[Enum.KeyCode.ButtonR1] = Images["icons/controls/keys/xboxRB"],
		[Enum.KeyCode.ButtonL1] = Images["icons/controls/keys/xboxLB"],
		[Enum.KeyCode.ButtonR2] = Images["icons/controls/keys/xboxRT"],
		[Enum.KeyCode.ButtonL2] = Images["icons/controls/keys/xboxLT"],
		[Enum.KeyCode.ButtonR3] = Images["icons/controls/keys/xboxRS"],
		[Enum.KeyCode.ButtonL3] = Images["icons/controls/keys/xboxLS"],

		-- Thumbstick defaults
		[Enum.KeyCode.Thumbstick1] = GAMEPAD_AXIS_OVERRIDE_MAP[Enum.KeyCode.Thumbstick1].directional,
		[Enum.KeyCode.Thumbstick2] = GAMEPAD_AXIS_OVERRIDE_MAP[Enum.KeyCode.Thumbstick2].directional,
	}

local KEYBOARD_OVERRIDE_MAP = {
	[Enum.KeyCode.Escape] = { text = "ESC", fontKey = SMALL, width = 36 },
	[Enum.KeyCode.Space] = { text = "Space", width = 92 },
	[Enum.KeyCode.LeftShift] = { text = "Shift", width = 66, alignment = Enum.TextXAlignment.Left },
	[Enum.KeyCode.LeftControl] = { text = "Ctrl", width = 66, alignment = Enum.TextXAlignment.Left },
	[Enum.KeyCode.Tab] = { text = "Tab", width = 56 },

	[Enum.KeyCode.LeftSuper] = { text = "Command" },
	[Enum.KeyCode.LeftMeta] = { text = "fn" },
	[Enum.KeyCode.LeftAlt] = { text = "Opt" },

	[Enum.KeyCode.Tilde] = { text = "~", fontKey = BIG },

	[Enum.KeyCode.F10] = { fontKey = BIG, width = 36 },
	[Enum.KeyCode.F11] = { fontKey = BIG, width = 36 },

	[Enum.KeyCode.Up] = { image = Images["icons/controls/keys/arrowUp"] },
	[Enum.KeyCode.Down] = { image = Images["icons/controls/keys/arrowDown"] },
	[Enum.KeyCode.Left] = { image = Images["icons/controls/keys/arrowLeft"] },
	[Enum.KeyCode.Right] = { image = Images["icons/controls/keys/arrowRight"] },
}

local KeyLabel = Roact.PureComponent:extend("KeyLabel")

local keyInterface = t.strictInterface({
	key = t.enum(Enum.KeyCode),
	-- Used for thumbsticks KeyCodes
	axis = t.optional(t.string),
})

KeyLabel.validateProps = t.strictInterface({
	-- KeyCode or a table with a KeyCode and some metadata for differentiating
	-- between multiple states of a single KeyCode
	keyCode = t.union(t.enum(Enum.KeyCode), keyInterface),

	-- Theme for the icon (border icon for keyboard KeyCodes, button icon for gamepad icons)
	iconThemeKey = t.optional(t.string),
	-- Theme for keyboard KeyCode text (unused for gamepad KeyCodes)
	textThemeKey = t.optional(t.string),

	AnchorPoint = t.optional(t.Vector2),
	Position = t.optional(t.UDim2),
	LayoutOrder = t.optional(t.integer),
	ZIndex = t.optional(t.integer),

	[Roact.Change.AbsoluteSize] = t.optional(t.callback),
})

KeyLabel.defaultProps = {
	iconThemeKey = "UIEmphasis",
	textThemeKey = "TextDefault",
}

local cachedKeyCodeStrings = {}
local function getStringForKeyCode(keyCode)
	if cachedKeyCodeStrings[keyCode] == nil then
		cachedKeyCodeStrings[keyCode] = UserInputService:GetStringForKeyCode(keyCode)
	end
	return cachedKeyCodeStrings[keyCode]
end

function KeyLabel:getKeyCodeAndMetadata()
	local keyCode = self.props.keyCode
	if typeof(keyCode) == "table" then
		return keyCode.key, keyCode.axis
	end
	return keyCode
end

function KeyLabel:getGamepadLabel(style)
	local keyCode, axis = self:getKeyCodeAndMetadata()
	local iconImage = axis and GAMEPAD_AXIS_OVERRIDE_MAP[keyCode][axis] or GAMEPAD_OVERRIDE_MAP[keyCode]
	local iconTheme = style.Theme[self.props.iconThemeKey]
	local iconSize = DEFAULT_KEY_LABEL_SIZE

	return Roact.createElement(ImageSetComponent.Label, {
		BackgroundTransparency = 1,

		ImageTransparency = iconTheme.Transparency,
		ImageColor3 = iconTheme.Color,
		Image = iconImage,

		Size = UDim2.fromOffset(iconSize, iconSize),

		AnchorPoint = self.props.AnchorPoint,
		Position = self.props.Position,
		LayoutOrder = self.props.LayoutOrder,
		ZIndex = self.props.ZIndex,

		[Roact.Change.AbsoluteSize] = self.props[Roact.Change.AbsoluteSize],
	})
end

function KeyLabel:getKeyboardLabel(style)
	local iconTheme = style.Theme[self.props.iconThemeKey]
	local width, content, alignment = self:getLabelWidthAndContent(style)

	local padding
	if alignment then
		padding = OFF_CENTER_PADDING
	end

	return Roact.createElement(ImageSetComponent.Label, {
		BackgroundTransparency = 1,

		ImageTransparency = iconTheme.Transparency,
		ImageColor3 = iconTheme.Color,
		Image = Images["icons/controls/keys/key_single"],

		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(Vector2.new(9, 7), Vector2.new(26, 26)),

		Size = UDim2.fromOffset(width, DEFAULT_KEY_LABEL_SIZE),

		AnchorPoint = self.props.AnchorPoint,
		Position = self.props.Position,
		LayoutOrder = self.props.LayoutOrder,
		ZIndex = self.props.ZIndex,

		[Roact.Change.AbsoluteSize] = self.props[Roact.Change.AbsoluteSize],
	}, {
		Padding = padding and Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, padding),
			PaddingRight = UDim.new(0, padding),
		}),
		LabelContent = content,
	})
end

function KeyLabel:getLabelWidthAndContent(style)
	local keyCode = self:getKeyCodeAndMetadata()
	local override = KEYBOARD_OVERRIDE_MAP[keyCode]
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
		local text, fontKey, width, alignment
		do
			if override and override.text then
				text = override.text
			else
				local keyString = getStringForKeyCode(keyCode)
				if keyString and keyString ~= "" then
					text = keyString
				else
					text = keyCode.Name
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

				local textWidth = TextService:GetTextSize(text, textSize, fontType, Vector2.new(math.huge, 36)).X

				width = textWidth + CENTERED_EXTRA_WIDTH
			end

			if override and override.alignment then
				alignment = override.alignment
			end
		end

		local contentFont = font[fontKey]
		local contentTextSize = font.BaseSize * contentFont.RelativeSize

		local content = Roact.createElement(GenericTextLabel, {
			colorStyle = style.Theme[self.props.textThemeKey],
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
		local keyCode = self:getKeyCodeAndMetadata()
		local isGamepadKeyCode = GAMEPAD_OVERRIDE_MAP[keyCode] ~= nil

		if isGamepadKeyCode then
			return self:getGamepadLabel(style)
		end
		return self:getKeyboardLabel(style)
	end)
end

return KeyLabel
