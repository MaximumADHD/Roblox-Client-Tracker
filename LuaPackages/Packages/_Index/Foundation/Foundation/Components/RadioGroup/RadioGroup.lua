local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local View = require(Foundation.Components.View)
local Types = require(Foundation.Components.Types)
local withCommonProps = require(Foundation.Utility.withCommonProps)

local CheckedValueContext = require(script.Parent.CheckedValueContext)

type RadioGroupProps = {
	-- The value of the currently checked radio item.
	-- If `nil`, the radio group will be considered uncontrolled.
	value: string?,
	onValueChanged: (newValue: string) -> (),
	children: React.ReactNode?,
} & Types.CommonProps

local function RadioGroup(props: RadioGroupProps, ref: React.Ref<GuiObject>?)
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
			tag = "auto-xy col gap-large",
			ref = ref,
		}),
		{
			CheckedValueContext = React.createElement(CheckedValueContext.Provider, {
				value = {
					value = value,
					onValueChanged = onValueChanged,
				},
			}, props.children),
		}
	)
end

return React.memo(React.forwardRef(RadioGroup))
