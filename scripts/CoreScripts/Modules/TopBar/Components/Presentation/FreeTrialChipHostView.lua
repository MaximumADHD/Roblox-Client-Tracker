local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)

-- FreeTrialTopBarSlot reads these. LayoutOrder and isEmphasis stay unset on this host.
export type SlotProps = {
	LayoutOrder: number?,
	onActivated: (() -> ())?,
	isEmphasis: boolean?,
	maxWidth: number?,
	-- The reveal portal renders outside this frame, so the host's Visible does not reach it.
	-- Nil means the host is showing. A binding covers gamepad and UI-less hides, which do not remount the chip.
	hostVisible: (boolean | React.Binding<boolean>)?,
}

-- React.Tag and React.Change are untyped keys, so one props table gives them a single value type.
type SymbolProp = string | (rbx: GuiObject) -> ()

export type Props = {
	-- Right edge of the chip, in the parent frame.
	position: UDim2,
	-- Width budget. The chip stays on the right edge of this box and may cover controls inside it.
	size: UDim2,
	zIndex: number,
	visible: (boolean | React.Binding<boolean>)?,
	maxWidth: number?,
	onAbsoluteSizeChanged: (rbx: GuiObject) -> (),
	onActivated: () -> (),
	slot: (SlotProps) -> React.ReactNode,
}

local function FreeTrialChipHostView(props: Props): React.ReactNode
	-- createElement's ReactElement does not subtype React.Node.
	return React.createElement("Frame", {
		AnchorPoint = Vector2.new(1, 0),
		BackgroundTransparency = 1,
		Position = props.position,
		Size = props.size,
		Visible = props.visible,
		ZIndex = props.zIndex,
		[React.Tag] = "data-testid=FreeTrialChipHost" :: SymbolProp,
		[React.Change.AbsoluteSize] = props.onAbsoluteSizeChanged :: SymbolProp,
	}, {
		-- Anchor the slot to this frame's right edge so a short chip still sits on the screen edge.
		Align = React.createElement("Frame", {
			AnchorPoint = Vector2.new(1, 0),
			AutomaticSize = Enum.AutomaticSize.XY,
			BackgroundTransparency = 1,
			Position = UDim2.fromScale(1, 0),
			Size = UDim2.fromOffset(0, 0),
		}, {
			Slot = React.createElement(props.slot, {
				onActivated = props.onActivated,
				maxWidth = props.maxWidth,
				hostVisible = props.visible,
			}),
		}),
	}) :: React.ReactNode
end

return FreeTrialChipHostView
