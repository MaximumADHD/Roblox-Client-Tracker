-- https://create.roblox.com/docs/ui/rich-text
-- excludes breaks since it is not inline
local InlineEngineTag = {
	BOLD = "b" :: "b",
	ITALIC = "i" :: "i",
	UNDERLINE = "u" :: "u",
	STRIKE = "s" :: "s",
	FONT = "font" :: "font",
	STROKE = "stroke" :: "stroke",
	UPPERCASE = "uc" :: "uc",
	SMALLCAPS = "sc" :: "sc",
	MARK = "mark" :: "mark",
}

export type InlineEngineTag =
	typeof(InlineEngineTag.BOLD)
	| typeof(InlineEngineTag.ITALIC)
	| typeof(InlineEngineTag.UNDERLINE)
	| typeof(InlineEngineTag.STRIKE)
	| typeof(InlineEngineTag.FONT)
	| typeof(InlineEngineTag.STROKE)
	| typeof(InlineEngineTag.UPPERCASE)
	| typeof(InlineEngineTag.SMALLCAPS)
	| typeof(InlineEngineTag.MARK)

return InlineEngineTag
