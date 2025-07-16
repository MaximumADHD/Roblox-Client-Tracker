local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local View = require(Foundation.Components.View)
local Image = require(Foundation.Components.Image)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
type ItemId = Types.ItemId

local useTokens = require(Foundation.Providers.Style.useTokens)
local useCursor = require(Foundation.Providers.Cursor.useCursor)

local withDefaults = require(Foundation.Utility.withDefaults)
local withCommonProps = require(Foundation.Utility.withCommonProps)

local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState
local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local useMenuItemVariants = require(script.Parent.useMenuItemVariants)

type MenuItemProps = {
	id: ItemId,
	icon: string?,
	isChecked: boolean?,
	isDisabled: boolean?,
	text: string,
	onActivated: (id: ItemId) -> (),
	size: InputSize,
} & Types.CommonProps

local defaultProps = {
	isChecked = false,
}

local function MenuItem(menuItemProps: MenuItemProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(menuItemProps, defaultProps)
	local tokens = useTokens()

	local cursor = useCursor({
		radius = UDim.new(0, tokens.Radius.Small),
		offset = tokens.Size.Size_200,
		borderWidth = tokens.Stroke.Thicker,
	})

	local variantProps = useMenuItemVariants(tokens, props.size, props.isChecked)

	local onActivated = React.useCallback(function()
		props.onActivated(props.id)
	end, { props.onActivated })

	return React.createElement(
		View,
		withCommonProps(props, {
			GroupTransparency = if props.isDisabled then 0.5 else nil,
			isDisabled = props.isDisabled,
			onActivated = onActivated,
			selection = {
				Selectable = not props.isDisabled,
				SelectionImageObject = cursor,
			},
			tag = variantProps.container.tag,
			ref = ref,
		}),
		{
			Icon = if props.icon
				then React.createElement(Image, {
					LayoutOrder = 1,
					Image = props.icon,
					tag = variantProps.icon.tag,
				})
				else nil,
			Text = React.createElement(Text, {
				LayoutOrder = 2,
				Text = props.text,
				tag = variantProps.text.tag,
			}),
			Check = if props.isChecked
				then React.createElement(Image, {
					LayoutOrder = 3,
					Image = "icons/status/success",
					tag = variantProps.check.tag,
				})
				else nil,
		}
	)
end

return React.memo(React.forwardRef(MenuItem))
