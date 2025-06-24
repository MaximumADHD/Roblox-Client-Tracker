local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Components = Foundation.Components
local View = require(Components.View)
local Menu = require(Components.Menu)
type MenuItem = Menu.MenuItem
local Text = require(Components.Text)
local Types = require(Foundation.Components.Types)
local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)
local Icon = require(Components.Icon)
local InputField = require(Components.InputField)

local useTokens = require(Foundation.Providers.Style.useTokens)
local useCursor = require(Foundation.Providers.Cursor.useCursor)
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
	item: MenuItem?,
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

	local cursor = useCursor({
		radius = UDim.new(0, tokens.Radius.Small),
		offset = tokens.Size.Size_200,
		borderWidth = tokens.Stroke.Thicker,
	})

	return React.createElement(
		InputField,
		withCommonProps(props, {
			size = getInputTextSize(props.size, false),
			hasError = props.hasError,
			isDisabled = props.isDisabled,
			label = props.label,
			hint = props.hint,
			ref = ref,
			input = function(inputRef)
				return React.createElement(View, {
					Size = UDim2.new(props.width, variantProps.container.height),
					onStateChanged = updateControlState,
					isDisabled = props.isDisabled,
					onActivated = props.onActivated,
					selection = {
						Selectable = not props.isDisabled,
						SelectionImageObject = cursor,
					},
					stateLayer = { affordance = StateLayerAffordance.None },
					tag = variantProps.container.tag,
					ref = props.inputRef,
					testId = "--foundation-dropdown-control",
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
