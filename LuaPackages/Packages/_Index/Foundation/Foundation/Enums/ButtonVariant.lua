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

-- All variants that Button and ButtonGroup accept. Excludes OverMedia, which
-- is only valid in specialised overlay contexts and is not forwarded through
-- group-level APIs.
export type SupportedButtonVariant =
	typeof(ButtonVariantEnum.Standard)
	| typeof(ButtonVariantEnum.Emphasis)
	| typeof(ButtonVariantEnum.SoftEmphasis)
	| typeof(ButtonVariantEnum.Alert)
	| typeof(ButtonVariantEnum.Utility)
	| typeof(ButtonVariantEnum.Link)
	-- **DEPRECATED** - Use `SoftEmphasis` instead
	| typeof(ButtonVariantEnum.SubEmphasis)
	-- **DEPRECATED** - Use `Standard` instead
	| typeof(ButtonVariantEnum.Subtle)
	-- **DEPRECATED** - Use `Utility` or `Standard` instead
	| typeof(ButtonVariantEnum.Text)

return ButtonVariantEnum
