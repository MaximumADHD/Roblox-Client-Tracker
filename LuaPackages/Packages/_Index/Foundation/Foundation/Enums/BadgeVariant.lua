export type BadgeVariant =
	"Primary"
	| "Secondary"
	| "Alert"
	| "Success"
	| "Warning"
	| "Standard"
	| "Contrast"
	| "OverMedia"
	| "Emphasis"
	| "Neutral"

local BadgeVariantEnum = {
	Contrast = "Contrast" :: "Contrast",
	Alert = "Alert" :: "Alert",
	Success = "Success" :: "Success",
	Warning = "Warning" :: "Warning",
	Standard = "Standard" :: "Standard",
	OverMedia = "OverMedia" :: "OverMedia",
	Emphasis = "Emphasis" :: "Emphasis",

	-- DEPRECATED Scheduled for removal in the next major release (2.0)
	Primary = "Primary" :: "Primary",
	-- DEPRECATED Scheduled for removal in the next major release (2.0)
	Secondary = "Secondary" :: "Secondary",
	-- DEPRECATED Scheduled for removal in the next major release (2.0)
	Neutral = "Neutral" :: "Neutral",
}

return BadgeVariantEnum
