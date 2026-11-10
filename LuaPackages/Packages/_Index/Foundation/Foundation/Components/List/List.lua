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

export type ListProps = {
	-- Whether to render dividers between items, default is true. Can also be an object to specify inset or a full-width divider.
	hasDivider: (boolean | { hasDivider: true, isInset: boolean })?,
	-- Whether the list should have a border, default is false. Can also be an object to specify margin.
	isContained: (boolean | { isContained: false, hasMargin: boolean? })?,
	-- Size cascaded to list items. Defaults to unset so items use their own size.
	size: InputSize?,
	-- List.Item children that make up the rows.
	children: React.ReactNode?,
} & Types.CommonProps

local defaultProps = {
	hasDivider = { hasDivider = true, isInset = true },
	isContained = { isContained = false, hasMargin = true },
	testId = "--foundation-list",
}

local function List(listProps: ListProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(listProps, defaultProps)

	local hasDivider = if type(props.hasDivider) == "boolean" then props.hasDivider else props.hasDivider.hasDivider
	local lastLayoutOrder = 0
	if hasDivider then
		React.Children.forEach(props.children, function(child)
			local element = child :: any
			if element and element.props and element.props.LayoutOrder then
				lastLayoutOrder = math.max(lastLayoutOrder, element.props.LayoutOrder)
			end
		end)
	end

	local isContained = if type(props.isContained) == "boolean"
		then props.isContained
		else props.isContained.isContained
	local hasMargin = if isContained
		then true
		else if type(props.isContained) == "table" then props.isContained.hasMargin else true
	local isInset = if type(props.hasDivider) == "boolean" then props.hasDivider else props.hasDivider.isInset
	-- lute-lint-ignore(exhaustiveDeps) UIBLOX-5675
	local memoizedListContextValue = React.useMemo(
		function()
			return {
				hasDivider = props.hasDivider,
				isContained = isContained,
				isInset = isInset,
				hasMargin = hasMargin,
				lastLayoutOrder = lastLayoutOrder,
				size = props.size,
				testId = props.testId,
			}
		end,
		{
			hasDivider,
			isContained,
			isInset,
			hasMargin,
			lastLayoutOrder,
			props.size,
			props.testId,
		} :: { unknown }
	)

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = {
				["col size-full-0 auto-y"] = true,
				["stroke-default radius-large"] = isContained,
			},
			ref = ref,
		}),
		{
			ListContext = React.createElement(ListContext.Provider, {
				value = memoizedListContextValue,
			}, props.children),
		}
	)
end

return React.memo(React.forwardRef(List))
