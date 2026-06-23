export type StatusIndicatorVariant =
	"Success"
	| "Alert"
	| "Warning"
	| "Emphasis"
	| "Neutral"
	| "Standard"
	| "Contrast"
	| "Voice"

local StatusIndicatorVariantEnum = {
	Neutral = "Neutral" :: "Neutral",
	Alert = "Alert" :: "Alert",
	Success = "Success" :: "Success",
	Warning = "Warning" :: "Warning",
	Emphasis = "Emphasis" :: "Emphasis",
	Standard = "Standard" :: "Standard",
	Voice = "Voice" :: "Voice",
	-- Experimental for AB test
	Contrast_Experiment = "Contrast" :: "Contrast",
}

return StatusIndicatorVariantEnum
