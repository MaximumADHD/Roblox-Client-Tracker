local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local Cryo = require(Packages.Cryo)

local Components = Foundation.Components
local Image = require(Components.Image)
local InputLabel = require(Components.InputLabel)
local View = require(Components.View)
local Types = require(Components.Types)
local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)

local useTokens = require(Foundation.Providers.Style.useTokens)
local useCursor = require(Foundation.Providers.Cursor.useCursor)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local useCheckboxVariants = require(script.Parent.useCheckboxVariants)
type CheckboxState = useCheckboxVariants.CheckboxState

local CheckboxSize = require(Foundation.Enums.CheckboxSize)
type CheckboxSize = CheckboxSize.CheckboxSize

local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState

local CursorType = require(Foundation.Enums.CursorType)
type CursorType = CursorType.CursorType

type Props = {
	-- Whether the checkbox is currently checked. If it is left `nil`,
	-- the checkbox will be considered uncontrolled.
	isChecked: boolean?,
	-- Whether the checkbox is disabled. When `true`, the `onActivated` callback
	-- will not be invoked, even if the user interacts with the checkbox.
	isDisabled: boolean?,
	-- A function that will be called whenever the checkbox is activated.
	-- Returns the new value of the checkbox when uncontrolled.
	onActivated: (boolean) -> (),
	-- A label for the checkbox. To omit, set it to an empty string.
	label: string,
	size: CheckboxSize?,
} & Types.CommonProps

local defaultProps = {
	size = CheckboxSize.Large,
}

local function Checkbox(checkboxProps: Props, ref: React.Ref<GuiObject>?)
	local props = withDefaults(checkboxProps, defaultProps)
	local hasLabel = #props.label > 0
	local isHovering, setIsHovering = React.useState(false)
	local tokens = useTokens()

	local isChecked, setIsChecked = React.useState(props.isChecked or false)
	React.useEffect(function()
		if props.isChecked ~= nil then
			setIsChecked(props.isChecked)
		end
	end, { props.isChecked })

	local cursorConfig = React.useMemo(function()
		local radius = if hasLabel then UDim.new(0, tokens.Radius.Small) else UDim.new(0, 0)
		return {
			radius = radius,
			offset = tokens.Size.Size_200,
			borderWidth = tokens.Stroke.Thicker,
		}
	end, { tokens :: any, hasLabel })
	local cursor = useCursor(cursorConfig)

	local state: CheckboxState = React.useMemo(function()
		if isChecked then
			return "Checked"
		elseif isHovering then
			return ControlState.Hover
		else
			return ControlState.Default
		end
	end, { isChecked :: any, isHovering }) :: CheckboxState

	local variantProps = useCheckboxVariants(tokens, props.size, state)

	local onInputStateChanged = React.useCallback(function(newState: ControlState)
		setIsHovering(newState == ControlState.Hover)
	end, {})

	local interactionProps = {
		Active = not props.isDisabled,
		onActivated = function()
			if not props.isDisabled then
				if props.isChecked == nil then
					setIsChecked(not isChecked)
				end
				props.onActivated(not isChecked)
			end
		end,
		onStateChanged = onInputStateChanged,
		stateLayer = { affordance = StateLayerAffordance.None },
		selection = {
			Selectable = not props.isDisabled,
			SelectionImageObject = cursor,
		},
		isDisabled = props.isDisabled,
		ref = ref,
	}

	local checkbox = React.createElement(
		View,
		Cryo.Dictionary.union({
			tag = variantProps.checkbox.tag,
			Size = variantProps.checkbox.size,
			stroke = {
				Color = variantProps.checkbox.stroke.Color3,
				Transparency = variantProps.checkbox.stroke.Transparency,
			},
		}, if not hasLabel then interactionProps else {}),
		{
			Checkmark = if props.isChecked
				then React.createElement(Image, {
					Image = "icons/status/success_small",
					tag = variantProps.checkmark.tag,
				})
				else nil,
		}
	)

	if not hasLabel then
		return checkbox
	end

	--[[
		Labels for radio buttons and checkboxes should be positioned after the field.
		Source: https://www.w3.org/TR/WCAG20-TECHS/G162.html
	]]
	return React.createElement(
		View,
		withCommonProps(
			props,
			Cryo.Dictionary.union({
				GroupTransparency = if props.isDisabled then 0.5 else 0,
				-- Add padding around checkbox to ensure it's not cut off
				-- by the bounds of the canvas group
				padding = variantProps.container.padding,
				tag = variantProps.container.tag,
			}, interactionProps)
		),
		{
			Checkbox = checkbox,
			InputLabel = React.createElement(InputLabel, {
				Text = props.label,
				textStyle = variantProps.label.style,
				size = variantProps.label.size,
				LayoutOrder = 2,
			}),
		}
	)
end

return React.memo(React.forwardRef(Checkbox))
