--[[
	Purpose: Names the glyph set an input device should use.

	Origin: BuilderIcons `builderIconPlatformUtils/Platform`, which has the same
	four values but never returns `Default`.

	Notes:
	- Here `Default` means keyboard and mouse, and `detectInputPlatform` returns
	  it when no gamepad is attached.
	- Internal on purpose: callers pick a size and variant while the platform is
	  detected for them, so it is not re-exported from the public `Enums` table.
	  Stories and tests require this module directly.
]]
export type InputPlatform = "PS4" | "PS5" | "Xbox" | "Default"

local InputPlatformEnum = {
	PS4 = "PS4" :: "PS4",
	PS5 = "PS5" :: "PS5",
	Xbox = "Xbox" :: "Xbox",
	-- Keyboard and mouse.
	Default = "Default" :: "Default",
}

return InputPlatformEnum
