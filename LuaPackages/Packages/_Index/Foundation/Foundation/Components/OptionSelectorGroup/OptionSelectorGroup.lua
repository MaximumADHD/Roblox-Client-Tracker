local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Orientation = require(Foundation.Enums.Orientation)
type Orientation = Orientation.Orientation

local OptionSelectorGroupSize = require(Foundation.Enums.OptionSelectorGroupSize)
type OptionSelectorGroupSize = OptionSelectorGroupSize.OptionSelectorGroupSize

local FillBehavior = require(Foundation.Enums.FillBehavior)
type FillBehavior = FillBehavior.FillBehavior

local Flags = require(Foundation.Utility.Flags)
local InputLabel = require(Foundation.Components.InputLabel)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local OptionSelectorGroupContext = require(script.Parent.OptionSelectorGroupContext)
local useOptionSelectorGroupVariants = require(script.Parent.useOptionSelectorGroupVariants)

export type OptionSelectorGroupProps = {
	-- The value of the currently selected OptionSelector item.
	-- If `nil`, the OptionSelectorGroup will be considered uncontrolled.
	value: string?,
	onValueChanged: (newValue: string) -> (),
	-- The orientation to lay the items out in, default is vertical.
	orientation: Orientation?,
	-- Optional group legend. Omit or `nil` to hide.
	legend: string?,
	-- Size of the group. Cascades to items via context.
	size: OptionSelectorGroupSize?,
	-- Fill behavior for stacked items in a horizontal group. Cascades to items via context.
	-- Ignored for vertical groups (items always Fill). Omit to let each Item choose.
	fillBehavior: FillBehavior?,
	children: React.ReactNode?,
} & Types.SelectionProps & Types.CommonProps

local defaultProps = {
	orientation = Orientation.Vertical,
	size = if Flags.FoundationOptionSelectorGroupBeta then OptionSelectorGroupSize.Medium else nil :: never,
	Selectable = true,
	testId = "--foundation-option-selector-group",
}

type OptionSelectorGroupInnerProps = {
	props: OptionSelectorGroupProps & typeof(defaultProps),
	sizeOverride: OptionSelectorGroupSize?,
	fillBehaviorOverride: FillBehavior?,
	value: string?,
	onValueChanged: (newValue: string) -> (),
	ref: React.Ref<GuiObject>?,
}

local function OptionSelectorGroupInner(innerProps: OptionSelectorGroupInnerProps)
	local props = innerProps.props
	local tokens = useTokens()
	local variantProps =
		useOptionSelectorGroupVariants(tokens, props.size or OptionSelectorGroupSize.Medium, props.orientation)

	local contextValue = if Flags.FoundationStableContextValues
		then React.useMemo(
			function()
				return {
					value = innerProps.value,
					onValueChanged = innerProps.onValueChanged,
					orientation = props.orientation,
					Selectable = props.Selectable,
					testId = props.testId,
					-- Only cascade when Root explicitly sets size; otherwise Items keep their own size.
					size = innerProps.sizeOverride,
					-- Only cascade when Root explicitly sets fillBehavior; otherwise Items keep their own.
					fillBehavior = innerProps.fillBehaviorOverride,
				}
			end,
			{
				innerProps.value,
				innerProps.onValueChanged,
				props.orientation,
				props.Selectable,
				props.testId,
				innerProps.sizeOverride,
				innerProps.fillBehaviorOverride,
			} :: { unknown }
		)
		else nil

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = variantProps.container.tag,
			ref = innerProps.ref,
		}),
		{
			Legend = if props.legend ~= nil
				then React.createElement(InputLabel, {
					Text = props.legend :: string,
					size = variantProps.legend.size,
					LayoutOrder = 1,
					testId = `{props.testId}--legend`,
				})
				else nil,
			List = React.createElement(View, {
				tag = variantProps.list.tag,
				LayoutOrder = 2,
				testId = `{props.testId}--list`,
			}, {
				OptionSelectorGroupContext = React.createElement(OptionSelectorGroupContext.Provider, {
					value = if Flags.FoundationStableContextValues
						then contextValue
						else {
							value = innerProps.value,
							onValueChanged = innerProps.onValueChanged,
							orientation = props.orientation,
							Selectable = props.Selectable,
							testId = props.testId,
							-- Only cascade when Root explicitly sets size; otherwise Items keep their own size.
							size = innerProps.sizeOverride,
							-- Only cascade when Root explicitly sets fillBehavior; otherwise Items keep their own.
							fillBehavior = innerProps.fillBehaviorOverride,
						},
				}, props.children),
			}),
		}
	)
end

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

	if Flags.FoundationOptionSelectorGroupBeta then
		return React.createElement(OptionSelectorGroupInner, {
			props = props,
			sizeOverride = optionSelectorGroupProps.size,
			fillBehaviorOverride = optionSelectorGroupProps.fillBehavior,
			value = value,
			onValueChanged = onValueChanged,
			ref = ref,
		}) :: React.ReactElement
	end

	local contextValue = if Flags.FoundationStableContextValues
		then React.useMemo(function()
			return {
				value = value,
				onValueChanged = onValueChanged,
				orientation = props.orientation,
				Selectable = props.Selectable,
				testId = props.testId,
			}
		end, { value, onValueChanged, props.orientation, props.Selectable, props.testId } :: { unknown })
		else nil

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = {
				["col size-full-0 auto-y"] = props.orientation :: Orientation == Orientation.Vertical,
				["row size-full-0 auto-y"] = Flags.FoundationOptionSelectorGroupFixes
					and props.orientation :: Orientation == Orientation.Horizontal,
				["row auto-x"] = not Flags.FoundationOptionSelectorGroupFixes
					and props.orientation :: Orientation == Orientation.Horizontal,
				["gap-small"] = true,
			},
			ref = ref,
		}),
		{
			OptionSelectorGroupContext = React.createElement(OptionSelectorGroupContext.Provider, {
				value = if Flags.FoundationStableContextValues
					then contextValue
					else {
						value = value,
						onValueChanged = onValueChanged,
						orientation = props.orientation,
						Selectable = props.Selectable,
						testId = props.testId,
					},
			}, props.children),
		}
	) :: React.ReactElement
end

return React.memo(React.forwardRef(OptionSelectorGroup))
