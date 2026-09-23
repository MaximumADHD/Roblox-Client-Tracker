--[[
	Purpose: Resolves a KeyCode to the BuilderIcons glyph for a platform.

	Origin: BuilderIcons `builderIconPlatformUtils/getBuilderIconForKeycode`.

	Notes:
	- Taking the platform as an argument avoids repeating the device probes for
	  every key.
	- Unmapped keys return nil, so callers can fall back to text instead of
	  throwing.
]]
local Foundation = script:FindFirstAncestor("Foundation")

local InputPlatform = require(Foundation.Enums.InputPlatform)
local KeyCodeIconMappings = require(script.Parent.KeyCodeIconMappings)

type InputPlatform = InputPlatform.InputPlatform

local function getIconForKeyCode(keyCode: Enum.KeyCode, platform: InputPlatform): string?
	return KeyCodeIconMappings.getIconForKeyName(keyCode.Name, platform)
end

return getIconForKeyCode
