local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local DEFAULT_SIZE = UDim2.fromOffset(88, 36)
local TALL_SIZE = UDim2.fromOffset(88, 64)
local PLAYGROUND_FRAME_SIZE = UDim2.new(1, 0, 0, 240)
local PLAYGROUND_TAG = "row align-x-center align-y-center padding-y-large bg-surface-0"

export type OverlayStoryAnchorProps = {
	LayoutOrder: number?,
	Position: UDim2?,
	AnchorPoint: Vector2?,
	Size: UDim2?,
	label: string?,
	onActivated: (() -> ())?,
}

local function OverlayStoryAnchor(props: OverlayStoryAnchorProps, ref: React.Ref<GuiObject>?): React.ReactNode
	return React.createElement(View, {
		LayoutOrder = props.LayoutOrder,
		Position = props.Position,
		AnchorPoint = props.AnchorPoint,
		Size = props.Size or DEFAULT_SIZE,
		tag = "row align-x-center align-y-center radius-medium bg-shift-200",
		onActivated = props.onActivated,
		ref = ref,
	}, {
		Label = React.createElement(Text, {
			LayoutOrder = 1,
			Text = props.label or "Anchor",
			tag = "auto-xy text-label-small content-emphasis",
		}),
	})
end

return {
	Anchor = React.forwardRef(OverlayStoryAnchor),
	DEFAULT_SIZE = DEFAULT_SIZE,
	TALL_SIZE = TALL_SIZE,
	PLAYGROUND_FRAME_SIZE = PLAYGROUND_FRAME_SIZE,
	PLAYGROUND_TAG = PLAYGROUND_TAG,
}
