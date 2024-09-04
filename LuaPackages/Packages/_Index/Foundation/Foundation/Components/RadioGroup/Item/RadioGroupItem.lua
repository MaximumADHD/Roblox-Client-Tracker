local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Components = Foundation.Components
local InputLabel = require(Components.InputLabel)
local View = require(Components.View)
local Types = require(Components.Types)
local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)

local useTokens = require(Foundation.Providers.Style.useTokens)
local useCursor = require(Foundation.Providers.Cursor.useCursor)
local withCommonProps = require(Foundation.Utility.withCommonProps)

local InputLabelSize = require(Foundation.Enums.InputLabelSize)
type InputLabelSize = InputLabelSize.InputLabelSize

local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState

local CursorType = require(Foundation.Enums.CursorType)
type CursorType = CursorType.CursorType

local useCheckedValue = require(script.Parent.Parent.useCheckedValue)

type Props = {
	-- A unique value for the radio item.
	value: string,
	-- Whether the radio item is disabled. When `true`, the `setValue` method
	-- will not be invoked, even if the user interacts with the radio item.
	isDisabled: boolean?,
	-- A label for the radio item. To omit, set it to an empty string.
	-- When nil, defaults to `value`.
	label: string | React.ReactNode?,
} & Types.CommonProps

local function RadioGroupItem(props: Props, ref: React.Ref<GuiObject>?)
	local isHovering, setIsHovering = React.useBinding(false)
	local value, setValue = useCheckedValue()

	local isChecked = value == props.value
	local label = props.label or props.value

	local tokens = useTokens()
	local cursor = useCursor({
		radius = UDim.new(0, tokens.Radius.Small),
		offset = tokens.Size.Size_200,
		borderWidth = tokens.Stroke.Thicker,
	})

	local getContentStyle = React.useCallback(function(isHovering)
		if isHovering and not props.isDisabled then
			return tokens.Color.Content.Emphasis
		else
			return tokens.Color.Content.Default
		end
	end, { tokens :: any, isChecked, props.isDisabled })

	local onActivated = React.useCallback(function()
		if not props.isDisabled then
			setValue(props.value)
		end
	end, { props.isDisabled :: any, props.value, setValue })

	local onInputStateChanged = React.useCallback(function(newState: ControlState)
		setIsHovering(newState == ControlState.Hover)
	end, {})

	local buttonSize = tokens.Size.Size_600 - math.ceil(tokens.Stroke.Standard) * 2

	local radioGroupItem = React.createElement(View, {
		Size = UDim2.new(0, buttonSize, 0, buttonSize),
		stroke = {
			Color = isHovering:map(function(hovering)
				return getContentStyle(hovering).Color3
			end),
			Transparency = isHovering:map(function(hovering)
				return getContentStyle(hovering).Transparency
			end),
		},
		tag = "radius-circle stroke-standard",
	}, {
		Center = if isChecked
			then React.createElement(View, {
				tag = "position-center-center anchor-center-center radius-circle size-400 bg-action-sub-emphasis",
			})
			else nil,
	})

	--[[
		Labels for radio buttons and radio itemss should be positioned after the field.
		Source: https://www.w3.org/TR/WCAG20-TECHS/G162.html
	]]
	return React.createElement(
		View,
		withCommonProps(props, {
			Active = not props.isDisabled,
			GroupTransparency = if props.isDisabled then 0.5 else 0,
			isDisabled = props.isDisabled,
			onActivated = onActivated,
			onStateChanged = onInputStateChanged,
			selection = {
				Selectable = not props.isDisabled,
				SelectionImageObject = cursor,
			},
			stateLayer = { affordance = StateLayerAffordance.None },
			-- Add padding around checkbox to ensure it's not cut off
			-- by the bounds of the canvas group
			padding = {
				top = UDim.new(0, math.ceil(tokens.Stroke.Standard)),
				bottom = UDim.new(0, math.ceil(tokens.Stroke.Standard)),
				left = UDim.new(0, math.ceil(tokens.Stroke.Standard)),
			},
			tag = "row gap-small auto-xy align-x-left align-y-center",
			ref = ref,
		}),
		{
			RadioGroupItem = radioGroupItem,
			Label = if type(label) == "string"
				then React.createElement(InputLabel, {
					Text = label,
					textStyle = isHovering:map(function(hovering)
						return getContentStyle(hovering)
					end),
					size = InputLabelSize.Large,
					LayoutOrder = 2,
				})
				else label,
		}
	)
end

return React.memo(React.forwardRef(RadioGroupItem))
