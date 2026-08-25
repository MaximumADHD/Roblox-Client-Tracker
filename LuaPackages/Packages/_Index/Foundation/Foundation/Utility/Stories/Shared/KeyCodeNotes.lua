local KeyCodeCategories = require(script.Parent.KeyCodeCategories)

local SHIFT_SYMBOL_NOTE = "Shifted symbol KeyCode. Prefer detecting the base key plus Shift; rarely emitted on its own."

local SHIFT_SYMBOL_KEY_NAMES: { [string]: boolean } = {
	QuotedDouble = true,
	Hash = true,
	Dollar = true,
	Percent = true,
	Ampersand = true,
	LeftParenthesis = true,
	RightParenthesis = true,
	Asterisk = true,
	Plus = true,
	LessThan = true,
	GreaterThan = true,
	Question = true,
	At = true,
	Caret = true,
	Underscore = true,
	Colon = true,
	Pipe = true,
	LeftCurly = true,
	RightCurly = true,
	Tilde = true,
}

local KEYCODE_NOTES: { [string]: string } = {
	Unknown = "Sentinel value when no key is pressed.",

	Backspace = "Deletes the character before the cursor.",
	Tab = "Tab key; moves focus between fields.",
	Clear = "Clear key. Only present on some keyboards.",
	Return = "Main Enter/Return key. Roblox uses Return, not a separate Enter KeyCode.",
	Pause = "Pause key. Only present on some keyboards.",
	Escape = "Escape key.",
	Space = "Space bar.",

	NumLock = "Num Lock on the keypad cluster.",
	ScrollLock = "Scroll Lock (ScrLk).",

	LeftMeta = "Left Meta key. Only present on some keyboards.",
	RightMeta = "Right Meta key. Only present on some keyboards.",
	LeftSuper = "Left Windows / Command key.",
	RightSuper = "Right Windows / Command key.",
	Mode = "Mode key. Only present on some keyboards.",
	Compose = "Compose key. Only present on some keyboards.",
	Help = "Help key. Only present on some keyboards.",
	Print = "Print key. Only present on some keyboards.",
	SysReq = "SysReq key. Only present on some keyboards.",
	Break = "Break key. Only present on some keyboards.",
	Menu = "Context Menu key.",
	Power = "Power key. Only present on some keyboards.",
	Euro = "Euro (€) key. Only present on some keyboards.",
	Undo = "Undo key. Only present on some keyboards.",

	MouseLeftButton = "Primary mouse button.",
	MouseRightButton = "Secondary mouse button.",
	MouseMiddleButton = "Middle mouse button / scroll wheel click.",
	MousePosition = "Viewport pointer position for the Input Action System.",
	MouseWheel = "Scroll wheel input.",
	MouseDelta = "Pointer movement delta.",
	TouchPosition = "Touch position in the viewport for the Input Action System.",
	TrackpadPan = "Trackpad pan gesture.",
	TrackpadPinch = "Trackpad pinch gesture.",

	MouseBackButton = "Deprecated legacy mouse enum.",
	MouseNoButton = "Deprecated legacy mouse enum.",
	MouseX = "Deprecated legacy mouse enum.",
	MouseY = "Deprecated legacy mouse enum.",

	Thumbstick1Up = "Left stick pushed up.",
	Thumbstick1Down = "Left stick pushed down.",
	Thumbstick1Left = "Left stick pushed left.",
	Thumbstick1Right = "Left stick pushed right.",
	Thumbstick2Up = "Right stick pushed up.",
	Thumbstick2Down = "Right stick pushed down.",
	Thumbstick2Left = "Right stick pushed left.",
	Thumbstick2Right = "Right stick pushed right.",
}

local CATEGORY_NOTES: { [string]: string } = {
	Letters = "Single letter key on a QWERTY layout.",
	Numbers = "Top-row digit key on a QWERTY layout.",
	Keypad = "Key on the numeric keypad cluster.",
	["Function keys"] = "Function key row (F1–F15).",
	Arrows = "Arrow key.",
	Navigation = "Navigation/editing key.",
	Modifiers = "Modifier key (Shift, Ctrl, Alt, Caps Lock).",
	Punctuation = "Punctuation key on the main keyboard.",
	Gamepad = "Gamepad button, stick, or D-pad input.",
	["Mouse and touch"] = "Pointer, scroll, or touch input rather than a keyboard key.",
	Other = "Misc keyboard/input enum without a dedicated category.",
	Deprecated = "Deprecated legacy enum value.",
}

local function getKeyCodeNote(keyCode: Enum.KeyCode): string?
	local name = KeyCodeCategories.getKeyCodeName(keyCode)

	if KEYCODE_NOTES[name] then
		return KEYCODE_NOTES[name]
	end

	if name:match("^World%d+$") then
		return "Deprecated legacy SDL2 placeholder (World0–World95). Not reliably emitted by modern input."
	end

	if SHIFT_SYMBOL_KEY_NAMES[name] then
		return SHIFT_SYMBOL_NOTE
	end

	local category = KeyCodeCategories.getCategory(keyCode)
	if category == "Other" or category == "Deprecated" then
		return CATEGORY_NOTES[category]
	end

	return nil
end

return {
	getKeyCodeNote = getKeyCodeNote,
}
