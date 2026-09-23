local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local OverlayProvider = require(Foundation.Providers.Overlay)
local OverlayStoryAnchor = require(Foundation.Utility.Stories.Shared.OverlayStoryAnchor)
local Popover = require(Foundation.Components.Popover)
local PopoverAlign = require(Foundation.Enums.PopoverAlign)
local PopoverSide = require(Foundation.Enums.PopoverSide)
local Radius = require(Foundation.Enums.Radius)
local SurfacePresets = require(Foundation.Utility.Stories.Shared.SurfacePresets)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local useMeasurableRef = require(Foundation.Components.Popover.useMeasurableRef)
local useTokens = require(Foundation.Providers.Style.useTokens)

type PopoverAlign = PopoverAlign.PopoverAlign
type PopoverSide = PopoverSide.PopoverSide

-- Not exported: `useFloating` already exports these names, and Utilities requires every
-- exported type name in the workspace to be unique.
type SideConfig = PopoverSide | { position: PopoverSide, offset: number }
type AlignConfig = PopoverAlign | { position: PopoverAlign, offset: number }
export type PopoverContentRadius = typeof(Radius.Small) | typeof(Radius.Medium) | typeof(Radius.Circle)

-- Which arm of `Popover.Anchor.anchorRef` a stage passes. `StoryControls` cannot hold a
-- ref, so pages drive this by name and the stage maps it onto the real prop.
export type AnchorSource = "Children" | "ExternalRef" | "VirtualRef"

local ANCHOR_SOURCE_CHILDREN: AnchorSource = "Children"
local ANCHOR_SOURCE_EXTERNAL_REF: AnchorSource = "ExternalRef"
local ANCHOR_SOURCE_VIRTUAL_REF: AnchorSource = "VirtualRef"

local ANCHOR_SOURCE_ORDER: { AnchorSource } = {
	ANCHOR_SOURCE_CHILDREN,
	ANCHOR_SOURCE_EXTERNAL_REF,
	ANCHOR_SOURCE_VIRTUAL_REF,
}

local SIDE_ORDER: { PopoverSide } = {
	PopoverSide.Top,
	PopoverSide.Bottom,
	PopoverSide.Left,
	PopoverSide.Right,
}

local ALIGN_ORDER: { PopoverAlign } = {
	PopoverAlign.Start,
	PopoverAlign.Center,
	PopoverAlign.End,
}

local RADIUS_ORDER: { PopoverContentRadius } = {
	Radius.Small,
	Radius.Medium,
	Radius.Circle,
}

--[[
	`Popover.Content` has one open slot and no size prop, so occupancy is what a caller
	varies: the panel is whatever its children measure. Named after the slots each cell
	mounts rather than a product the panel might be.
]]
local COMPOSITION_BODY = "Body"
local COMPOSITION_TITLE_BODY = "Title + body"
local COMPOSITION_FULL = "Title + body + actions"

local COMPOSITION_ORDER: { string } = {
	COMPOSITION_BODY,
	COMPOSITION_TITLE_BODY,
	COMPOSITION_FULL,
}

local BACKGROUND_PRESET_DEFAULT = "Default"
--[[
	The non-surface arm, showing that any `ColorStyle` is accepted rather than a surface
	from the same ramp. `ActionEmphasis.Background` is opaque; the `ActionAlert` one is a
	0.88-transparency tint meant to sit under alert content, so a panel filled with it is
	indistinguishable from the default.
]]
local BACKGROUND_PRESET_EMPHASIS = "ActionEmphasis"

-- Surface_100 is the panel's own default and Surface_200 is the stage fill, so neither
-- would read as a distinct cell. Curated rather than `SURFACE_PRESET_ORDER`.
local BACKGROUND_PRESET_ORDER: { string } = {
	BACKGROUND_PRESET_DEFAULT,
	"Surface_0",
	"Surface_300",
	BACKGROUND_PRESET_EMPHASIS,
}

local OFFSET_OPTIONS: { number } = { 0, 8, 16, 32 }
--[[
	A side offset reads against the gap the panel already reserves for the arrow, so a small
	one is legible. An align offset slides the panel along the anchor's own width, where the
	same value is easy to mistake for the default — it takes more than half a panel width to
	be unmistakable.
]]
local SIDE_OFFSET_EXAMPLE = 16
local ALIGN_OFFSET_EXAMPLE = 32

--[[
	An `align` sweep needs the tall anchor: alignment shifts the panel by half the
	difference between anchor and panel along the cross axis, so an anchor the size of the
	panel renders three identical cells and a shorter one steps it by a couple of pixels.
	Anything not sweeping `align` uses the default, which matches the tooltip pages.
]]
local TALL_ANCHOR_SIZE = OverlayStoryAnchor.TALL_SIZE

--[[
	One panel size everywhere, large enough that the widest corner radius still leaves
	straight edge between the corners. Every stage measure below is derived from it, so a
	panel that grows cannot silently start clamping inside a cell.
]]
local PANEL_WIDTH = 160
local PANEL_HEIGHT = 96

-- A composed panel is bounded by its own children instead, since `Popover.Content` has no
-- size prop. Slot heights differ so the blocks read as distinct slots rather than a stack.
local COMPOSED_PANEL_WIDTH = 240
local SLOT_TITLE_HEIGHT = 20
local SLOT_BODY_HEIGHT = 56
local SLOT_ACTIONS_HEIGHT = 32
-- What the panel keeps between itself and the anchor: the arrow, plus its own shadow.
local PANEL_CLEARANCE = 24

--[[
	A stage has to hold the panel on whichever side it opens, since a cell that clamps or
	flips stops being comparable with its neighbours. The anchor is centered, so a side
	needs half the anchor plus clearance plus the panel. Only the playground sweeps `side`,
	and only it pays for the width that Left and Right cost.
]]
local STAGE_WIDTH = 280
local STAGE_HEIGHT = TALL_ANCHOR_SIZE.Y.Offset + 2 * (PANEL_CLEARANCE + PANEL_HEIGHT)
local WIDE_STAGE_WIDTH = TALL_ANCHOR_SIZE.X.Offset + 2 * (PANEL_CLEARANCE + PANEL_WIDTH)

local TARGET_WIDTH = 120
local TARGET_HEIGHT = 52
local TARGET_SIZE = UDim2.fromOffset(TARGET_WIDTH, TARGET_HEIGHT)
local VIRTUAL_ANCHOR_SIZE = Vector2.new(TARGET_WIDTH, TARGET_HEIGHT)

local TARGET_INSTANCE_TEXT = "Target (instance)"
local TARGET_VIRTUAL_TEXT = "Target (virtual)"
local PANEL_TEXT = "Panel"

--[[
	Whatever the panel tracks sits at the middle of the stage, so the panel opens into
	the same free space in every arm and columns stay comparable. When the tracked rect
	is not the trigger, the trigger moves to a corner: the panel lands just outside the
	rect it tracks, so anything adjacent to that rect is where the panel would land.
]]
local CENTER_POSITION = UDim2.fromScale(0.5, 0.5)
local CENTER_ANCHOR_POINT = Vector2.new(0.5, 0.5)
local CORNER_POSITION = UDim2.fromOffset(12, 12)
local CORNER_ANCHOR_POINT = Vector2.zero
-- The readout describes the trigger, so it sits directly above it, clear of the free
-- space below where the panel opens in the default placement.
local OPEN_STATE_GAP = 8
local OPEN_STATE_POSITION = UDim2.new(0.5, 0, 0.5, -(TALL_ANCHOR_SIZE.Y.Offset / 2 + OPEN_STATE_GAP))
local OPEN_STATE_ANCHOR_POINT = Vector2.new(0.5, 1)

local PAGE_TAG = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0"
-- Same frame as the tooltip and menu playgrounds: full width, centered, on surface-0.
-- Only the height differs, because a Popover playground centers a bounded stage rather
-- than a bare anchor, and the stage has to hold the panel on whichever side it opens.
local PLAYGROUND_TAG = OverlayStoryAnchor.PLAYGROUND_TAG
local PLAYGROUND_FRAME_SIZE = UDim2.new(1, 0, 0, STAGE_HEIGHT)
local MATRIX_SECTION_TAG = "col gap-large size-full-0 auto-y"
local STAGE_TAG = "radius-medium bg-surface-200"
local STAGE_FILL_TAG = "size-full"
local TARGET_TAG = "row align-x-center align-y-center radius-medium stroke-neutral bg-surface-300"

type PopoverPanelProps = {
	label: string?,
}

--[[
	Placement is left unset in the children arm: there `Popover.Anchor` wraps the trigger
	in its own `auto-xy` View, and offsetting the child inside it collapses that wrapper
	to half the trigger's size and drags the trigger out of the stage.
]]
--[[
	The rect the panel tracks in the `anchorRef` arms. Deliberately not the trigger: that
	arm exists so the panel can follow something other than what the caller presses, and
	a ref on the trigger itself renders the same cell as the children arm.

	In the virtual arm there is no instance to point at, so this box is a fixture drawn
	at the same rect the caller handed the component rather than the anchor itself.
]]
local function AnchorTarget(props: {
	label: string,
	instanceRef: React.Ref<GuiObject>?,
}): React.ReactNode
	return React.createElement(View, {
		Position = CENTER_POSITION,
		AnchorPoint = CENTER_ANCHOR_POINT,
		Size = TARGET_SIZE,
		tag = TARGET_TAG,
		ref = props.instanceRef,
	}, {
		Label = React.createElement(Text, {
			LayoutOrder = 1,
			Text = props.label,
			tag = "auto-xy text-caption-small text-align-x-center content-muted",
		}),
	})
end

--[[
	Labeled placeholder for `Popover.Content`'s children slot. One fixed size across every
	page, so a cell that varies something else is the only thing that changed.
]]
local function PopoverPanel(props: PopoverPanelProps): React.ReactNode
	return React.createElement(View, {
		tag = "row align-x-center align-y-center padding-small",
		Size = UDim2.fromOffset(PANEL_WIDTH, PANEL_HEIGHT),
	}, {
		Label = React.createElement(Text, {
			LayoutOrder = 1,
			Text = props.label or PANEL_TEXT,
			tag = "auto-xy text-caption-small text-align-x-center content-default",
		}),
	})
end

--[[
	One labeled block of a composed panel, standing in for whatever a caller puts in that
	slot. A real title, paragraph, and button row would put the review on those components
	instead of on the occupancy the cell exists to show.
]]
local function PanelSlot(props: {
	LayoutOrder: number,
	label: string,
	height: number,
}): React.ReactNode
	return React.createElement(View, {
		LayoutOrder = props.LayoutOrder,
		Size = UDim2.new(1, 0, 0, props.height),
		tag = "row align-x-center align-y-center radius-small bg-shift-200",
	}, {
		Label = React.createElement(Text, {
			LayoutOrder = 1,
			Text = props.label,
			tag = "auto-xy text-caption-small content-muted",
		}),
	})
end

--[[
	The children a composition cell hands `Popover.Content`. The panel has no size prop,
	so this wrapper's own width is the only thing bounding it.
]]
local function makePanelChildren(composition: string): React.ReactNode
	local hasTitle = composition ~= COMPOSITION_BODY
	local hasActions = composition == COMPOSITION_FULL

	return React.createElement(View, {
		tag = "col gap-small auto-y padding-medium",
		Size = UDim2.fromOffset(COMPOSED_PANEL_WIDTH, 0),
	}, {
		Title = if hasTitle
			then React.createElement(PanelSlot, { LayoutOrder = 1, label = "Title", height = SLOT_TITLE_HEIGHT })
			else nil,
		Body = React.createElement(PanelSlot, { LayoutOrder = 2, label = "Body", height = SLOT_BODY_HEIGHT }),
		Actions = if hasActions
			then React.createElement(PanelSlot, { LayoutOrder = 3, label = "Actions", height = SLOT_ACTIONS_HEIGHT })
			else nil,
	})
end

--[[
	Top-left of a `size`-sized rect centered in `stage`, for the virtual-anchor arm.
	`useMeasurableRef` takes screen coordinates and `positioning` subtracts the overlay
	origin again, so a rect placed here coincides with the box the story draws.
]]
local function useCenteredRect(stage: GuiObject?, size: Vector2): Vector2
	local position, setPosition = React.useState(Vector2.zero)

	React.useEffect(function()
		if stage == nil then
			return
		end

		local function update()
			setPosition(stage.AbsolutePosition + (stage.AbsoluteSize - size) / 2)
		end

		update()
		local positionConnection = stage:GetPropertyChangedSignal("AbsolutePosition"):Connect(update)
		local sizeConnection = stage:GetPropertyChangedSignal("AbsoluteSize"):Connect(update)

		return function()
			positionConnection:Disconnect()
			sizeConnection:Disconnect()
		end
	end, { stage, size } :: { unknown })

	return position
end

export type PopoverStageProps = {
	LayoutOrder: number?,
	width: number?,
	height: number?,
	anchorSize: UDim2?,
	anchorSource: AnchorSource?,
	side: SideConfig?,
	align: AlignConfig?,
	hasArrow: boolean?,
	radius: PopoverContentRadius?,
	backgroundStyle: Types.ColorStyle?,
	hasOutsidePressDismiss: boolean?,
	hasOpenStateLabel: boolean?,
}

--[[
	One trigger-gated popover in a bounded frame.

	The frame is the stage's own `OverlayProvider` gui, so the panel is positioned and
	clamped against the cell rather than the story viewport. Without that, a cell near a
	viewport edge would flip sides and matrix columns would stop being comparable.

	The frame itself carries no layout, because `Popover.Content` portals into it and a
	`UIListLayout` there would override the position the component computed.
]]
local function PopoverStage(props: PopoverStageProps): React.ReactNode
	local isOpen, setIsOpen = React.useState(false)
	local stage, setStage = React.useState(nil :: GuiObject?)
	local anchorSource = props.anchorSource or ANCHOR_SOURCE_CHILDREN
	local targetRef = React.useRef(nil)
	local virtualRect = useCenteredRect(stage, VIRTUAL_ANCHOR_SIZE)
	local virtualRef = useMeasurableRef(virtualRect, VIRTUAL_ANCHOR_SIZE)

	local anchorRef: any? = if anchorSource == ANCHOR_SOURCE_EXTERNAL_REF
		then targetRef
		elseif anchorSource == ANCHOR_SOURCE_VIRTUAL_REF then virtualRef
		else nil

	local trigger = React.createElement(OverlayStoryAnchor.Anchor, {
		Position = if anchorRef then CORNER_POSITION else nil,
		AnchorPoint = if anchorRef then CORNER_ANCHOR_POINT else nil,
		Size = props.anchorSize,
		onActivated = function()
			setIsOpen(not isOpen)
		end,
	})

	local popover = React.createElement(Popover.Root, { isOpen = isOpen }, {
		Anchor = if anchorRef
			then React.createElement(Popover.Anchor, { anchorRef = anchorRef })
			else React.createElement(Popover.Anchor, {
				Position = CENTER_POSITION,
				AnchorPoint = CENTER_ANCHOR_POINT,
			}, { Anchor = trigger }),
		Content = React.createElement(Popover.Content, {
			side = props.side,
			align = props.align,
			hasArrow = props.hasArrow,
			radius = props.radius,
			backgroundStyle = props.backgroundStyle,
			onPressedOutside = if props.hasOutsidePressDismiss
				then function()
					setIsOpen(false)
				end
				else nil,
		}, React.createElement(PopoverPanel, {})),
	})

	local stageChildren: { [string]: React.ReactNode } = {
		Target = if anchorSource == ANCHOR_SOURCE_EXTERNAL_REF
			then React.createElement(AnchorTarget, { label = TARGET_INSTANCE_TEXT, instanceRef = targetRef })
			elseif anchorSource == ANCHOR_SOURCE_VIRTUAL_REF then React.createElement(
				AnchorTarget,
				{ label = TARGET_VIRTUAL_TEXT }
			)
			else nil,
		Popover = popover,
		Trigger = if anchorRef then trigger else nil,
		OpenState = if props.hasOpenStateLabel
			then React.createElement(Text, {
				Text = `isOpen = {isOpen}`,
				tag = "auto-xy text-caption-small content-muted",
				Position = OPEN_STATE_POSITION,
				AnchorPoint = OPEN_STATE_ANCHOR_POINT,
			})
			else nil,
	}

	return React.createElement(View, {
		tag = STAGE_TAG,
		Size = UDim2.fromOffset(props.width or STAGE_WIDTH, props.height or STAGE_HEIGHT),
		LayoutOrder = props.LayoutOrder,
		ref = setStage,
	}, {
		Overlay = if stage
			then React.createElement(OverlayProvider, { gui = stage :: GuiBase2d }, {
				Fill = React.createElement(View, {
					tag = STAGE_FILL_TAG,
				}, stageChildren),
			})
			else nil,
	})
end

export type PopoverTargetProps = {
	LayoutOrder: number?,
	anchorSize: UDim2?,
	-- What the panel holds. Defaults to the fixed placeholder every other page uses.
	panel: React.ReactNode?,
	side: SideConfig?,
	align: AlignConfig?,
	hasArrow: boolean?,
	radius: PopoverContentRadius?,
	backgroundStyle: Types.ColorStyle?,
}

--[[
	A trigger-gated popover with no frame of its own, so a cell is only as large as the
	trigger and the panel opens over the page. A cell near the viewport edge can therefore
	flip to the opposite side — the trade the tooltip pages already make for a grid that
	reads at a glance. Use `PopoverStage` where the panel has to be clamped to its cell.
]]
local function PopoverTarget(props: PopoverTargetProps): React.ReactNode
	local isOpen, setIsOpen = React.useState(false)

	return React.createElement(Popover.Root, { isOpen = isOpen }, {
		Anchor = React.createElement(Popover.Anchor, { LayoutOrder = props.LayoutOrder }, {
			Anchor = React.createElement(OverlayStoryAnchor.Anchor, {
				Size = props.anchorSize,
				onActivated = function()
					setIsOpen(not isOpen)
				end,
			}),
		}),
		Content = React.createElement(Popover.Content, {
			side = props.side,
			align = props.align,
			hasArrow = props.hasArrow,
			radius = props.radius,
			backgroundStyle = props.backgroundStyle,
			onPressedOutside = function()
				setIsOpen(false)
			end,
		}, props.panel or React.createElement(PopoverPanel, {})),
	})
end

--[[
	`columnHeaders` is an invariant `{ string }`, so a typed enum array cannot be passed
	through and cannot be cast. Copying each member is the only way across.
]]
local function headerLabels<T>(values: { T }): { string }
	return Dash.map(values, function(value): string
		return tostring(value)
	end)
end

local function useBackgroundStylePreset(preset: string): Types.ColorStyle?
	local tokens = useTokens()
	if preset == BACKGROUND_PRESET_EMPHASIS then
		return tokens.Color.ActionEmphasis.Background
	end
	return SurfacePresets.resolveSurfacePreset(tokens, preset)
end

return {
	ANCHOR_SOURCE_CHILDREN = ANCHOR_SOURCE_CHILDREN,
	ANCHOR_SOURCE_EXTERNAL_REF = ANCHOR_SOURCE_EXTERNAL_REF,
	ANCHOR_SOURCE_VIRTUAL_REF = ANCHOR_SOURCE_VIRTUAL_REF,
	ANCHOR_SOURCE_ORDER = ANCHOR_SOURCE_ORDER,
	SIDE_ORDER = SIDE_ORDER,
	ALIGN_ORDER = ALIGN_ORDER,
	RADIUS_ORDER = RADIUS_ORDER,
	COMPOSITION_ORDER = COMPOSITION_ORDER,
	makePanelChildren = makePanelChildren,
	BACKGROUND_PRESET_DEFAULT = BACKGROUND_PRESET_DEFAULT,
	BACKGROUND_PRESET_EMPHASIS = BACKGROUND_PRESET_EMPHASIS,
	BACKGROUND_PRESET_ORDER = BACKGROUND_PRESET_ORDER,
	OFFSET_OPTIONS = OFFSET_OPTIONS,
	SIDE_OFFSET_EXAMPLE = SIDE_OFFSET_EXAMPLE,
	ALIGN_OFFSET_EXAMPLE = ALIGN_OFFSET_EXAMPLE,
	STAGE_WIDTH = STAGE_WIDTH,
	STAGE_HEIGHT = STAGE_HEIGHT,
	WIDE_STAGE_WIDTH = WIDE_STAGE_WIDTH,
	TALL_ANCHOR_SIZE = TALL_ANCHOR_SIZE,
	PAGE_TAG = PAGE_TAG,
	PLAYGROUND_FRAME_SIZE = PLAYGROUND_FRAME_SIZE,
	PLAYGROUND_TAG = PLAYGROUND_TAG,
	MATRIX_SECTION_TAG = MATRIX_SECTION_TAG,
	PopoverStage = PopoverStage,
	PopoverTarget = PopoverTarget,
	headerLabels = headerLabels,
	useBackgroundStylePreset = useBackgroundStylePreset,
}
