local Plugin = script.Parent.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)

export type SettingsName = string | _Types.Map<string, string>

local SettingsNames: _Types.Map<string, SettingsName> = {
	GeneralSettings = "GeneralSettings",
	TextureSettings = "TextureSettings",
	OverrideSettings = "OverrideSettings",
	TilingSettings = "TilingSettings",
	PhysicalSettings = "PhysicalSettings",
	TerrainDetailsSettings = "TerrainDetailsSettings",
	TerrainDetailsEditor = {
		Top = "TerrainDetailsTop",
		Side = "TerrainDetailsSide",
		Bottom = "TerrainDetailsBottom",
	},
}

return function(): _Types.Map<string, SettingsName>
	return SettingsNames
end
