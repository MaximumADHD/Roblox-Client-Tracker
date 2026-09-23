-- Resolves a KeyCode to the glyph or word a cap should draw.
local Foundation = script:FindFirstAncestor("Foundation")

local UserInputService = require(Foundation.Utility.Wrappers.Services).UserInputService

local InputPlatform = require(Foundation.Enums.InputPlatform)
local getIconForKeyCode = require(Foundation.Utility.getIconForKeyCode)

type InputPlatform = InputPlatform.InputPlatform

-- Tagged so Luau can refine icon vs text; GamepadIcon draws without a cap.
export type ResolvedKey =
	{ kind: "Icon", icon: string }
	| { kind: "GamepadIcon", icon: string }
	| { kind: "Text", text: string }

local KEYCODES_BY_NAME: { [string]: Enum.KeyCode } = {}
for _, keyCode in Enum.KeyCode:GetEnumItems() do
	KEYCODES_BY_NAME[keyCode.Name] = keyCode
end

-- Right-hand modifiers fold onto the left so every lookup uses one KeyCode.
local MODIFIER_ALIASES: { [string]: string } = {
	RightAlt = "LeftAlt",
	RightControl = "LeftControl",
	RightMeta = "LeftMeta",
	RightShift = "LeftShift",
	RightSuper = "LeftSuper",
}

-- Wording for keys whose enum name is not what a player would call them.
local TEXT_OVERRIDES: { [string]: string } = {
	BackSlash = "\\",
	Backquote = "`",
	Comma = ",",
	Equals = "=",
	LeftBracket = "[",
	Minus = "-",
	PageDown = "Page Down",
	PageUp = "Page Up",
	Period = ".",
	Quote = "'",
	RightBracket = "]",
	Semicolon = ";",
	Slash = "/",

	QuotedDouble = '"',
	Hash = "#",
	Dollar = "$",
	Percent = "%",
	Ampersand = "&",
	LeftParenthesis = "(",
	RightParenthesis = ")",
	Plus = "+",
	LessThan = "<",
	GreaterThan = ">",
	Question = "?",
	At = "@",
	Underscore = "_",
	Colon = ":",
	Pipe = "|",
	LeftCurly = "{",
	RightCurly = "}",
	Tilde = "~",
	Euro = "€",

	MouseLeftButton = "Left mouse button",
	MouseMiddleButton = "Middle mouse button",
	MouseRightButton = "Right mouse button",
	MouseWheel = "Mouse wheel",

	Thumbstick1Up = "Left stick up",
	Thumbstick1Down = "Left stick down",
	Thumbstick1Left = "Left stick left",
	Thumbstick1Right = "Left stick right",
	Thumbstick2Up = "Right stick up",
	Thumbstick2Down = "Right stick down",
	Thumbstick2Left = "Right stick left",
	Thumbstick2Right = "Right stick right",
}

-- Axes, positions, and sentinels — not keys a player can press.
local NON_DISPLAYABLE: { [string]: boolean } = {
	MouseDelta = true,
	MousePosition = true,
	None = true,
	TouchPosition = true,
	TrackpadPan = true,
	TrackpadPinch = true,
	Unknown = true,
}

local function isGamepadKeyCode(keyCode: Enum.KeyCode): boolean
	local name = keyCode.Name
	return name:match("^Button") ~= nil or name:match("^DPad") ~= nil or name:match("^Thumbstick") ~= nil
end

local function normalizeModifier(keyCode: Enum.KeyCode): Enum.KeyCode
	local aliasName = MODIFIER_ALIASES[keyCode.Name]
	if aliasName == nil then
		return keyCode
	end

	-- The alias target may be missing from this engine version
	return KEYCODES_BY_NAME[aliasName] or keyCode
end

local function getStringForKeyCode(keyCode: Enum.KeyCode): string?
	local success, label = pcall(function()
		return UserInputService:GetStringForKeyCode(keyCode)
	end)

	if success and typeof(label) == "string" and label ~= "" then
		return label
	end

	return nil
end

local function isNonDisplayable(keyCode: Enum.KeyCode): boolean
	return NON_DISPLAYABLE[keyCode.Name] == true
end

local function resolveKey(keyCode: Enum.KeyCode, platform: InputPlatform): ResolvedKey?
	if isNonDisplayable(keyCode) then
		return nil
	end

	local normalized = normalizeModifier(keyCode)

	local icon = getIconForKeyCode(normalized, platform)
	if icon then
		-- Gamepad glyphs draw without a cap; missing glyphs fall through to text.
		if isGamepadKeyCode(normalized) then
			return { kind = "GamepadIcon", icon = icon }
		end
		return { kind = "Icon", icon = icon }
	end

	-- Corrected after the icon lookup, so wording never affects a key that has a glyph
	local override = TEXT_OVERRIDES[normalized.Name]
	if override then
		return { kind = "Text", text = override }
	end

	return { kind = "Text", text = getStringForKeyCode(normalized) or normalized.Name }
end

return {
	isNonDisplayable = isNonDisplayable,
	resolveKey = resolveKey,
}
