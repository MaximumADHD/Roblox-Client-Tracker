local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Text = require(Foundation.Components.Text)

local ShortcutSeparator = require(Foundation.Enums.ShortcutSeparator)

local useShortcutVariants = require(script.Parent.useShortcutVariants)

type ShortcutSeparator = ShortcutSeparator.ShortcutSeparator
type ShortcutVariantProps = useShortcutVariants.ShortcutVariantProps

local GLYPHS: { [ShortcutSeparator]: string } = {
	[ShortcutSeparator.Or] = "/",
	[ShortcutSeparator.More] = "\u{2026}",
}

type SeparatorProps = {
	separator: ShortcutSeparator,
	variantProps: ShortcutVariantProps,
	LayoutOrder: number,
	testId: string,
}

local function Separator(props: SeparatorProps)
	return React.createElement(Text, {
		Text = GLYPHS[props.separator],
		tag = props.variantProps.separator.tag,
		LayoutOrder = props.LayoutOrder,
		testId = props.testId,
	})
end

return Separator
