export type ColorMode = "Dark" | "Light"

local ColorMode = {
	Dark = "Dark" :: "Dark",
	Light = "Light" :: "Light",
}

export type Theme = "Default" | "Kids"

local Theme = {
	Default = "Default" :: "Default",
	Kids = "Kids" :: "Kids",
}

return {
	ColorMode = ColorMode,
	Theme = Theme,
}
