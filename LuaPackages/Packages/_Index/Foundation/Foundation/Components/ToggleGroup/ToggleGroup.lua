local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local InternalInputGroup = require(Foundation.Components.InternalInputGroup)
local Types = require(Foundation.Components.Types)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

export type ToggleGroupProps = Types.InternalInputGroupProps

local defaultProps = {
	testId = "--foundation-toggle-group",
}

local function ToggleGroup(toggleGroupProps: ToggleGroupProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(toggleGroupProps, defaultProps)

	return React.createElement(
		InternalInputGroup,
		withCommonProps(props, {
			legend = props.legend,
			size = props.size,
			placement = props.placement,
			ref = ref,
		}),
		props.children
	)
end

return React.memo(React.forwardRef(ToggleGroup))
