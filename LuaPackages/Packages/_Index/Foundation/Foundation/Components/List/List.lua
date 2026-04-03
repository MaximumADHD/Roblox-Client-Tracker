local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local InputSize = require(Foundation.Enums.InputSize)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local ListContext = require(script.Parent.ListContext)

type InputSize = InputSize.InputSize

type ListProps = {
	hasDivider: boolean?,
	isInset: boolean?,
	size: InputSize?,
	children: React.ReactNode?,
} & Types.CommonProps

local defaultProps = {
	testId = "--foundation-list",
}

local function List(listProps: ListProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(listProps, defaultProps)

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = "col size-full-0 auto-y",
			ref = ref,
		}),
		{
			ListContext = React.createElement(ListContext.Provider, {
				value = {
					hasDivider = props.hasDivider,
					isInset = props.isInset,
					size = props.size,
					testId = props.testId,
				},
			}, props.children),
		}
	)
end

return React.memo(React.forwardRef(List))
