local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Flags = require(Foundation.Utility.Flags)

local Motion = require(Packages.Motion)
local useMotion = Motion.useMotion

local Components = Foundation.Components
local Icon = require(Components.Icon)
local Text = require(Components.Text)
local Types = require(Components.Types)
local View = require(Components.View)

local Constants = require(Foundation.Constants)
local escapeRichText = require(Foundation.Utility.escapeRichText)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local useOptionSelectorGroupItemMotionStates = require(script.Parent.useOptionSelectorGroupItemMotionStates)
local useOptionSelectorGroupItemVariants = require(script.Parent.useOptionSelectorGroupItemVariants)

local FillBehavior = require(Foundation.Enums.FillBehavior)
type FillBehavior = FillBehavior.FillBehavior

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local Orientation = require(Foundation.Enums.Orientation)
type Orientation = Orientation.Orientation

local useOptionSelectorGroup = require(script.Parent.Parent.useOptionSelectorGroup)

local function getTransparency(
	transparency: number?,
	disabledTransparency: React.Binding<number>
): React.Binding<number>
	return disabledTransparency:map(function(disabledValue)
		if transparency ~= nil then
			return transparency + (1 - transparency) * disabledValue
		end
		return disabledValue
	end)
end

local function getTextStyle(
	textTransparency: React.Binding<number>,
	disabledTransparency: React.Binding<number>,
	contentColor: Color3
): React.Binding<any>
	return React.joinBindings({ textTransparency, disabledTransparency }):map(function(transparencies)
		local targetDisabledTransparency: number = transparencies[2]
		return {
			Color3 = contentColor,
			Transparency = targetDisabledTransparency,
		}
	end)
end

export type OptionSelectorGroupItemProps = {
	-- A unique value for the option selector item.
	value: string,
	-- An optional icon shown next to the label.
	icon: string?,
	-- Whether the option selector item is disabled. When `true`, the `setValue` method
	-- will not be invoked, even if the user interacts with the option selector item.
	isDisabled: boolean?,
	-- A label for the option selector item. To omit, set it to an empty string.
	-- When nil, defaults to `value`.
	label: string?,
	-- Optional metadata to give additional details about the option selector item.
	metadata: string?,
	-- Optional description to give more context about the option selector item.
	description: string?,
	-- Size of the option selector item
	size: InputSize?,
	-- Width of the button. `fillBehavior` is preferred and works better with flex layouts. Intended for cross-directional scaled sizing.
	width: UDim?,
	fillBehavior: FillBehavior?,
} & Types.CommonProps

local defaultProps = {
	isDisabled = false,
	size = InputSize.Medium,
	width = UDim.new(0, 0),
}

local function OptionSelectorGroupItem(
	optionSelectorGroupItemProps: OptionSelectorGroupItemProps,
	ref: React.Ref<GuiObject>?
)
	local props = withDefaults(optionSelectorGroupItemProps, defaultProps)
	local optionSelectorGroupContext = useOptionSelectorGroup()

	local isSelected = optionSelectorGroupContext.value == props.value
	local label = props.label or props.value

	-- Layout of the item depends on the orientation of the parent OptionSelectorGroup: the item orientation always opposite to the group orientation.
	local orientation = if optionSelectorGroupContext.orientation == Orientation.Vertical
		then Orientation.Horizontal
		else Orientation.Vertical

	local fillBehavior = if orientation == Orientation.Horizontal
		then FillBehavior.Fit
		else (props.fillBehavior or FillBehavior.Fill)
	local containerSize = if Flags.FoundationFixOptionSelectorGroupItemSize
		then UDim2.fromScale(1, 0)
		else UDim2.new(if fillBehavior == FillBehavior.Fill then UDim.new(1, 0) else props.width, UDim.new())

	local tokens = useTokens()
	local variantProps = useOptionSelectorGroupItemVariants(tokens, props.size)

	local contentColor = variantProps.content.Color3 :: Color3
	local strokeStyle = if isSelected then tokens.Color.System.Contrast else tokens.Color.Stroke.Emphasis

	local motionStates = useOptionSelectorGroupItemMotionStates(0, Constants.DISABLED_TRANSPARENCY)
	local disabledValues, animateDisabledValues = useMotion(motionStates.Default)
	local values, _ = useMotion(motionStates.Default)

	React.useEffect(function()
		if props.isDisabled then
			animateDisabledValues(motionStates.Disabled)
		else
			animateDisabledValues(motionStates.Default)
		end
	end, { props.isDisabled })

	local onActivated = React.useCallback(
		function()
			optionSelectorGroupContext.onValueChanged(
				if optionSelectorGroupContext.value == props.value then nil else props.value
			)
		end,
		{ props.isDisabled, props.value, optionSelectorGroupContext.onValueChanged, optionSelectorGroupContext.value } :: { unknown }
	)

	props.testId = `{optionSelectorGroupContext.testId}--item-{props.value}`

	local cursor = React.useMemo(function()
		return {
			radius = UDim.new(0, variantProps.container.radius),
			offset = tokens.Size.Size_200,
			borderWidth = tokens.Stroke.Thicker,
		}
	end, { tokens :: unknown, variantProps.container.radius })

	local labelElement = React.createElement(Text, {
		Text = escapeRichText(label),
		TextWrapped = true,
		TextXAlignment = Enum.TextXAlignment.Left,
		RichText = true,
		tag = variantProps.label.tag,
		textStyle = getTextStyle(values.textTransparency, disabledValues.transparency, contentColor),
		LayoutOrder = 2,
	})

	return React.createElement(
		View,
		withCommonProps(props, {
			stroke = {
				Color = strokeStyle.Color3,
				Transparency = getTransparency(strokeStyle.Transparency, disabledValues.transparency),
			},
			Size = containerSize,
			selection = {
				Selectable = if props.isDisabled then false else optionSelectorGroupContext.Selectable,
			},
			cursor = cursor,
			onActivated = onActivated,
			isDisabled = props.isDisabled,
			tag = if Flags.FoundationFixOptionSelectorGroupItemSize
				then {
					["auto-xy"] = fillBehavior ~= FillBehavior.Fill,
					["auto-y fill"] = fillBehavior == FillBehavior.Fill,
					[variantProps.container.tag] = true,
				}
				else {
					["auto-xy"] = props.width.Scale == 0 or (fillBehavior and fillBehavior ~= FillBehavior.Fill),
					["auto-y"] = props.width.Scale ~= 0,
					["fill"] = fillBehavior and fillBehavior == FillBehavior.Fill,
					[variantProps.container.tag] = true,
				},
			ref = ref,
		}),
		{
			ItemInner = React.createElement(View, {
				tag = variantProps.itemInner.tag,
				Size = containerSize,
			}, {
				IconRow = React.createElement(View, {
					tag = "size-full-0 auto-y row gap-small align-y-center",
					LayoutOrder = 1,
				}, {
					Icon = if props.icon
						then React.createElement(Icon, {
							name = props.icon,
							size = variantProps.icon.size,
							style = disabledValues.transparency:map(function(transparency)
								return {
									Color3 = contentColor,
									Transparency = transparency,
								}
							end),
							LayoutOrder = 0,
						})
						else nil,
					Label = if orientation == Orientation.Horizontal
						then labelElement
						else React.createElement(View, { tag = "grow" }),
					Checkmark = React.createElement(Icon, {
						name = "check-large",
						size = variantProps.icon.size,
						style = disabledValues.transparency:map(function(transparency)
							return {
								Color3 = contentColor,
								-- We don't use Visible since we want the layout to not shift when selected state changes
								Transparency = if isSelected then transparency else 1,
							}
						end),
						LayoutOrder = 3,
					}),
				}),
				Label = if orientation == Orientation.Vertical then labelElement else nil,
				Metadata = if props.metadata
					then React.createElement(Text, {
						Text = escapeRichText(props.metadata),
						TextTruncate = Enum.TextTruncate.AtEnd,
						TextXAlignment = Enum.TextXAlignment.Left,
						RichText = true,
						tag = variantProps.metadata.tag,
						textStyle = getTextStyle(values.textTransparency, disabledValues.transparency, contentColor),
						LayoutOrder = 3,
					})
					else nil,
				Description = if props.description
					then React.createElement(Text, {
						Text = escapeRichText(props.description),
						TextWrapped = true,
						TextXAlignment = Enum.TextXAlignment.Left,
						RichText = true,
						tag = variantProps.description.tag,
						textStyle = getTextStyle(values.textTransparency, disabledValues.transparency, contentColor),
						LayoutOrder = 4,
					})
					else nil,
			}),
		}
	)
end

return React.memo(React.forwardRef(OptionSelectorGroupItem))
