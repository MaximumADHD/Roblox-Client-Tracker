local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)

local InputPlatform = require(Foundation.Enums.InputPlatform)
local InputSize = require(Foundation.Enums.InputSize)
local Placement = require(Foundation.Enums.Placement)
local ShortcutSeparator = require(Foundation.Enums.ShortcutSeparator)
local ShortcutVariant = require(Foundation.Enums.ShortcutVariant)

local useInputPlatform = require(Foundation.Utility.useInputPlatform)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local KeyCap = require(script.Parent.KeyCap)
local Separator = require(script.Parent.Separator)
local keyDisplay = require(script.Parent.keyDisplay)
local useShortcutVariants = require(script.Parent.useShortcutVariants)

type InputPlatform = InputPlatform.InputPlatform
type Placement = Placement.Placement
type ShortcutSeparator = ShortcutSeparator.ShortcutSeparator
type ShortcutVariant = ShortcutVariant.ShortcutVariant

export type ShortcutSize = useShortcutVariants.ShortcutSize

export type ShortcutKey = { keyCode: Enum.KeyCode, separator: nil } | { keyCode: nil, separator: ShortcutSeparator }

export type ShortcutProps = {
	-- The keys in order, and the grammar between them
	shortcut: { ShortcutKey },
	-- A label naming what the binding does, drawn beside the caps
	keybinding: string?,
	-- Whether the shortcut is start-aligned or end-aligned
	placement: Placement?,
	-- Matches the size of the row hosting it
	size: ShortcutSize?,
	-- Standard caps sit on a shift; Contrast caps sit on the system contrast
	variant: ShortcutVariant?,
} & Types.CommonProps

local defaultProps = {
	size = InputSize.XSmall,
	placement = Placement.Start :: Placement,
	variant = ShortcutVariant.Standard,
	testId = "--foundation-shortcut",
}

local function Shortcut(shortcutProps: ShortcutProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(shortcutProps, defaultProps)
	local tokens = useTokens()
	-- Detected once for the whole row, so every cap agrees on the glyph set
	local platform: InputPlatform = useInputPlatform()
	local variantProps = useShortcutVariants(tokens, props.size, props.variant)

	local items: { [string]: React.ReactNode } = {}
	-- Count keys and separators separately so --key-2 stays the second key.
	local keyCount, separatorCount = 0, 0

	for index, entry in props.shortcut do
		if entry.separator ~= nil then
			separatorCount += 1
			items[`Separator{separatorCount}`] = React.createElement(Separator, {
				separator = entry.separator,
				variantProps = variantProps,
				LayoutOrder = index,
				testId = `{props.testId}--separator-{separatorCount}`,
			})
		elseif entry.keyCode ~= nil and not keyDisplay.isNonDisplayable(entry.keyCode) then
			keyCount += 1
			items[`Key{keyCount}`] = React.createElement(KeyCap, {
				keyCode = entry.keyCode,
				platform = platform,
				variantProps = variantProps,
				LayoutOrder = index,
				testId = `{props.testId}--key-{keyCount}`,
			})
		end
	end

	-- Nested so the cap gap stays independent of the label.
	return React.createElement(
		View,
		withCommonProps(props, {
			tag = variantProps.container.tag,
			layout = {
				FillDirection = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				Padding = UDim.new(0, variantProps.container.gap),
				SortOrder = Enum.SortOrder.LayoutOrder,
			},
			ref = ref,
		}),
		{
			Keys = React.createElement(View, {
				tag = variantProps.keys.tag,
				LayoutOrder = if props.placement == Placement.End then 2 else 1,
				testId = `{props.testId}--keys`,
			}, items),
			Keybinding = if props.keybinding ~= nil and props.keybinding ~= ""
				then React.createElement(Text, {
					Text = props.keybinding,
					tag = variantProps.keybinding.tag,
					LayoutOrder = if props.placement == Placement.End then 1 else 2,
					testId = `{props.testId}--keybinding`,
				})
				else nil,
		}
	)
end

return React.memo(React.forwardRef(Shortcut))
