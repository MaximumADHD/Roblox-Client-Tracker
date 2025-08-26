local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Otter = require(Packages.Otter)
local React = require(Packages.React)

local Components = Foundation.Components
local Input = require(Components.InternalInput)
local Types = require(Components.Types)
local Knob = require(Components.Knob)

local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState

local useToggleVariants = require(script.Parent.useToggleVariants)

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local InputLabelSize = require(Foundation.Enums.InputLabelSize)
type InputLabelSize = InputLabelSize.InputLabelSize

local SPRING_PARAMETERS = {
	frequency = 4,
}

export type ToggleProps = {
	-- Whether the toggle is currently checked (i.e. on). If it is left `nil`,
	-- the toggle will be considered uncontrolled.
	isChecked: boolean?,
	-- Whether the toggle is disabled. When `true`, the `onActivated` callback
	-- will not be invoked, even if the user interacts with the toggle.
	isDisabled: boolean?,
	-- A function that will be called whenever the toggle is activated.
	-- Returns the new value of the toggle when uncontrolled.
	onActivated: (boolean) -> (),
	-- A label for the toggle. To omit, set it to an empty string.
	label: string,
	size: InputSize?,
} & Types.SelectionProps & Types.CommonProps

local defaultProps = {
	size = InputSize.Medium,
	Selectable = true,
}

local function Toggle(toggleProps: ToggleProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(toggleProps, defaultProps)
	local tokens = useTokens()
	local variantProps = useToggleVariants(tokens, props.size)

	local initialProgress = props.isChecked and 1 or 0
	local progress, setProgress = React.useBinding(initialProgress)
	local progressMotorRef = React.useRef(nil :: Otter.SingleMotor?)

	local knobPosition = progress:map(function(value)
		return variantProps.knob.offPosition:Lerp(variantProps.knob.onPosition, value)
	end)

	React.useEffect(function()
		local progressMotor = Otter.createSingleMotor(initialProgress)
		progressMotorRef.current = progressMotor
		progressMotor:start()

		progressMotor:onStep(function(newValue)
			setProgress(newValue)
		end)

		return function()
			progressMotor:destroy()
		end
	end, {})

	React.useEffect(function()
		local newProgress = if props.isChecked then 1 else 0
		if progressMotorRef.current then
			progressMotorRef.current:setGoal(Otter.spring(newProgress, SPRING_PARAMETERS))
		end
	end, { props.isChecked })

	return React.createElement(
		Input,
		withCommonProps(props, {
			isChecked = props.isChecked,
			isDisabled = props.isDisabled,
			onActivated = props.onActivated,
			label = {
				text = props.label,
				position = Enum.HorizontalAlignment.Left,
			},
			customVariantProps = variantProps.input,
			size = props.size,
			Selectable = props.Selectable,
			NextSelectionUp = props.NextSelectionUp,
			NextSelectionDown = props.NextSelectionDown,
			NextSelectionLeft = props.NextSelectionLeft,
			NextSelectionRight = props.NextSelectionRight,
			ref = ref,
		}),
		{
			Knob = React.createElement(Knob, {
				size = props.size,
				isDisabled = props.isDisabled,
				AnchorPoint = Vector2.new(0, 0.5),
				Position = knobPosition,
			}),
		}
	)
end

return React.memo(React.forwardRef(Toggle))
