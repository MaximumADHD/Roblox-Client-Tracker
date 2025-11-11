local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Otter = require(Packages.Otter)
local React = require(Packages.React)

local Constants = require(Foundation.Constants)

local Components = Foundation.Components
local Input = require(Components.InternalInput)
local useUncontrolledState = require(Components.InternalInput.useUncontrolledState)
local Types = require(Components.Types)
local Knob = require(Components.Knob)
local PresentationContext = require(Foundation.Providers.Style.PresentationContext)

local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)
local Flags = require(Foundation.Utility.Flags)
local BuilderIcons = require(Packages.BuilderIcons)

local ColorMode = require(Foundation.Enums.ColorMode)
local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState

local useToggleVariants = require(script.Parent.useToggleVariants)

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local InputLabelSize = require(Foundation.Enums.InputLabelSize)
type InputLabelSize = InputLabelSize.InputLabelSize

local InputPlacement = require(Foundation.Enums.InputPlacement)
type InputPlacement = InputPlacement.InputPlacement

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
	placement: InputPlacement?,
} & Types.SelectionProps & Types.CommonProps

local defaultProps = {
	size = InputSize.Medium,
	placement = if Flags.FoundationToggleDefaultPlacement then InputPlacement.Start else InputPlacement.End,
	Selectable = true,
	testId = "--foundation-toggle",
}

local IS_INVERSE = { colorMode = ColorMode.Color }

local function Toggle(toggleProps: ToggleProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(toggleProps, defaultProps)
	local tokens = useTokens()
	local variantProps = useToggleVariants(tokens, props.size)
	local isChecked, onActivated = useUncontrolledState(props.isChecked, props.onActivated)

	local knobSize: InputSize = if Flags.FoundationToggleVisualUpdate
		then if toggleProps.size == InputSize.Large then InputSize.Medium else props.size
		else props.size

	local hasShadow = if Flags.FoundationToggleVisualUpdate then false else true

	local initialProgress = isChecked and 1 or 0
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
		local newProgress = if isChecked then 1 else 0
		if progressMotorRef.current then
			progressMotorRef.current:setGoal(Otter.spring(newProgress, SPRING_PARAMETERS))
		end
	end, { isChecked })

	return React.createElement(
		Input,
		withCommonProps(props, {
			isChecked = isChecked,
			isDisabled = props.isDisabled,
			-- remove justifyContent prop when Flags.FoundationToggleEndPlacementJustifyContent is removed
			justifyContent = Flags.FoundationToggleEndPlacementJustifyContent,
			onActivated = onActivated,
			label = {
				text = props.label,
				position = Constants.INPUT_PLACEMENT_TO_LABEL_ALIGNMENT[props.placement],
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
		React.createElement(PresentationContext.Provider, { value = IS_INVERSE }, {
			Knob = if Flags.FoundationToggleVisualUpdate
				then React.createElement(Knob, {
					size = knobSize,
					AnchorPoint = Vector2.new(0, 0.5),
					Position = knobPosition,
					hasShadow = hasShadow,
					icon = if isChecked
						then {
							name = BuilderIcons.Icon.Check,
							variant = BuilderIcons.IconVariant.Regular,
						}
						else nil,
					testId = `{props.testId}--knob`,
				})
				else React.createElement(Knob, {
					size = knobSize,
					AnchorPoint = Vector2.new(0, 0.5),
					Position = knobPosition,
					testId = `{props.testId}--knob`,
				}),
		})
	)
end

return React.memo(React.forwardRef(Toggle))
