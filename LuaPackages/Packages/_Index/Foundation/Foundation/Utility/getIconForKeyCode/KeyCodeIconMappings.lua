--[[
	Purpose: Maps KeyCode names to BuilderIcons glyphs per platform.

	Origin: BuilderIcons `builderIconPlatformUtils/KeycodeMappings`.

	Notes:
	- PS4 and PS5 hold cloned mappings, so either generation can be overridden on
	  its own.
	- Icon keys are stored rather than resolved assets, so a renamed or missing
	  asset surfaces at lookup.
	- Equivalent keypad and legacy gamepad names share glyphs; keys left unmapped
	  fall back to text.
]]
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)

local InputPlatform = require(Foundation.Enums.InputPlatform)

type IconKeys = { [string]: string }

local playstationIconKeys: IconKeys = {
	ButtonA = "PsX",
	ButtonB = "PsCircle",
	ButtonX = "PsSquare",
	ButtonY = "PsTriagle",
	ButtonL1 = "PsL1",
	ButtonL2 = "PsL2",
	ButtonL3 = "PsL3",
	ButtonR1 = "PsR1",
	ButtonR2 = "PsR2",
	ButtonR3 = "PsR3",
	Thumbstick1 = "PsStickLeft",
	Thumbstick2 = "PsStickRight",
	DPadDown = "PsDpadDown",
	DPadUp = "PsDpadUp",
	DPadLeft = "PsDpadLeft",
	DPadRight = "PsDpadRight",
	ButtonDown = "PsDpadDown",
	ButtonUp = "PsDpadUp",
	ButtonLeft = "PsDpadLeft",
	ButtonRight = "PsDpadRight",
}

-- Clone the shared entries so console overrides do not alias.
local function merge(base: IconKeys, overrides: IconKeys): IconKeys
	local result: IconKeys = table.clone(base)
	for keyName, iconKey in overrides do
		result[keyName] = iconKey
	end
	return result
end

local ICON_KEYS_BY_PLATFORM: { [string]: IconKeys } = {
	[InputPlatform.PS4] = merge(playstationIconKeys, {
		ButtonStart = "Ps4Options",
		ButtonSelect = "Ps4Share",
		ButtonBack = "Ps4Share",
	}),
	[InputPlatform.PS5] = merge(playstationIconKeys, {
		ButtonStart = "Ps5Options",
		ButtonSelect = "Ps5Share",
		ButtonBack = "Ps5Share",
	}),
	[InputPlatform.Xbox] = {
		ButtonA = "XboxA",
		ButtonB = "XboxB",
		ButtonX = "XboxX",
		ButtonY = "XboxY",
		ButtonL1 = "XboxLb",
		ButtonL2 = "XboxLt",
		ButtonL3 = "XboxStickLeft",
		ButtonR1 = "XboxRb",
		ButtonR2 = "XboxRt",
		ButtonR3 = "XboxStickRight",
		ButtonStart = "XboxMenu",
		ButtonSelect = "XboxView",
		ButtonBack = "XboxView",
		Thumbstick1 = "XboxStickLeftDirectional",
		Thumbstick2 = "XboxStickRightDirectional",
		DPadDown = "XboxDpadDown",
		DPadUp = "XboxDpadUp",
		DPadLeft = "XboxDpadLeft",
		DPadRight = "XboxDpadRight",
		ButtonDown = "XboxDpadDown",
		ButtonUp = "XboxDpadUp",
		ButtonLeft = "XboxDpadLeft",
		ButtonRight = "XboxDpadRight",
	},
	[InputPlatform.Default] = {
		Backspace = "KeyBackspace",
		CapsLock = "KeyCapsLock",
		Escape = "SquareTextEsc",
		Return = "KeyReturn",
		KeypadEnter = "KeyReturn",
		Space = "KeySpace",
		Tab = "KeyTab",

		Down = "KeyArrowDown",
		Left = "KeyArrowLeft",
		Right = "KeyArrowRight",
		Up = "KeyArrowUp",

		LeftAlt = "KeyAlt",
		RightAlt = "KeyAlt",
		LeftControl = "KeyControl",
		RightControl = "KeyControl",
		LeftMeta = "KeyCommand",
		RightMeta = "KeyCommand",
		LeftSuper = "KeyCommand",
		RightSuper = "KeyCommand",
		LeftShift = "KeyShift",
		RightShift = "KeyShift",

		Asterisk = "KeyAsterisk",
		KeypadMultiply = "KeyAsterisk",
		Backquote = "KeyGraveAccent",
		Caret = "KeyCaret",
		Comma = "KeyComma",
		Period = "KeyPeriod",
		KeypadPeriod = "KeyPeriod",
		Quote = "KeyApostrophe",

		MouseLeftButton = "MouseButtonLeft",
		MouseMiddleButton = "MouseButtonCenter",
		MouseRightButton = "MouseButtonRight",
		MouseWheel = "MouseScrollwheel",
	},
}

local function resolveIconAsset(iconKey: string): string?
	local asset = BuilderIcons.Icon[iconKey]
	if typeof(asset) ~= "string" or asset == "" then
		return nil
	end
	return asset
end

local ICON_ASSETS_BY_PLATFORM: { [string]: { [string]: string } } = {}
for platform, iconKeys in ICON_KEYS_BY_PLATFORM do
	local assets: { [string]: string } = {}
	for keyName, iconKey in iconKeys do
		local asset = resolveIconAsset(iconKey)
		if asset then
			assets[keyName] = asset
		end
	end
	ICON_ASSETS_BY_PLATFORM[platform] = assets
end

-- Cross-fallback supports mixed keyboard and gamepad shortcuts.
local function getFallbackPlatform(platform: string): string
	return if platform == InputPlatform.Default then InputPlatform.Xbox else InputPlatform.Default
end

local function getIconForKeyName(keyName: string, platform: string): string?
	local asset = ICON_ASSETS_BY_PLATFORM[platform][keyName]
	if asset then
		return asset
	end

	return ICON_ASSETS_BY_PLATFORM[getFallbackPlatform(platform)][keyName]
end

return {
	getIconForKeyName = getIconForKeyName,
	-- Lets tests distinguish missing assets from undeclared mappings.
	iconKeysByPlatform = ICON_KEYS_BY_PLATFORM,
}
