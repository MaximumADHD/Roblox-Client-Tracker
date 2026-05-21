export type ButtonVariant =
	"Emphasis"
	| "SubEmphasis"
	| "SoftEmphasis"
	| "Standard"
	| "OverMedia"
	| "Subtle"
	| "Alert"
	| "Text"
	| "Link"
	| "Utility"

local ButtonVariantEnum = {
	Emphasis = "Emphasis" :: "Emphasis",
	SoftEmphasis = "SoftEmphasis" :: "SoftEmphasis",
	Standard = "Standard" :: "Standard",
	Utility = "Utility" :: "Utility",
	OverMedia = "OverMedia" :: "OverMedia",
	Alert = "Alert" :: "Alert",
	Link = "Link" :: "Link",
	-- **DEPRECATED** - Use `SoftEmphasis` instead
	SubEmphasis = "SubEmphasis" :: "SubEmphasis",
	-- **DEPRECATED** - Use `Standard` instead
	Subtle = "Subtle" :: "Subtle",
	-- **DEPRECATED** - Use `Utility` or `Standard` instead
	Text = "Text" :: "Text",
}

return ButtonVariantEnum
