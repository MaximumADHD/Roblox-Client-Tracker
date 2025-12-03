local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Flags = require(Foundation.Utility.Flags)

local Orientation = require(Foundation.Enums.Orientation)
type Orientation = Orientation.Orientation

local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local withDefaults = require(Foundation.Utility.withDefaults)
local withCommonProps = require(Foundation.Utility.withCommonProps)

local OptionSelectorGroupContext = require(script.Parent.OptionSelectorGroupContext)

export type OptionSelectorGroupProps = {
	-- The value of the currently selected OptionSelector item.
	-- If `nil`, the OptionSelectorGroup will be considered uncontrolled.
	value: string?,
	onValueChanged: (newValue: string) -> (),
	-- The orientation to lay the items out in, default is vertical.
	orientation: Orientation?,
	children: React.ReactNode?,
} & Types.SelectionProps & Types.CommonProps

local defaultProps = {
	orientation = Orientation.Vertical,
	Selectable = true,
	testId = "--foundation-option-selector-group",
}

local function OptionSelectorGroup(optionSelectorGroupProps: OptionSelectorGroupProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(optionSelectorGroupProps, defaultProps)
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

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = if Flags.FoundationFixOptionSelectorGroupItemSize
				then {
					["size-full-0 auto-y col"] = props.orientation :: Orientation == Orientation.Vertical,
					["auto-x row"] = props.orientation :: Orientation == Orientation.Horizontal,
					["gap-small"] = true,
				}
				else {
					["auto-xy col"] = props.orientation :: Orientation == Orientation.Vertical,
					["auto-x row"] = props.orientation :: Orientation == Orientation.Horizontal,
					["gap-small"] = true,
				},
			ref = ref,
		}),
		{
			OptionSelectorGroupContext = React.createElement(OptionSelectorGroupContext.Provider, {
				value = {
					value = value,
					onValueChanged = onValueChanged,
					orientation = props.orientation,
					Selectable = props.Selectable,
					testId = props.testId,
				},
			}, props.children),
		}
	)
end

return React.memo(React.forwardRef(OptionSelectorGroup))
