export type FontInfo = {
	Font: Font | Enum.Font,
	-- Typography token Font for rendering; `Font` stays the legacy value for Enum.Font-only APIs.
	FontFace: Font?,
	RelativeSize: number,
	RelativeMinSize: number,
}

export type FontPaletteOld = {
	BaseSize: number,
	Title: FontInfo,
	Header1: FontInfo,
	Header2: FontInfo,
	SubHeader1: FontInfo,
	Body: FontInfo,
	CaptionHeader: FontInfo,
	CaptionSubHeader: FontInfo,
	CaptionBody: FontInfo,
	Footer: FontInfo,
}

export type FontPaletteNew = FontPaletteOld & {
	HeadingLarge: FontInfo,
	HeadingSmall: FontInfo,
	TitleLarge: FontInfo,
	BodyLarge: FontInfo,
	CaptionLarge: FontInfo,
	BodySmall: FontInfo,
	CaptionSmall: FontInfo,
}

export type FontPalette = FontPaletteOld | FontPaletteNew

return {}
