--!strict

export type Font = {
	Font: Enum.Font,
	RelativeSize: number,
	RelativeMinSize: number,
}

export type FontPallette = {
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

return {}
