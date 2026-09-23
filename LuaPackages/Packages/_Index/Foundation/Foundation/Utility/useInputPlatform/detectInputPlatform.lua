--[[
	Purpose: Detects which glyph platform the connected input device should use.

	Origin: BuilderIcons `builderIconPlatformUtils/getInputPlatform`.

	Notes:
	- Probes several keys in order, because a key may not have an asset on every
	  platform.
	- Every service call is guarded, so no gamepad or a failed call yields
	  `Default`.
	- The label fallback identifies PlayStation but not its generation, so it
	  defaults to PS5.
]]
local Foundation = script:FindFirstAncestor("Foundation")

local UserInputService = require(Foundation.Utility.Wrappers.Services).UserInputService

local InputPlatform = require(Foundation.Enums.InputPlatform)

type InputPlatform = InputPlatform.InputPlatform

local function hasConnectedGamepad(): boolean
	local success, gamepads = pcall(function()
		return UserInputService:GetConnectedGamepads()
	end)
	return success and typeof(gamepads) == "table" and #gamepads > 0
end

-- Probe several assets because a key may not have one on every platform.
local PROBE_KEYCODES: { Enum.KeyCode } = {
	Enum.KeyCode.ButtonStart,
	Enum.KeyCode.ButtonSelect,
	Enum.KeyCode.ButtonA,
	Enum.KeyCode.ButtonL1,
	Enum.KeyCode.DPadUp,
}

-- The path identifies the console; glyphs still come from BuilderIcons.
local function getPlatformFromImage(keyCode: Enum.KeyCode): InputPlatform?
	local success, image = pcall(function()
		return UserInputService:GetImageForKeyCode(keyCode)
	end)

	if not success or typeof(image) ~= "string" or image == "" then
		return nil
	end

	local path = image:lower()
	if path:find("ps5") then
		return InputPlatform.PS5 :: InputPlatform
	end
	if path:find("ps4") then
		return InputPlatform.PS4 :: InputPlatform
	end
	if path:find("xbox") then
		return InputPlatform.Xbox :: InputPlatform
	end

	return nil
end

local function getPlatformFromGamepadAssets(): InputPlatform?
	for _, keyCode in PROBE_KEYCODES do
		local platform = getPlatformFromImage(keyCode)
		if platform ~= nil then
			return platform :: InputPlatform
		end
	end

	return nil
end

local function isPlaystation(): boolean
	local success, label = pcall(function()
		return UserInputService:GetStringForKeyCode(Enum.KeyCode.ButtonA)
	end)
	return success and label == "ButtonCross"
end

local function detectInputPlatform(): InputPlatform
	if not hasConnectedGamepad() then
		return InputPlatform.Default :: InputPlatform
	end

	local platformFromAssets = getPlatformFromGamepadAssets()
	if platformFromAssets ~= nil then
		return platformFromAssets :: InputPlatform
	end

	-- Labels distinguish PlayStation from Xbox, but not PS4 from PS5.
	return if isPlaystation() then InputPlatform.PS5 :: InputPlatform else InputPlatform.Xbox :: InputPlatform
end

return detectInputPlatform
