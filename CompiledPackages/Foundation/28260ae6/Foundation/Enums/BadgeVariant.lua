export type BadgeVariant = "Primary" | "Secondary" | "Alert" | "Success" | "Warning" | "Neutral" | "Contrast" | "OverMedia"

local BadgeVariantEnum = {
	Neutral = "Neutral" :: "Neutral",
	Contrast = "Contrast" :: "Contrast",
	Alert = "Alert" :: "Alert",
	Success = "Success" :: "Success",
	Warning = "Warning" :: "Warning",
	OverMedia = "OverMedia" :: "OverMedia",

	-- DEPRECATED Scheduled for removal in the next major release (2.0)
	Primary = "Primary" :: "Primary",
	-- DEPRECATED Scheduled for removal in the next major release (2.0)
	Secondary = "Secondary" :: "Secondary",
}

return BadgeVariantEnum
