export type ColorNamespace = "Color" | "Inverse" | "LightMode" | "DarkMode"

local ColorNamespaceEnum = {
	-- Color is the default namespace for color tokens
	Color = "Color" :: "Color",
	Inverse = "Inverse" :: "Inverse",
	LightMode = "LightMode" :: "LightMode",
	DarkMode = "DarkMode" :: "DarkMode",
}

return ColorNamespaceEnum
