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
	-- **DEPRECATED** - Use `SoftEmphasis` instead
	SubEmphasis = "SubEmphasis" :: "SubEmphasis",
	-- **DEPRECATED** - Use `Standard` instead
	Subtle = "Subtle" :: "Subtle",
	-- **DEPRECATED** - Use `Utility` or `Standard` instead
	Text = "Text" :: "Text",
	-- **DEPRECATED** - Use `Utility` or `Standard` instead
	Link = "Link" :: "Link",
}

return ButtonVariantEnum
