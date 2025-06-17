local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local Text = require(Foundation.Components.Text)

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
	onStateChanged: Types.StateChangedCallback,
} & Types.CommonProps

local function Segment(props: SegmentProps)
	local tokens = useTokens()
	local variantProps = useSegmentedControlVariants(tokens, props.size)

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = variantProps.segment.tag,
			onActivated = function()
				props.onActivated(props.id)
			end,
			onStateChanged = props.onStateChanged,
			backgroundStyle = if props.isActive then tokens.Color.Shift.Shift_400 else nil,
		}),
		{
			Text = React.createElement(Text, {
				tag = variantProps.text.tag,
				Text = props.text,
			}),
		}
	)
end

return React.memo(Segment)
