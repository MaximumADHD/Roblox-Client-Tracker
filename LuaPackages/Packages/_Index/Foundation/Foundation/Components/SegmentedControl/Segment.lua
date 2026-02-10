local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)

local useSegmentedControlVariants = require(script.Parent.useSegmentedControlVariants)

export type Segment = {
	id: Types.ItemId,
	text: string,
}

type SegmentProps = Segment & {
	isActive: boolean,
	onActivated: (id: Types.ItemId) -> (),
	size: InputSize,
} & Types.CommonProps

local function Segment(props: SegmentProps, ref: React.Ref<GuiObject>?)
	local tokens = useTokens()
	local variantProps = useSegmentedControlVariants(tokens, props.size)

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = variantProps.segment.tag,
			onActivated = function()
				props.onActivated(props.id)
			end,
			ref = ref,
		}),
		{
			Text = React.createElement(Text, {
				tag = variantProps.text.tag,
				Text = props.text,
			}),
		}
	)
end

return React.memo(React.forwardRef(Segment))
