export type Font = {
	Font: Enum.Font,
	RelativeSize: number,
	RelativeMinSize: number,
}

export type FontPaletteOld = {
	BaseSize: number,
	Title: Font,
	Header1: Font,
	Header2: Font,
	SubHeader1: Font,
	Body: Font,
	CaptionHeader: Font,
	CaptionSubHeader: Font,
	CaptionBody: Font,
	Footer: Font,
}

export type FontPaletteNew = FontPaletteOld & {
	HeadingLarge: Font,
	HeadingSmall: Font,
	TitleLarge: Font,
	BodyLarge: Font,
	CaptionLarge: Font,
	BodySmall: Font,
	CaptionSmall: Font,
}

export type FontPalette = FontPaletteOld | FontPaletteNew

return {}
