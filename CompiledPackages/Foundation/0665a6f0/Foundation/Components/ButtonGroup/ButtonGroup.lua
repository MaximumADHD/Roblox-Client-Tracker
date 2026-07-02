local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Button = require(Foundation.Components.Button)
local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local FillBehavior = require(Foundation.Enums.FillBehavior)
local InputSize = require(Foundation.Enums.InputSize)
local Orientation = require(Foundation.Enums.Orientation)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

type ButtonVariant = ButtonVariant.SupportedButtonVariant
type FillBehavior = FillBehavior.FillBehavior
type InputSize = InputSize.InputSize
-- InputSize.Large is not supported by ButtonGroup.
export type ButtonGroupSize = typeof(InputSize.XSmall) | typeof(InputSize.Small) | typeof(InputSize.Medium)
type Orientation = Orientation.Orientation

export type ButtonGroupItem = {
	text: string?,
	onActivated: () -> (),
	variant: ButtonVariant?,
	isDisabled: boolean?,
	isLoading: boolean?,
	icon: string?,
	inputDelay: number?,
	ref: React.Ref<GuiObject>?,
}

export type ButtonGroupProps = {
	-- The buttons to render in the group.
	buttons: { ButtonGroupItem },
	-- Horizontal = side-by-side row (default).
	-- Vertical   = stacked column, buttons always fill full width.
	orientation: Orientation?,
	-- Only applies to Horizontal orientation. Vertical always forces fill.
	fillBehavior: FillBehavior?,
	-- Applies to all buttons in the group; individual items cannot override this.
	size: ButtonGroupSize?,
} & Types.CommonProps

local defaultProps = {
	orientation = Orientation.Horizontal,
	size = InputSize.Medium,
	testId = "--foundation-button-group",
}

local function ButtonGroup(buttonGroupProps: ButtonGroupProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(buttonGroupProps, defaultProps)

	assert(#props.buttons <= 3, `ButtonGroup: a maximum of 3 buttons is supported, got {#props.buttons}.`)

	local isVertical = props.orientation :: Orientation == Orientation.Vertical
	local isFill = isVertical or props.fillBehavior == FillBehavior.Fill

	-- Horizontal fill: fillBehavior=Fill lets UIFlexItem distribute row space.
	-- Vertical fill: flex-x-fill on the container stretches children without
	-- touching their Size or AutomaticSize.
	local buttonFillBehavior: FillBehavior? = if not isVertical and isFill then FillBehavior.Fill else nil
	local buttons: { [string]: React.ReactNode } = {}

	for i, buttonItem in props.buttons do
		buttons["Button" .. i] = React.createElement(Button, {
			text = buttonItem.text,
			onActivated = buttonItem.onActivated,
			variant = buttonItem.variant,
			isDisabled = buttonItem.isDisabled,
			isLoading = buttonItem.isLoading,
			icon = buttonItem.icon,
			inputDelay = buttonItem.inputDelay,
			ref = buttonItem.ref,
			-- Group always controls these.
			size = props.size,
			fillBehavior = buttonFillBehavior,
			LayoutOrder = i,
			testId = `{props.testId}--button-{i}`,
		})
	end

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = {
				["gap-small"] = true,
				["col flex-x-fill"] = isVertical,
				-- Fill uses UIFlexItem to distribute space — no wrap, or each button
				-- (Size.X.Scale=1) would occupy its own line and look vertical.
				["row"] = not isVertical and isFill,
				["row wrap"] = not isVertical and not isFill,
				["size-full-0 auto-y"] = isFill,
				["auto-xy"] = not isFill,
			},
			ref = ref,
		}),
		buttons
	)
end

return React.memo(React.forwardRef(ButtonGroup))
