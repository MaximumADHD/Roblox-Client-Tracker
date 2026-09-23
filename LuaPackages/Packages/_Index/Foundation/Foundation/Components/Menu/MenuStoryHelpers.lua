local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local InputSize = require(Foundation.Enums.InputSize)
local Menu = require(Foundation.Components.Menu)
local OverlayProvider = require(Foundation.Providers.Overlay)
local OverlayStoryAnchor = require(Foundation.Utility.Stories.Shared.OverlayStoryAnchor)
local PopoverAlign = require(Foundation.Enums.PopoverAlign)
local PopoverSide = require(Foundation.Enums.PopoverSide)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

type InputSize = InputSize.InputSize
type MenuItem = Menu.MenuItem
type MenuItems = Menu.MenuItems
type PopoverAlign = PopoverAlign.PopoverAlign
type PopoverSide = PopoverSide.PopoverSide

local SIZE_ORDER: { InputSize } = {
	InputSize.XSmall,
	InputSize.Small,
	InputSize.Medium,
	InputSize.Large,
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

local SAMPLE_ITEMS: { MenuItem } = {
	{ id = "option-1", text = "Option 1" },
	{ id = "option-2", text = "Option 2" },
}

local PAGE_TAG = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0"
local PLAYGROUND_FRAME_SIZE = OverlayStoryAnchor.PLAYGROUND_FRAME_SIZE
local PLAYGROUND_TAG = OverlayStoryAnchor.PLAYGROUND_TAG
local MATRIX_SECTION_TAG = "col gap-large size-full-0 auto-y"

local TALL_ANCHOR_SIZE = OverlayStoryAnchor.TALL_SIZE

--[[
	The stage is its own OverlayProvider, so the panel is clamped to it: too small a stage
	makes the panel flip sides or clip. Sized from what the default payload actually needs
	— BaseMenu holds a 260px minimum width, and two rows plus the panel's own padding fit
	in PANEL_HEIGHT. The anchor is centered, so each side gets the panel plus its clearance
	and the panel never has to flip.
]]
local ANCHOR_HEIGHT = OverlayStoryAnchor.DEFAULT_SIZE.Y.Offset
local PANEL_MIN_WIDTH = 260
local PANEL_HEIGHT = 96
local PANEL_CLEARANCE = 16
local STAGE_WIDTH = PANEL_MIN_WIDTH + 2 * PANEL_CLEARANCE
local STAGE_HEIGHT = ANCHOR_HEIGHT + 2 * (PANEL_CLEARANCE + PANEL_HEIGHT)

-- The readout describes the anchor, so it sits just above it rather than at the top of
-- the stage, clear of the space below where the panel opens.
local OPEN_STATE_GAP = 8
local OPEN_STATE_POSITION = UDim2.new(0.5, 0, 0.5, -(ANCHOR_HEIGHT / 2 + OPEN_STATE_GAP))

export type MenuTargetProps = {
	LayoutOrder: number?,
	items: MenuItems?,
	size: InputSize?,
	width: UDim?,
	maxHeight: number?,
	side: PopoverSide?,
	align: PopoverAlign?,
	anchorSize: UDim2?,
	onActivated: ((id: string | number) -> ())?,
}

local function MenuTarget(props: MenuTargetProps): React.ReactNode
	local isOpen, setIsOpen = React.useState(false)

	return React.createElement(Menu, {
		LayoutOrder = props.LayoutOrder,
		isOpen = isOpen,
		items = props.items or SAMPLE_ITEMS,
		size = props.size,
		width = props.width,
		maxHeight = props.maxHeight,
		side = props.side,
		align = props.align,
		onPressedOutside = function()
			setIsOpen(false)
		end,
		onActivated = function(id)
			if props.onActivated then
				props.onActivated(id)
			end
			setIsOpen(false)
		end,
	}, {
		Anchor = React.createElement(OverlayStoryAnchor.Anchor, {
			Size = props.anchorSize,
			onActivated = function()
				setIsOpen(not isOpen)
			end,
		}),
	})
end

export type MenuStageProps = {
	LayoutOrder: number?,
	items: MenuItems?,
	size: InputSize?,
	width: UDim?,
	maxHeight: number?,
	side: PopoverSide?,
	align: PopoverAlign?,
	hasOpenStateLabel: boolean?,
}

local function MenuStage(props: MenuStageProps): React.ReactNode
	local isOpen, setIsOpen = React.useState(false)
	local stage, setStage = React.useState(nil :: GuiObject?)

	local menu = React.createElement(Menu, {
		isOpen = isOpen,
		items = props.items or SAMPLE_ITEMS,
		size = props.size,
		width = props.width,
		maxHeight = props.maxHeight,
		side = props.side,
		align = props.align,
		onPressedOutside = function()
			setIsOpen(false)
		end,
		onActivated = function()
			setIsOpen(false)
		end,
	}, {
		Anchor = React.createElement(OverlayStoryAnchor.Anchor, {
			onActivated = function()
				setIsOpen(not isOpen)
			end,
		}),
	})

	return React.createElement(View, {
		LayoutOrder = props.LayoutOrder,
		Size = UDim2.fromOffset(STAGE_WIDTH, STAGE_HEIGHT),
		tag = "radius-medium bg-surface-200",
		ref = setStage,
	}, {
		Overlay = if stage
			then React.createElement(OverlayProvider, { gui = stage :: GuiBase2d }, {
				Fill = React.createElement(View, {
					tag = "size-full",
				}, {
					Menu = React.createElement(View, {
						Position = UDim2.fromScale(0.5, 0.5),
						AnchorPoint = Vector2.new(0.5, 0.5),
						tag = "auto-xy",
					}, {
						Content = menu,
					}),
					OpenState = if props.hasOpenStateLabel
						then React.createElement(Text, {
							Text = `isOpen = {isOpen}`,
							tag = "auto-xy text-caption-small content-muted",
							Position = OPEN_STATE_POSITION,
							AnchorPoint = Vector2.new(0.5, 1),
						})
						else nil,
				}),
			})
			else nil,
	})
end

local function headerLabels<T>(values: { T }): { string }
	return Dash.map(values, function(value): string
		return tostring(value)
	end)
end

return {
	ALIGN_ORDER = ALIGN_ORDER,
	MATRIX_SECTION_TAG = MATRIX_SECTION_TAG,
	MenuStage = MenuStage,
	MenuTarget = MenuTarget,
	PAGE_TAG = PAGE_TAG,
	PLAYGROUND_FRAME_SIZE = PLAYGROUND_FRAME_SIZE,
	PLAYGROUND_TAG = PLAYGROUND_TAG,
	SAMPLE_ITEMS = SAMPLE_ITEMS,
	SIDE_ORDER = SIDE_ORDER,
	SIZE_ORDER = SIZE_ORDER,
	TALL_ANCHOR_SIZE = TALL_ANCHOR_SIZE,
	headerLabels = headerLabels,
}
