export type KeyCodeCategoryName =
	"Letters"
	| "Numbers"
	| "Keypad"
	| "Function keys"
	| "Arrows"
	| "Navigation"
	| "Modifiers"
	| "Punctuation"
	| "Gamepad"
	| "Mouse and touch"
	| "Other"
	| "Deprecated"

local LETTERS: KeyCodeCategoryName = "Letters"
local NUMBERS: KeyCodeCategoryName = "Numbers"
local KEYPAD: KeyCodeCategoryName = "Keypad"
local FUNCTION_KEYS: KeyCodeCategoryName = "Function keys"
local ARROWS: KeyCodeCategoryName = "Arrows"
local NAVIGATION: KeyCodeCategoryName = "Navigation"
local MODIFIERS: KeyCodeCategoryName = "Modifiers"
local PUNCTUATION: KeyCodeCategoryName = "Punctuation"
local GAMEPAD: KeyCodeCategoryName = "Gamepad"
local MOUSE_AND_TOUCH: KeyCodeCategoryName = "Mouse and touch"
local OTHER: KeyCodeCategoryName = "Other"
local DEPRECATED: KeyCodeCategoryName = "Deprecated"

local CATEGORY_ORDER: { KeyCodeCategoryName } = {
	LETTERS,
	NUMBERS,
	KEYPAD,
	FUNCTION_KEYS,
	ARROWS,
	NAVIGATION,
	MODIFIERS,
	PUNCTUATION,
	GAMEPAD,
	MOUSE_AND_TOUCH,
	OTHER,
	DEPRECATED,
}

local DEPRECATED_KEY_NAMES: { [string]: boolean } = {
	MouseBackButton = true,
	MouseNoButton = true,
	MouseX = true,
	MouseY = true,
}

local MOUSE_AND_TOUCH_KEY_NAMES: { [string]: boolean } = {
	MouseLeftButton = true,
	MouseRightButton = true,
	MouseMiddleButton = true,
	MousePosition = true,
	MouseWheel = true,
	MouseDelta = true,
	TouchPosition = true,
	TrackpadPan = true,
	TrackpadPinch = true,
}

local NUMBER_KEY_NAMES: { [string]: boolean } = {
	Zero = true,
	One = true,
	Two = true,
	Three = true,
	Four = true,
	Five = true,
	Six = true,
	Seven = true,
	Eight = true,
	Nine = true,
}

local NUMBER_KEY_ORDER: { Enum.KeyCode } = {
	Enum.KeyCode.Zero,
	Enum.KeyCode.One,
	Enum.KeyCode.Two,
	Enum.KeyCode.Three,
	Enum.KeyCode.Four,
	Enum.KeyCode.Five,
	Enum.KeyCode.Six,
	Enum.KeyCode.Seven,
	Enum.KeyCode.Eight,
	Enum.KeyCode.Nine,
}

local MODIFIER_KEY_NAMES: { [string]: boolean } = {
	LeftShift = true,
	RightShift = true,
	LeftControl = true,
	RightControl = true,
	LeftAlt = true,
	RightAlt = true,
	CapsLock = true,
}

local ARROW_KEY_NAMES: { [string]: boolean } = {
	Up = true,
	Down = true,
	Left = true,
	Right = true,
}

local NAVIGATION_KEY_NAMES: { [string]: boolean } = {
	Insert = true,
	Home = true,
	End = true,
	PageUp = true,
	PageDown = true,
}

local PUNCTUATION_KEY_NAMES: { [string]: boolean } = {
	Comma = true,
	Period = true,
	Slash = true,
	BackSlash = true,
	Semicolon = true,
	Quote = true,
	Backquote = true,
	Equals = true,
	Minus = true,
	LeftBracket = true,
	RightBracket = true,
}

local function getKeyCodeName(keyCode: Enum.KeyCode): string
	local name = keyCode.Name
	if name ~= "" then
		return name
	end

	local enumName = tostring(keyCode):match("^Enum%.KeyCode%.(.+)$")
	if enumName then
		return enumName
	end

	return tostring(keyCode)
end

local function isDeprecatedKeyCode(name: string): boolean
	if DEPRECATED_KEY_NAMES[name] then
		return true
	end
	return name:match("^World%d+$") ~= nil
end

local function isGamepadKeyCode(name: string): boolean
	return name:match("^Button") ~= nil or name:match("^DPad") ~= nil or name:match("^Thumbstick") ~= nil
end

local function getCategory(keyCode: Enum.KeyCode): KeyCodeCategoryName
	local name = getKeyCodeName(keyCode)

	if isDeprecatedKeyCode(name) then
		return DEPRECATED
	end
	if isGamepadKeyCode(name) then
		return GAMEPAD
	end
	if MOUSE_AND_TOUCH_KEY_NAMES[name] then
		return MOUSE_AND_TOUCH
	end
	if name:match("^Keypad") then
		return KEYPAD
	end
	if name:match("^[A-Z]$") then
		return LETTERS
	end
	if NUMBER_KEY_NAMES[name] then
		return NUMBERS
	end
	if name:match("^F%d+$") then
		return FUNCTION_KEYS
	end
	if ARROW_KEY_NAMES[name] then
		return ARROWS
	end
	if NAVIGATION_KEY_NAMES[name] then
		return NAVIGATION
	end
	if MODIFIER_KEY_NAMES[name] then
		return MODIFIERS
	end
	if PUNCTUATION_KEY_NAMES[name] then
		return PUNCTUATION
	end
	return OTHER
end

local function sortInCategory(category: string, keyCodes: { Enum.KeyCode })
	if category == NUMBERS then
		table.sort(keyCodes, function(a, b)
			local indexA = table.find(NUMBER_KEY_ORDER, a) or 0
			local indexB = table.find(NUMBER_KEY_ORDER, b) or 0
			return indexA < indexB
		end)
	elseif category == FUNCTION_KEYS then
		table.sort(keyCodes, function(a, b)
			local numberA = tonumber((getKeyCodeName(a):match("^F(%d+)$"))) or 0
			local numberB = tonumber((getKeyCodeName(b):match("^F(%d+)$"))) or 0
			return numberA < numberB
		end)
	elseif category == DEPRECATED then
		table.sort(keyCodes, function(a, b)
			local nameA = getKeyCodeName(a)
			local nameB = getKeyCodeName(b)
			local worldA = tonumber(nameA:match("^World(%d+)$"))
			local worldB = tonumber(nameB:match("^World(%d+)$"))
			if worldA and worldB then
				return worldA < worldB
			end
			if worldA then
				return true
			end
			if worldB then
				return false
			end
			return nameA < nameB
		end)
	else
		table.sort(keyCodes, function(a, b)
			return getKeyCodeName(a) < getKeyCodeName(b)
		end)
	end
end

local function groupByCategory(keyCodes: { Enum.KeyCode }): { [string]: { Enum.KeyCode } }
	local grouped: { [string]: { Enum.KeyCode } } = {}

	for index = 1, #CATEGORY_ORDER do
		local categoryName = CATEGORY_ORDER[index]
		grouped[categoryName] = {}
	end

	for _, keyCode in keyCodes do
		table.insert(grouped[getCategory(keyCode)], keyCode)
	end

	for index = 1, #CATEGORY_ORDER do
		local categoryName = CATEGORY_ORDER[index]
		sortInCategory(categoryName, grouped[categoryName])
	end

	return grouped
end

local function getNonEmptyCategories(grouped: { [string]: { Enum.KeyCode } }): { string }
	local categories: { string } = {}
	for index = 1, #CATEGORY_ORDER do
		local categoryName = CATEGORY_ORDER[index]
		if #grouped[categoryName] > 0 then
			table.insert(categories, categoryName)
		end
	end
	return categories
end

export type KeyCodeCategoriesModule = {
	CATEGORY_ORDER: { KeyCodeCategoryName },
	getKeyCodeName: (Enum.KeyCode) -> string,
	getCategory: (Enum.KeyCode) -> KeyCodeCategoryName,
	groupByCategory: (keyCodes: { Enum.KeyCode }) -> { [string]: { Enum.KeyCode } },
	getNonEmptyCategories: (grouped: { [string]: { Enum.KeyCode } }) -> { string },
	sortInCategory: (category: string, keyCodes: { Enum.KeyCode }) -> (),
}

local module: KeyCodeCategoriesModule = {
	CATEGORY_ORDER = CATEGORY_ORDER,
	getKeyCodeName = getKeyCodeName,
	getCategory = getCategory,
	groupByCategory = groupByCategory,
	getNonEmptyCategories = getNonEmptyCategories,
	sortInCategory = sortInCategory,
}

return module
