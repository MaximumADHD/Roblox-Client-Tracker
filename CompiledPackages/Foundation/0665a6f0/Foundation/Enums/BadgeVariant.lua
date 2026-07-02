export type BadgeVariant =
	"Primary"
	| "Secondary"
	| "Alert"
	| "Success"
	| "Warning"
	| "Neutral"
	| "Contrast"
	| "OverMedia"
	| "Emphasis"

local BadgeVariantEnum = {
	Neutral = "Neutral" :: "Neutral",
	Contrast = "Contrast" :: "Contrast",
	Alert = "Alert" :: "Alert",
	Success = "Success" :: "Success",
	Warning = "Warning" :: "Warning",
	OverMedia = "OverMedia" :: "OverMedia",
	Emphasis = "Emphasis" :: "Emphasis",

	-- DEPRECATED Scheduled for removal in the next major release (2.0)
	Primary = "Primary" :: "Primary",
	-- DEPRECATED Scheduled for removal in the next major release (2.0)
	Secondary = "Secondary" :: "Secondary",
}

return BadgeVariantEnum
