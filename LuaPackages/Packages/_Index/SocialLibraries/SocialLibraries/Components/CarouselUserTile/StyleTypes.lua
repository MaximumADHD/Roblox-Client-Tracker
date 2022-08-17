export type FontType = {
	RelativeSize: number,
	RelativeMinSize: number,
	Font: Enum.Font,
}

export type Font = {
	BaseSize: number,
	[string]: FontType,
}

export type ThemeType = {
	Color: Color3,
	Transparency: number,
}

export type Theme = {
	[string]: ThemeType,
}

export type Icon = {
	ImageRectOffset: Vector2,
	ImageRectSize: Vector2,
	Image: string,
}

return {}
