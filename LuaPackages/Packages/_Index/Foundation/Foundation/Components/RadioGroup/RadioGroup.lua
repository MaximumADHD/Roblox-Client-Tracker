local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local InternalInputGroup = require(Foundation.Components.InternalInputGroup)
local RadioGroupContext = require(script.Parent.RadioGroupContext)

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize
local InputPlacement = require(Foundation.Enums.InputPlacement)
type InputPlacement = InputPlacement.InputPlacement

local Flags = require(Foundation.Utility.Flags)

export type RadioGroupProps = {
	-- The value of the currently checked radio item.
	-- If `nil`, the radio group will be considered uncontrolled.
	value: string?,
	onValueChanged: (newValue: string) -> (),
	children: React.ReactNode?,
} & Types.SelectionProps & Types.CommonProps & Types.InternalInputGroupProps

local defaultProps = {
	size = InputSize.Medium,
	placement = InputPlacement.Start,
	Selectable = true,
	testId = "--foundation-radio-group",
}

local function RadioGroup(radioGroupProps: RadioGroupProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(radioGroupProps, defaultProps)
	local value, setValue = React.useState(props.value)

	React.useEffect(function()
		if props.value ~= nil then
			setValue(props.value)
		end
	end, { props.value })

	local onValueChanged = React.useCallback(function(newValue: string)
		setValue(newValue)
		props.onValueChanged(newValue)
	end, { setValue, props.onValueChanged } :: { unknown })

	local contextValue = if Flags.FoundationStableContextValues
		then React.useMemo(function()
			return {
				value = value,
				onValueChanged = onValueChanged,
				Selectable = props.Selectable,
				testId = props.testId,
			}
		end, { value, onValueChanged, props.Selectable, props.testId } :: { unknown })
		else nil

	if Flags.FoundationInputGroup then
		return React.createElement(
			InternalInputGroup,
			withCommonProps(props, {
				size = props.size,
				placement = props.placement,
				legend = props.legend,
				ref = ref,
			}),
			{
				RadioGroupContext = React.createElement(RadioGroupContext.Provider, {
					value = if Flags.FoundationStableContextValues
						then contextValue
						else {
							value = value,
							onValueChanged = onValueChanged,
							Selectable = props.Selectable,
							testId = props.testId,
						},
				}, props.children :: React.ReactNode),
			}
		) :: React.ReactNode
	else
		return React.createElement(
			View,
			withCommonProps(props, {
				tag = "col gap-medium auto-xy",
				ref = ref,
			}),
			{
				RadioGroupContext = React.createElement(RadioGroupContext.Provider, {
					value = if Flags.FoundationStableContextValues
						then contextValue
						else {
							value = value,
							onValueChanged = onValueChanged,
							Selectable = props.Selectable,
							testId = props.testId,
						},
				}, props.children :: React.ReactNode),
			}
		)
	end
end

return React.memo(React.forwardRef(RadioGroup))
