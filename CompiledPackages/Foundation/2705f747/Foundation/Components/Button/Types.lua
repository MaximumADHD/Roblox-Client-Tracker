local Foundation = script:FindFirstAncestor("Foundation")

local ButtonVariant = require(Foundation.Enums.ButtonVariant)
type ButtonVariant = ButtonVariant.ButtonVariant

-- Extract all button variants except OverMedia
export type SupportedButtonVariant =
	typeof(ButtonVariant.Standard)
	| typeof(ButtonVariant.Emphasis)
	| typeof(ButtonVariant.SoftEmphasis)
	| typeof(ButtonVariant.Alert)
	| typeof(ButtonVariant.Utility)
	| typeof(ButtonVariant.Link)
	-- **DEPRECATED** - Use `SoftEmphasis` instead
	| typeof(ButtonVariant.SubEmphasis)
	-- **DEPRECATED** - Use `Standard` instead
	| typeof(ButtonVariant.Subtle)
	-- **DEPRECATED** - Use `Utility` or `Standard` instead
	| typeof(ButtonVariant.Text)

return nil
