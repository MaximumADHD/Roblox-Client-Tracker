local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local StatusBadgeShape = require(Foundation.Enums.StatusBadgeShape)
type StatusBadgeShape = StatusBadgeShape.StatusBadgeShape
local StatusBadgeSize = require(Foundation.Enums.StatusBadgeSize)
type StatusBadgeSize = StatusBadgeSize.StatusBadgeSize
local StatusBadgeVariant = require(Foundation.Enums.StatusBadgeVariant)
type StatusBadgeVariant = StatusBadgeVariant.StatusBadgeVariant

local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local useScaledValue = require(Foundation.Utility.useScaledValue)
local useStatusBadgeVariants = require(script.Parent.useStatusBadgeVariants)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local MAX_CONTENT_WIDTH = 200

export type StatusBadgeProps = {
	text: string,
	variant: StatusBadgeVariant?,
	shape: StatusBadgeShape?,
	size: StatusBadgeSize?,
} & Types.CommonProps

local defaultProps = {
	variant = StatusBadgeVariant.Standard,
	shape = StatusBadgeShape.Utility,
	size = StatusBadgeSize.Small,
	testId = "--foundation-status-badge",
}

local function StatusBadge(statusBadgeProps: StatusBadgeProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(statusBadgeProps, defaultProps)
	local tokens = useTokens()
	local variantProps = useStatusBadgeVariants(tokens, props.variant, props.shape, props.size)
	local maxWidth = useScaledValue(MAX_CONTENT_WIDTH)

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = variantProps.container.tag,
			ref = ref,
		}),
		{
			Content = React.createElement(View, {
				tag = variantProps.content.tag,
				layout = if variantProps.content.gap
					then {
						FillDirection = Enum.FillDirection.Horizontal,
						Padding = UDim.new(0, variantProps.content.gap),
					}
					else nil,
				LayoutOrder = 1,
				testId = `{props.testId}--content`,
			}, {
				StatusLight = React.createElement(View, {
					tag = variantProps.statusLight.tag,
					LayoutOrder = 1,
					testId = `{props.testId}--status-light`,
				}, {
					Dot = React.createElement(View, {
						tag = variantProps.dot.tag,
						LayoutOrder = 1,
						testId = `{props.testId}--dot`,
					}),
				}),
				Text = React.createElement(Text, {
					Text = props.text,
					tag = variantProps.text.tag,
					textStyle = variantProps.text.style,
					LayoutOrder = 2,
					sizeConstraint = {
						MaxSize = Vector2.new(maxWidth, math.huge),
					},
					testId = `{props.testId}--text`,
				}),
			}),
		}
	)
end

return React.memo(React.forwardRef(StatusBadge))
