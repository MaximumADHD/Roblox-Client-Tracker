local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local RadioGroupContext = require(script.Parent.RadioGroupContext)

export type RadioGroupProps = {
	-- The value of the currently checked radio item.
	-- If `nil`, the radio group will be considered uncontrolled.
	value: string?,
	onValueChanged: (newValue: string) -> (),
	children: React.ReactNode?,
} & Types.SelectionProps & Types.CommonProps

local defaultProps = {
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
	end, { setValue, props.onValueChanged :: any })

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = "auto-xy col gap-medium",
			ref = ref,
		}),
		{
			RadioGroupContext = React.createElement(RadioGroupContext.Provider, {
				value = {
					value = value,
					onValueChanged = onValueChanged,
					Selectable = props.Selectable,
					testId = props.testId,
				},
			}, props.children),
		}
	)
end

return React.memo(React.forwardRef(RadioGroup))
