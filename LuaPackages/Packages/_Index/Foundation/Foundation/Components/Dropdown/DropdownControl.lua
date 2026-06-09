local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Components = Foundation.Components
local BaseMenu = require(Components.BaseMenu)
local View = require(Components.View)
type BaseMenuItem = BaseMenu.BaseMenuItem
local Constants = require(Foundation.Constants)
local Icon = require(Components.Icon)
local InputField = require(Components.InputField)
local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)
local Text = require(Components.Text)
local Types = require(Foundation.Components.Types)

local Flags = require(Foundation.Utility.Flags)
local blendTransparencies = require(Foundation.Utility.blendTransparencies)
local getInputTextSize = require(Foundation.Utility.getInputTextSize)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local useDropdownVariants = require(script.Parent.useDropdownVariants)

local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState

local CursorType = require(Foundation.Enums.CursorType)
type CursorType = CursorType.CursorType

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local InputVariant = require(Foundation.Enums.InputVariant)
type InputVariant = InputVariant.InputVariant

local BuilderIcons = require(Packages.BuilderIcons)
local MENU_OPEN_IMAGE = BuilderIcons.Icon.ChevronLargeUp
local MENU_CLOSE_IMAGE = BuilderIcons.Icon.ChevronLargeDown

type Props = {
	variant: InputVariant?,
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
	variant = if Flags.FoundationDropdownVariant then InputVariant.Standard else nil :: never,
	isMenuOpen = false,
	placeholder = "",
}

local function DropdownControl(dropdownControlProps: Props, ref: React.Ref<GuiObject>?)
	local props = withDefaults(dropdownControlProps, defaultProps)
	local tokens = useTokens()
	local controlState, updateControlState = React.useState(ControlState.Initialize :: ControlState)
	local showPlaceholder = props.item == nil
	-- TODO: clean up with FFlagFoundationDropdownVariant
	if Flags.FoundationDropdownVariant and props.variant == nil then
		props.variant = InputVariant.Standard
	end
	local variantProps = useDropdownVariants(
		tokens,
		props.size,
		if Flags.FoundationDropdownVariant then props.variant else nil :: never,
		controlState :: ControlState,
		showPlaceholder,
		props.hasError or false,
		if Flags.FoundationDropdownVariant then props.isMenuOpen else nil :: never,
		if Flags.FoundationDropdownVariant then controlState == ControlState.Hover else nil :: never
	)

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
					backgroundStyle = if Flags.FoundationDropdownVariant and variantProps.container.bgStyle
						then {
							Color3 = variantProps.container.bgStyle.Color3,
							Transparency = if props.isDisabled
								then blendTransparencies(
									variantProps.container.bgStyle.Transparency,
									Constants.DISABLED_TRANSPARENCY
								)
								else variantProps.container.bgStyle.Transparency,
						}
						else nil,
					stroke = if Flags.FoundationDropdownVariant and variantProps.container.strokeStyle
						then {
							Color = variantProps.container.strokeStyle.Color3,
							Transparency = if props.isDisabled
								then blendTransparencies(
									variantProps.container.strokeStyle.Transparency,
									Constants.DISABLED_TRANSPARENCY
								)
								else variantProps.container.strokeStyle.Transparency,
							Thickness = variantProps.container.strokeThickness,
							BorderStrokePosition = Enum.BorderStrokePosition.Inner,
						}
						else nil,
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
						style = if props.isDisabled then tokens.Color.Content.Muted else nil,
						tag = variantProps.text.tag,
						testId = `{props.testId}--arrow`,
					}),
				})
			end,
		})
	)
end

return React.memo(React.forwardRef(DropdownControl))
