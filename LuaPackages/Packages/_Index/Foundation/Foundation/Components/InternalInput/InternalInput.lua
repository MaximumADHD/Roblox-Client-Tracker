local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Motion = require(Packages.Motion)
local useMotion = Motion.useMotion

local React = require(Packages.React)
local Cryo = require(Packages.Cryo)

local Components = Foundation.Components
local InputLabel = require(Components.InputLabel)
local View = require(Components.View)
local Types = require(Components.Types)
type ColorStyleValue = Types.ColorStyleValue
type Padding = Types.Padding

local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)

local useInputVariants = require(script.Parent.useInputVariants)
local useInputMotionStates = require(script.Parent.useInputMotionStates)

local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)
local getInputTextSize = require(Foundation.Utility.getInputTextSize)

local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local CursorType = require(Foundation.Enums.CursorType)
type CursorType = CursorType.CursorType

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

export type InputVariantProps = {
	tag: string,
	size: UDim2,
	cursorRadius: UDim,
	checkedStyle: ColorStyleValue?,
}

local DISABLED_TRANSPARENCY = 0.5

type Props = {
	-- Whether the input is currently checked. If it is left `nil`,
	-- the input will be considered uncontrolled.
	isChecked: boolean?,
	-- Whether the input is disabled. When `true`, the `onActivated` callback
	-- will not be invoked, even if the user interacts with the input.
	isDisabled: boolean?,
	-- A function that will be called whenever the input is activated.
	-- Returns the new value of the input when uncontrolled.
	onActivated: (boolean) -> (),
	-- A label for the input. To omit, set it to an empty string.
	label: {
		text: string | React.ReactNode?,
		position: Enum.HorizontalAlignment?,
	},
	size: InputSize?,
	-- Custom styles for the input.
	customVariantProps: InputVariantProps,
	children: React.ReactNode?,
} & Types.CommonProps

local defaultProps = {
	size = InputSize.Medium,
}

local function InternalInput(inputProps: Props, ref: React.Ref<GuiObject>?)
	local props = withDefaults(inputProps, defaultProps)

	local label, labelPosition = props.label.text, props.label.position or Enum.HorizontalAlignment.Right
	local hasLabel = if typeof(label) == "string" then #label > 0 else label ~= nil

	local isHovering, setIsHovering = React.useState(false)
	local tokens = useTokens()

	local isChecked, setIsChecked = React.useState(props.isChecked or false)
	React.useEffect(function()
		if props.isChecked ~= nil then
			setIsChecked(props.isChecked)
		end
	end, { props.isChecked })

	local variantProps = useInputVariants(tokens, props.size)

	local cursor = React.useMemo(function()
		return {
			radius = if hasLabel
				then UDim.new(0, tokens.Radius.Small)
				else props.customVariantProps.cursorRadius or UDim.new(0, 0),
			offset = tokens.Size.Size_200,
			borderWidth = tokens.Stroke.Thicker,
		}
	end, { tokens :: unknown, hasLabel, props.customVariantProps.cursorRadius })

	local motionStates = useInputMotionStates(tokens, props.customVariantProps.checkedStyle)
	local values, animate = useMotion(motionStates.Default)

	React.useEffect(function()
		if isChecked then
			animate(motionStates.Checked)
		elseif isHovering then
			animate(motionStates.Hover)
		else
			animate(motionStates.Default)
		end
	end, { isChecked, isHovering })

	local onInputStateChanged = React.useCallback(function(newState: ControlState)
		setIsHovering(newState == ControlState.Hover)
	end, {})

	local onActivated = React.useCallback(function()
		if props.isDisabled then
			return
		end
		if props.isChecked == nil then
			setIsChecked(not isChecked)
		end
		props.onActivated(not isChecked)
	end, { props.isDisabled :: any, props.isChecked, props.onActivated, isChecked })

	local interactionProps = {
		Active = not props.isDisabled,
		GroupTransparency = if props.isDisabled then DISABLED_TRANSPARENCY else 0,
		onActivated = onActivated,
		onStateChanged = onInputStateChanged,
		stateLayer = { affordance = StateLayerAffordance.None },
		selection = {
			Selectable = not props.isDisabled,
		},
		cursor = cursor,
		isDisabled = props.isDisabled,
		ref = ref,
	}

	local strokeThickness = variantProps.input.stroke.thickness

	local inputContainerProps = {
		tag = props.customVariantProps.tag,
		Size = props.customVariantProps.size - UDim2.fromOffset(strokeThickness, strokeThickness),
		backgroundStyle = values.backgroundStyle,
		-- StateLayer can only be applied to something with an onActivated
		onActivated = onActivated,
		stateLayer = { affordance = StateLayerAffordance.Background },
		stroke = {
			Color = values.strokeStyle:map(function(value: Types.ColorStyleValue)
				return value.Color3 :: Color3
			end),
			Transparency = values.strokeStyle:map(function(value: Types.ColorStyleValue)
				-- Stroke transparencies are not affected by GroupTransparency
				if props.isDisabled and not hasLabel then
					return DISABLED_TRANSPARENCY
				else
					return value.Transparency :: number
				end
			end),
			Thickness = strokeThickness,
		},
		--[[
			Labels for radio buttons and most other inputs should be positioned after the field.
			Source: https://www.w3.org/TR/WCAG20-TECHS/G162.html
		]]
		LayoutOrder = if hasLabel then (if labelPosition == Enum.HorizontalAlignment.Left then 1 else -1) else nil,
	}

	if not hasLabel then
		return React.createElement(
			View,
			withCommonProps(props, Cryo.Dictionary.union(interactionProps, inputContainerProps)),
			props.children
		)
	end

	return React.createElement(
		View,
		withCommonProps(
			props,
			Cryo.Dictionary.union({
				tag = variantProps.container.tag,
				-- Add padding around input to ensure it's not cut off
				-- by the bounds of the canvas group
				padding = {
					top = variantProps.container.padding,
					bottom = variantProps.container.padding,
					left = if labelPosition == Enum.HorizontalAlignment.Right
						then variantProps.container.padding
						else nil,
					right = if labelPosition == Enum.HorizontalAlignment.Left
						then variantProps.container.padding
						else nil,
				},
			}, interactionProps)
		),
		{
			Input = React.createElement(View, inputContainerProps, props.children),
			InputLabel = if typeof(label) == "string"
				then React.createElement(InputLabel, {
					Text = label,
					textStyle = values.labelStyle,
					size = getInputTextSize(props.size, true),
				})
				else label,
		}
	)
end

return React.memo(React.forwardRef(InternalInput))
