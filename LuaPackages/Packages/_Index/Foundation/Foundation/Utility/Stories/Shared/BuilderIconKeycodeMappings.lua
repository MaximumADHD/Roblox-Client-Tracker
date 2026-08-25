local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)

export type InputPlatform = "PS4" | "PS5" | "Xbox" | "Default"

local function resolveIconAsset(iconKey: string): string?
	local asset = BuilderIcons.Icon[iconKey]
	if typeof(asset) ~= "string" or asset == "" then
		return nil
	end
	return asset
end

local function forEachBuilderIcon(callback: (iconKey: string, iconAsset: string) -> ())
	for iconKey, iconAsset in BuilderIcons.Icon do
		if typeof(iconKey) == "string" and typeof(iconAsset) == "string" then
			callback(iconKey, iconAsset)
		end
	end
end

local function buildResolvedMappings(iconKeys: { [string]: string }): { [string]: string }
	local mappings: { [string]: string } = {}
	for keyName, iconKey in iconKeys do
		local asset = resolveIconAsset(iconKey)
		if asset then
			mappings[keyName] = asset
		end
	end
	return mappings
end

-- Mirrors BuilderIcons KeycodeMappings (internal module, not exposed via the public package).
-- Icon keys are kept separately so missing assets (nil assignments) can still be detected.
local psIconKeys: { [string]: string } = {
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
}

local xboxIconKeys: { [string]: string } = {
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
	Thumbstick1 = "XboxStickLeftDirectional",
	Thumbstick2 = "XboxStickRightDirectional",
	DPadDown = "XboxDpadDown",
	DPadUp = "XboxDpadUp",
	DPadLeft = "XboxDpadLeft",
	DPadRight = "XboxDpadRight",
}

local defaultIconKeys: { [string]: string } = {
	LeftAlt = "KeyAlt",
	RightAlt = "KeyAlt",
	Down = "KeyArrowDown",
	Up = "KeyArrowUp",
	Left = "KeyArrowLeft",
	Right = "KeyArrowRight",
	Asterisk = "KeyAsterisk",
	Backspace = "KeyBackspace",
	CapsLock = "KeyCapsLock",
	Caret = "KeyCaret",
	Comma = "KeyComma",
	LeftControl = "KeyControl",
	RightControl = "KeyControl",
	Backquote = "KeyGraveAccent",
	Period = "KeyPeriod",
	Return = "KeyReturn",
	LeftShift = "KeyShift",
	RightShift = "KeyShift",
	Space = "KeySpace",
	Tab = "KeyTab",
}

type PlatformMappings = {
	PS4: { [string]: string },
	PS5: { [string]: string },
	Xbox: { [string]: string },
	Default: { [string]: string },
}

local KEYCODE_ICON_KEYS_BY_PLATFORM: PlatformMappings = {
	PS4 = Dash.join(psIconKeys, {
		ButtonStart = "Ps4Options",
		ButtonSelect = "Ps4Share",
	}),
	PS5 = Dash.join(psIconKeys, {
		ButtonStart = "Ps5Options",
		ButtonSelect = "Ps5Share",
	}),
	Xbox = xboxIconKeys,
	Default = defaultIconKeys,
}

local KeycodeMappings: PlatformMappings = {
	PS4 = buildResolvedMappings(KEYCODE_ICON_KEYS_BY_PLATFORM.PS4),
	PS5 = buildResolvedMappings(KEYCODE_ICON_KEYS_BY_PLATFORM.PS5),
	Xbox = buildResolvedMappings(KEYCODE_ICON_KEYS_BY_PLATFORM.Xbox),
	Default = buildResolvedMappings(KEYCODE_ICON_KEYS_BY_PLATFORM.Default),
}

local GAMEPAD_PLATFORM_ORDER: { InputPlatform } = { "PS4", "PS5", "Xbox" }

local INPUT_PLATFORM_ORDER: { InputPlatform } = { "PS4", "PS5", "Xbox", "Default" }

local KEY_ICON_SUFFIX_TO_KEYCODE: { [string]: string } = {
	Alt = "LeftAlt",
	Apostrophe = "Quote",
	ArrowDown = "Down",
	ArrowUp = "Up",
	ArrowLeft = "Left",
	ArrowRight = "Right",
	Asterisk = "Asterisk",
	Backspace = "Backspace",
	CapsLock = "CapsLock",
	Caret = "Caret",
	Comma = "Comma",
	Control = "LeftControl",
	GraveAccent = "Backquote",
	Period = "Period",
	Return = "Return",
	Shift = "LeftShift",
	Space = "Space",
	Tab = "Tab",
}

local ICON_KEY_TO_KEYCODE_NAMES: { [string]: { string } } = {
	PsX = { "ButtonA" },
	PsCircle = { "ButtonB" },
	PsSquare = { "ButtonX" },
	PsTriagle = { "ButtonY" },
	PsL1 = { "ButtonL1" },
	PsL2 = { "ButtonL2" },
	PsL3 = { "ButtonL3" },
	PsR1 = { "ButtonR1" },
	PsR2 = { "ButtonR2" },
	PsR3 = { "ButtonR3" },
	PsStickLeft = { "Thumbstick1" },
	PsStickRight = { "Thumbstick2" },
	PsDpadDown = { "DPadDown" },
	PsDpadUp = { "DPadUp" },
	PsDpadLeft = { "DPadLeft" },
	PsDpadRight = { "DPadRight" },
	PsDpad = { "DPadDown", "DPadUp", "DPadLeft", "DPadRight" },
	Ps4Options = { "ButtonStart" },
	Ps4Share = { "ButtonSelect" },
	Ps5Options = { "ButtonStart" },
	Ps5Share = { "ButtonSelect" },
	XboxA = { "ButtonA" },
	XboxAPressed = { "ButtonA" },
	XboxAUnpressed = { "ButtonA" },
	XboxB = { "ButtonB" },
	XboxX = { "ButtonX" },
	XboxY = { "ButtonY" },
	XboxLb = { "ButtonL1" },
	XboxLt = { "ButtonL2" },
	XboxRb = { "ButtonR1" },
	XboxRt = { "ButtonR2" },
	XboxMenu = { "ButtonStart" },
	XboxView = { "ButtonSelect" },
	XboxStickLeft = { "ButtonL3", "Thumbstick1" },
	XboxStickLeftDirectional = { "Thumbstick1" },
	XboxStickLeftHorizontal = { "Thumbstick1" },
	XboxStickLeftVertical = { "Thumbstick1" },
	XboxStickRight = { "ButtonR3", "Thumbstick2" },
	XboxStickRightDirectional = { "Thumbstick2" },
	XboxStickRightHorizontal = { "Thumbstick2" },
	XboxStickRightVertical = { "Thumbstick2" },
	XboxDpadDown = { "DPadDown" },
	XboxDpadUp = { "DPadUp" },
	XboxDpadLeft = { "DPadLeft" },
	XboxDpadRight = { "DPadRight" },
	XboxDpad = { "DPadDown", "DPadUp", "DPadLeft", "DPadRight" },
	MouseButtonLeft = { "MouseLeftButton" },
	MouseButtonRight = { "MouseRightButton" },
	MouseScrollwheel = { "MouseWheel" },
}

local function isKeycodeRelatedIconKey(iconKey: string): boolean
	return iconKey:match("^Key") ~= nil
		or iconKey:match("^Ps") ~= nil
		or iconKey:match("^Xbox") ~= nil
		or iconKey:match("^Mouse") ~= nil
		or iconKey == "GenericDpad"
		or iconKey == "Controller"
		or iconKey == "ControllerWithCog"
		or iconKey == "Keyboard"
		or iconKey == "Playstation"
		or iconKey == "PlaystationCircle"
end

local function getKeycodeNamesForIconKey(iconKey: string): { string }
	if ICON_KEY_TO_KEYCODE_NAMES[iconKey] then
		return ICON_KEY_TO_KEYCODE_NAMES[iconKey]
	end

	local keySuffix = iconKey:match("^Key(.+)$")
	if keySuffix then
		local keycodeName = KEY_ICON_SUFFIX_TO_KEYCODE[keySuffix]
		if keycodeName then
			return { keycodeName }
		end
	end

	return {}
end

local function addIconToKeycode(keycodeToIcons: { [string]: { string } }, keyName: string, iconAsset: string?)
	if iconAsset == nil or iconAsset == "" then
		return
	end

	if keycodeToIcons[keyName] == nil then
		keycodeToIcons[keyName] = {}
	end

	if not table.find(keycodeToIcons[keyName], iconAsset) then
		table.insert(keycodeToIcons[keyName], iconAsset)
	end
end

local function buildKeycodeToAllIcons(): { [string]: { string } }
	local keycodeToIcons: { [string]: { string } } = {}

	for _, platform in INPUT_PLATFORM_ORDER do
		for keyName, iconAsset in KeycodeMappings[platform] do
			addIconToKeycode(keycodeToIcons, keyName, iconAsset)
		end
	end

	forEachBuilderIcon(function(iconKey, iconAsset)
		if isKeycodeRelatedIconKey(iconKey) then
			for _, keyName in getKeycodeNamesForIconKey(iconKey) do
				addIconToKeycode(keycodeToIcons, keyName, iconAsset)
			end
		end
	end)

	for _, icons in keycodeToIcons do
		table.sort(icons)
	end

	return keycodeToIcons
end

local KEYCODE_TO_ALL_ICONS = buildKeycodeToAllIcons()

local ALL_KEYCODE_ICON_ASSETS: { string } = {}
local ALL_KEYCODE_ICON_ASSET_SET: { [string]: boolean } = {}
local ASSIGNED_KEYCODE_ICON_ASSETS: { [string]: boolean } = {}

for _, icons in KEYCODE_TO_ALL_ICONS do
	for _, iconAsset in icons do
		ASSIGNED_KEYCODE_ICON_ASSETS[iconAsset] = true
	end
end

forEachBuilderIcon(function(iconKey, iconAsset)
	if isKeycodeRelatedIconKey(iconKey) and iconAsset ~= "" and not ALL_KEYCODE_ICON_ASSET_SET[iconAsset] then
		ALL_KEYCODE_ICON_ASSET_SET[iconAsset] = true
		table.insert(ALL_KEYCODE_ICON_ASSETS, iconAsset)
	end
end)

table.sort(ALL_KEYCODE_ICON_ASSETS, function(a, b)
	return a < b
end)

local UNMAPPED_KEYCODE_ICON_ASSETS: { string } = {}
forEachBuilderIcon(function(iconKey, iconAsset)
	if isKeycodeRelatedIconKey(iconKey) and iconAsset ~= "" and not ASSIGNED_KEYCODE_ICON_ASSETS[iconAsset] then
		if not table.find(UNMAPPED_KEYCODE_ICON_ASSETS, iconAsset) then
			table.insert(UNMAPPED_KEYCODE_ICON_ASSETS, iconAsset)
		end
	end
end)

table.sort(UNMAPPED_KEYCODE_ICON_ASSETS)

local ICON_ASSET_TO_KEY: { [string]: string } = {}
forEachBuilderIcon(function(iconKey, iconAsset)
	if iconAsset ~= "" then
		ICON_ASSET_TO_KEY[iconAsset] = iconKey
	end
end)

for _, icons in KEYCODE_TO_ALL_ICONS do
	table.sort(icons, function(a, b)
		return (ICON_ASSET_TO_KEY[a] or a) < (ICON_ASSET_TO_KEY[b] or b)
	end)
end

export type KeycodeIconEntry = {
	icon: string,
	name: string,
}

export type UnmappedKeycodeIconEntry = {
	icon: string,
	name: string,
	isBrokenLink: boolean,
}

local BROKEN_KEYCODE_MAPPING_KEY_NAMES: { [string]: boolean } = {}
local EXPECTED_ICON_KEY_BY_KEYNAME: { [string]: string } = {}

for _, platform in INPUT_PLATFORM_ORDER do
	for keyName, iconKey in KEYCODE_ICON_KEYS_BY_PLATFORM[platform] do
		EXPECTED_ICON_KEY_BY_KEYNAME[keyName] = iconKey
		if resolveIconAsset(iconKey) == nil then
			BROKEN_KEYCODE_MAPPING_KEY_NAMES[keyName] = true
		end
	end
end

local function getExpectedIconKeyForKeyName(keyName: string): string?
	return EXPECTED_ICON_KEY_BY_KEYNAME[keyName]
end

local function isBrokenKeycodeMapping(keyName: string): boolean
	return BROKEN_KEYCODE_MAPPING_KEY_NAMES[keyName] == true
end

local function isBrokenKeycodeMappingForKeyCode(keyCode: Enum.KeyCode): boolean
	return isBrokenKeycodeMapping(keyCode.Name)
end

local function getBrokenKeycodeMappingNote(keyName: string): string?
	if not isBrokenKeycodeMapping(keyName) then
		return nil
	end

	local expectedIconKey = getExpectedIconKeyForKeyName(keyName)
	if expectedIconKey then
		return `KeycodeMappings references {expectedIconKey}, but the icon asset is missing from BuilderIcons.`
	end

	return "KeycodeMappings declares this KeyCode, but the icon asset resolves to nil."
end

local function getIconForKeyName(keyName: string, platform: InputPlatform): string?
	return KeycodeMappings[platform][keyName]
end

local function getIconForKeyCode(keyCode: Enum.KeyCode, platform: InputPlatform): string?
	return getIconForKeyName(keyCode.Name, platform)
end

local function getAllIconsForKeyCode(keyCode: Enum.KeyCode): { string }
	return KEYCODE_TO_ALL_ICONS[keyCode.Name] or {}
end

local function getAllIconsForKeyName(keyName: string): { string }
	return KEYCODE_TO_ALL_ICONS[keyName] or {}
end

local function getIconNameForAsset(iconAsset: string): string
	return ICON_ASSET_TO_KEY[iconAsset] or iconAsset
end

local function getAllIconNamesForKeyCode(keyCode: Enum.KeyCode): { string }
	local iconNames: { string } = {}
	for _, iconAsset in getAllIconsForKeyCode(keyCode) do
		table.insert(iconNames, getIconNameForAsset(iconAsset))
	end
	return iconNames
end

local function getAllIconsWithNamesForKeyCode(keyCode: Enum.KeyCode): { KeycodeIconEntry }
	local entries: { KeycodeIconEntry } = {}
	for _, iconAsset in getAllIconsForKeyCode(keyCode) do
		table.insert(entries, {
			icon = iconAsset,
			name = getIconNameForAsset(iconAsset),
		})
	end
	return entries
end

local function getMappedKeyNames(): { string }
	local keyNames: { [string]: boolean } = {}
	for _, platform in INPUT_PLATFORM_ORDER do
		for keyName in KeycodeMappings[platform] do
			keyNames[keyName] = true
		end
	end

	local sortedKeyNames: { string } = {}
	for keyName in keyNames do
		table.insert(sortedKeyNames, keyName)
	end
	table.sort(sortedKeyNames)
	return sortedKeyNames
end

local function getInputPlatformColumnHeaders(): { string }
	local headers: { string } = {}
	for index = 1, #INPUT_PLATFORM_ORDER do
		table.insert(headers, INPUT_PLATFORM_ORDER[index])
	end
	return headers
end

local function getUnmappedKeycodeIcons(): { string }
	return UNMAPPED_KEYCODE_ICON_ASSETS
end

local function isBrokenLinkUnmappedIcon(iconKey: string): boolean
	local keycodeNames = getKeycodeNamesForIconKey(iconKey)
	if #keycodeNames ~= 1 then
		return false
	end

	return isBrokenKeycodeMapping(keycodeNames[1])
end

local function getUnmappedKeycodeIconEntries(): { UnmappedKeycodeIconEntry }
	local entries: { UnmappedKeycodeIconEntry } = {}
	for _, iconAsset in UNMAPPED_KEYCODE_ICON_ASSETS do
		local iconKey = getIconNameForAsset(iconAsset)
		table.insert(entries, {
			icon = iconAsset,
			name = iconKey,
			isBrokenLink = isBrokenLinkUnmappedIcon(iconKey),
		})
	end
	return entries
end

local function getAllKeycodeIconAssets(): { string }
	return ALL_KEYCODE_ICON_ASSETS
end

return {
	GAMEPAD_PLATFORM_ORDER = GAMEPAD_PLATFORM_ORDER,
	INPUT_PLATFORM_ORDER = INPUT_PLATFORM_ORDER,
	getAllIconNamesForKeyCode = getAllIconNamesForKeyCode,
	getAllIconsWithNamesForKeyCode = getAllIconsWithNamesForKeyCode,
	getAllIconsForKeyCode = getAllIconsForKeyCode,
	getAllIconsForKeyName = getAllIconsForKeyName,
	getAllKeycodeIconAssets = getAllKeycodeIconAssets,
	getBrokenKeycodeMappingNote = getBrokenKeycodeMappingNote,
	getIconForKeyCode = getIconForKeyCode,
	getIconForKeyName = getIconForKeyName,
	getInputPlatformColumnHeaders = getInputPlatformColumnHeaders,
	getMappedKeyNames = getMappedKeyNames,
	getUnmappedKeycodeIconEntries = getUnmappedKeycodeIconEntries,
	getUnmappedKeycodeIcons = getUnmappedKeycodeIcons,
	isBrokenKeycodeMapping = isBrokenKeycodeMapping,
	isBrokenKeycodeMappingForKeyCode = isBrokenKeycodeMappingForKeyCode,
}
