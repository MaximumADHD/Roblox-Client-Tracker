local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Components = Foundation.Components
local View = require(Components.View)
local BaseMenu = require(Components.BaseMenu)
type BaseMenuItem = BaseMenu.BaseMenuItem
local Text = require(Components.Text)
local Types = require(Foundation.Components.Types)
local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)
local Icon = require(Components.Icon)
local InputField = require(Components.InputField)

local useTokens = require(Foundation.Providers.Style.useTokens)
local withDefaults = require(Foundation.Utility.withDefaults)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local getInputTextSize = require(Foundation.Utility.getInputTextSize)

local useDropdownVariants = require(script.Parent.useDropdownVariants)

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState

local CursorType = require(Foundation.Enums.CursorType)
type CursorType = CursorType.CursorType

type Props = {
	hasError: boolean?,
	isDisabled: boolean?,
	item: BaseMenuItem?,
	placeholder: string?,
	onActivated: () -> (),
	isMenuOpen: boolean,
	width: UDim,
	size: InputSize,
	label: string,
	hint: string?,
	inputRef: React.Ref<GuiObject>?,
} & Types.CommonProps

local defaultProps = {
	isMenuOpen = false,
	placeholder = "",
}

local MENU_OPEN_IMAGE = "truncate_arrows/actions_truncationCollapse"
local MENU_CLOSE_IMAGE = "truncate_arrows/actions_truncationExpand"

local function DropdownControl(dropdownControlProps: Props, ref: React.Ref<GuiObject>?)
	local props = withDefaults(dropdownControlProps, defaultProps)
	local tokens = useTokens()
	local controlState, updateControlState = React.useState(ControlState.Initialize :: ControlState)
	local showPlaceholder = props.item == nil
	local variantProps =
		useDropdownVariants(tokens, props.size, controlState :: ControlState, showPlaceholder, props.hasError or false)

	local cursor = React.useMemo(function()
		return {
			radius = UDim.new(0, tokens.Radius.Small),
			offset = tokens.Size.Size_200,
			borderWidth = tokens.Stroke.Thicker,
		}
	end, { tokens })

	return React.createElement(
		InputField,
		withCommonProps(props, {
			size = getInputTextSize(props.size),
			hasError = props.hasError,
			isDisabled = props.isDisabled,
			label = props.label,
			hint = props.hint,
			ref = ref,
			width = props.width,
			input = function(_inputRef)
				return React.createElement(View, {
					onStateChanged = updateControlState,
					isDisabled = props.isDisabled,
					onActivated = props.onActivated,
					selection = {
						Selectable = not props.isDisabled,
					},
					cursor = cursor,
					stateLayer = { affordance = StateLayerAffordance.None },
					tag = variantProps.container.tag,
					ref = props.inputRef,
					testId = `{props.testId}--control`,
				}, {
					Text = React.createElement(Text, {
						LayoutOrder = 1,
						Text = if props.item then props.item.text else props.placeholder,
						tag = variantProps.text.tag,
					}),
					Arrow = React.createElement(Icon, {
						LayoutOrder = 2,
						name = if props.isMenuOpen then MENU_OPEN_IMAGE else MENU_CLOSE_IMAGE,
						size = variantProps.arrow.size,
						tag = variantProps.text.tag,
					}),
				})
			end,
		})
	)
end

return React.memo(React.forwardRef(DropdownControl))
