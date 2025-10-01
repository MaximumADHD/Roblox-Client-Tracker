local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local View = require(Foundation.Components.View)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
type ItemId = Types.ItemId
type OnItemActivated = Types.OnItemActivated

local useTokens = require(Foundation.Providers.Style.useTokens)

local withCommonProps = require(Foundation.Utility.withCommonProps)

local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState
local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local useMenuItemVariants = require(script.Parent.useMenuItemVariants)

type MenuTitleItemProps = {
	text: string,
	size: InputSize,
} & Types.CommonProps

local function MenuTitleItem(props: MenuTitleItemProps, ref: React.Ref<GuiObject>?)
	local tokens = useTokens()

	local variantProps = useMenuItemVariants(tokens, props.size, false)

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = variantProps.container.tag,
			ref = ref,
		}),
		React.createElement(Text, {
			Text = props.text,
			tag = variantProps.title.tag,
		})
	)
end

return React.memo(React.forwardRef(MenuTitleItem))
