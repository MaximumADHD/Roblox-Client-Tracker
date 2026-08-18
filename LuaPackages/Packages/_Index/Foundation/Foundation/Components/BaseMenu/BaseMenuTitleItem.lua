local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
type ItemId = Types.ItemId
type OnItemActivated = Types.OnItemActivated

local useTokens = require(Foundation.Providers.Style.useTokens)

local withCommonProps = require(Foundation.Utility.withCommonProps)

local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState
local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local useBaseMenuItemVariants = require(script.Parent.useBaseMenuItemVariants)

type BaseMenuTitleItemProps = {
	text: string,
	size: InputSize,
	menuHasLeading: boolean?,
	menuHasCheck: boolean?,
} & Types.CommonProps

local function BaseMenuTitleItem(props: BaseMenuTitleItemProps, ref: React.Ref<GuiObject>?)
	local tokens = useTokens()

	local variantProps = useBaseMenuItemVariants(tokens, props.size, false)
	local menuHasCheck = props.menuHasCheck == true
	local leftPadding = if menuHasCheck
		then (variantProps.container.paddingLeftWithCheck or 0) + (variantProps.title.checkColumnWidth or 0)
		else (variantProps.container.paddingLeftWithoutCheck or 0)
	local rightPadding = variantProps.container.paddingRight or 0

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = `row align-y-center {variantProps.container.tag}`,
			padding = {
				left = UDim.new(0, leftPadding),
				right = UDim.new(0, rightPadding),
			},
			ref = ref,
		}),
		React.createElement(Text, {
			Text = props.text,
			tag = variantProps.title.tag,
		})
	)
end

return React.memo(React.forwardRef(BaseMenuTitleItem))
