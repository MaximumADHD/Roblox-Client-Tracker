local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local InternalInputGroup = require(Foundation.Components.InternalInputGroup)
local Types = require(Foundation.Components.Types)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

type InternalInputGroupProps = Types.InternalInputGroupProps
-- CheckboxGroup is a thin wrapper over InternalInputGroup and shares its props.
-- Composed as an intersection (rather than a direct re-export alias) so the type
-- has a single canonical name and does not collide with other group wrappers.
export type CheckboxGroupProps = Types.InternalInputGroupProps & Types.CommonProps

local defaultProps = {
	testId = "--foundation-checkbox-group",
}

local function CheckboxGroup(checkboxGroupProps: CheckboxGroupProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(checkboxGroupProps, defaultProps)

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

return React.memo(React.forwardRef(CheckboxGroup))
