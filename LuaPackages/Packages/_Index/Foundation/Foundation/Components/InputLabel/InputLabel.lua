local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Text = require(Foundation.Components.Text)

local React = require(Packages.React)
local Translator = require(Foundation.Utility.Localization.Translator)

local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)
local Types = require(Foundation.Components.Types)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState

local InputLabelSize = require(Foundation.Enums.InputLabelSize)
type InputLabelSize = InputLabelSize.InputLabelSize

local REQUIRED_INDICATOR = "*"

export type InputLabelProps = {
	-- Optional text style override
	textStyle: Types.ColorStyle?,
	-- Whether the input is required or not. Leave nil for the majority case
	isRequired: boolean?,
	-- Size of the input label
	size: InputLabelSize?,
	-- Callback for when the input label is activated.
	-- This should trigger the activation of the associated input button.
	onActivated: () -> ()?,
	-- Callback for when the input label is hovered over.
	-- This should trigger the hover state of the associated input button.
	onHover: (boolean) -> ()?,
	-- Whether the input label should be rich text or not
	RichText: boolean?,
	-- Determines the string rendered by the UI element
	Text: string,
} & Types.CommonProps

local function labelText(text: string, isRequired: boolean?): string
	if isRequired == nil or isRequired == React.None then
		return text
	end

	return if isRequired
		then text .. REQUIRED_INDICATOR
		else Translator:FormatByKey("CommonUI.Controls.Input.Optional", { inputLabel = text })
end

local defaultProps = {
	size = InputLabelSize.Medium :: InputLabelSize,
	testId = "--foundation-input-label",
}

local function InputLabel(inputLabelProps: InputLabelProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(inputLabelProps, defaultProps)
	local onStateChanged = React.useMemo(function(): ((ControlState) -> ())?
		if props.onHover ~= nil then
			return function(newState: ControlState)
				props.onHover(newState == ControlState.Hover)
			end
		else
			return nil
		end
	end, { props.onHover })

	return React.createElement(
		Text,
		withCommonProps(props, {
			Text = labelText(props.Text, props.isRequired),
			RichText = props.RichText,

			-- InputLabel is not selectable because the associated
			-- input button is what we want to focus with directional input
			selection = {
				Selectable = false,
			},
			onActivated = props.onActivated,
			onStateChanged = onStateChanged,
			stateLayer = { affordance = StateLayerAffordance.None },
			textStyle = props.textStyle,
			tag = {
				["size-0 auto-xy content-default text-align-x-left text-align-y-top text-wrap"] = true,
				["text-title-small"] = props.size == InputLabelSize.Small,
				["text-title-medium"] = props.size == InputLabelSize.Medium,
				["text-title-large"] = props.size == InputLabelSize.Large,
			},
			ref = ref,
		})
	)
end

return React.memo(React.forwardRef(InputLabel))
