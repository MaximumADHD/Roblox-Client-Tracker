-- Foundation-owned mirror of RbxDesignFoundations' `Theme` enum (see the
-- package's `enums.lua`). Kept as a standalone enum, like `ColorMode`, so the
-- public `Foundation.Enums.ThemeName` surface stays independent of the vendored
-- package and acts as the explicit allowlist of themes Foundation ships. The
-- values must stay assignable to `RbxDesignFoundations.Theme`.
export type ThemeName = "Default" | "Kids"

local ThemeName = {
	Default = "Default" :: "Default",
	Kids = "Kids" :: "Kids",
}

return ThemeName
