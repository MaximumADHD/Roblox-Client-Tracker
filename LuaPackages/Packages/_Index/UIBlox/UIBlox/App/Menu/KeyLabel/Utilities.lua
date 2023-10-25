local KeyLabelRoot = script.Parent
local Menu = KeyLabelRoot.Parent
local App = Menu.Parent
local UIBlox = App.Parent

local Types = require(KeyLabelRoot.Types)
local Constants = require(KeyLabelRoot.Constants)
local UIBloxConfig = require(UIBlox.UIBloxConfig)
local Fonts = require(App.Style.Fonts)
local Images = require(App.ImageSet.Images)
local GetTextSize = require(UIBlox.Core.Text.GetTextSize)
local platformIconMap = require(Menu.platformIconMap)

local UserInputService = game:GetService("UserInputService")

local GAMEPAD_AXIS_OVERRIDE_MAP = if UIBloxConfig.usePlatformContentKeyLabels
	then platformIconMap.DIRECTIONAL_GAMEPAD_ICONS :: any
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
	then platformIconMap.GAMEPAD_ICONS :: any
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

local KEYBOARD_OVERRIDE_MAP: { [Enum.KeyCode]: string | Types.Image } = {
	[Enum.KeyCode.Escape] = "Esc",
	[Enum.KeyCode.Print] = "Prt Sc",
	[Enum.KeyCode.ScrollLock] = "Sc Lock",
	[Enum.KeyCode.Pause] = "Pause",
	[Enum.KeyCode.Insert] = "Ins",
	[Enum.KeyCode.PageUp] = "PgUp",
	[Enum.KeyCode.NumLock] = "Num Lock",
	[Enum.KeyCode.Delete] = "Del",
	[Enum.KeyCode.End] = "End",
	[Enum.KeyCode.PageDown] = "PgDn",
	[Enum.KeyCode.CapsLock] = "Caps",
	[Enum.KeyCode.Return] = "Enter",
	[Enum.KeyCode.LeftShift] = "Shift",
	[Enum.KeyCode.LeftControl] = "Ctrl",
	[Enum.KeyCode.LeftAlt] = "Alt", -- Ideally would be "Opt" for mac
	[Enum.KeyCode.Space] = "Space",
	[Enum.KeyCode.LeftMeta] = "Fn",
	[Enum.KeyCode.LeftSuper] = "Cmd", -- Only for mac, ideally would be Windows key for windows
	[Enum.KeyCode.Tilde] = "~",

	[Enum.KeyCode.Up] = Images["icons/controls/keys/arrowUp"],
	[Enum.KeyCode.Down] = Images["icons/controls/keys/arrowDown"],
	[Enum.KeyCode.Left] = Images["icons/controls/keys/arrowLeft"],
	[Enum.KeyCode.Right] = Images["icons/controls/keys/arrowRight"],
}

local function getKeyCodeContent(keyCode: Types.FlexibleKeyCode): Types.KeyLabelContent
	if type(keyCode) == "table" then
		return { inputType = "gamepad", content = GAMEPAD_AXIS_OVERRIDE_MAP[keyCode.key][keyCode.axis] }
	elseif GAMEPAD_OVERRIDE_MAP[keyCode] then
		return {
			inputType = "gamepad",
			content = GAMEPAD_OVERRIDE_MAP[keyCode],
		}
	else
		local text = UserInputService:GetStringForKeyCode(keyCode)
		return {
			inputType = "keyboard",
			content = KEYBOARD_OVERRIDE_MAP[keyCode] or if text ~= "" then text else keyCode.Name,
		}
	end
end

local function getWidthFromContent(content: Types.KeyLabelContent, font: Fonts.FontPalette): number
	if content.inputType == "keyboard" then
		if type(content.content) == "string" then
			local baseSize: number = font.BaseSize
			-- note: Tooltip spec says use CaptionBody, KeyLabel spec sugggests to use heavier font
			local textFont = font.CaptionBody
			local fontSize = baseSize * textFont.RelativeSize
			-- is this expenseive? we only run on a few different strings, so we could memoize
			local innerWidth = GetTextSize(content.content, fontSize, textFont.Font, Vector2.zero).X
			if innerWidth + 2 * Constants.MIN_SIDE_PADDING > Constants.PREFERRED_WIDTH then
				return innerWidth + 2 * Constants.SIDE_PADDING
			end
		end
		return Constants.PREFERRED_WIDTH
		-- just using else doesn't get the proper type refinement
	elseif content.inputType == "gamepad" then
		local size: Vector2 = if typeof(content.content) == "string"
			then Constants.DEFAULT_GAMEPAD_ICON_SIZE
			else content.content.ImageRectSize
		return size.X * Constants.HEIGHT / size.Y
	end
	assert(false, string.format("Unreachable: Invalid inputType value: %q", content.inputType))
end

function getKeyLabelWidth(keyCode: Types.FlexibleKeyCode, font)
	local content = getKeyCodeContent(keyCode)
	return getWidthFromContent(content, font)
end

return {
	getKeyLabelWidth = getKeyLabelWidth,
	getKeyCodeContent = getKeyCodeContent,
	getWidthFromContent = getWidthFromContent,
}
