export type ColorMode = "Color" | "Inverse" | "LightMode" | "DarkMode"

local ColorModeEnum = {
	-- Color is the default namespace for color tokens
	Color = "Color" :: "Color",
	Inverse = "Inverse" :: "Inverse",
	LightMode = "LightMode" :: "LightMode",
	DarkMode = "DarkMode" :: "DarkMode",
}

return ColorModeEnum
