local Tooltip = script.Parent
local Dialog = Tooltip.Parent
local App = Dialog.Parent

local Types = require(Tooltip.Types)
local TooltipOrientation = require(Dialog.Tooltip.Enum.TooltipOrientation)
local Images = require(App.ImageSet.Images)

local CARET_SIZE = UDim2.fromOffset(16, 8)
local CARET_DISTANCE = 4
-- subtract one to avoid a pixel gap between the caret and the box (could use border, but UICorner prevents that)
local CONTENT_TO_CARET_TIP = CARET_SIZE.Y.Offset - 1

local INACTIVE_ANIMATION_TARGETS: Types.AnimationValues = {
	-- tooltip starts 4px closer to trigger point
	distanceOffset = -4,
	transparency = 1,
}

local ACTIVE_ANIMATION_TARGETS: Types.AnimationValues = {
	distanceOffset = 0,
	transparency = 0,
}

export type DropShadowConsts = {
	IMAGE: Images.ImageSetImage,
	SLICE_CENTER: Rect,
	-- hopefully eventually enums play better with luau
	OFFSET: {
		[any]: number,
	},
}

local SMALL_DROPSHADOW_CONSTS: DropShadowConsts = {
	IMAGE = Images["component_assets/dropshadow_17_4"],
	SLICE_CENTER = Rect.new(12, 12, 13, 13),
	OFFSET = {
		[TooltipOrientation.Top] = 2,
		[TooltipOrientation.Bottom] = 6,
		[TooltipOrientation.Right] = 4,
		[TooltipOrientation.Left] = 4,
	},
}

local LARGE_DROPSHADOW_CONSTS: DropShadowConsts = {
	IMAGE = Images["component_assets/dropshadow_17_16"],
	SLICE_CENTER = Rect.new(36, 36, 37, 37),
	OFFSET = {
		[TooltipOrientation.Top] = 28,
		[TooltipOrientation.Bottom] = 28,
		[TooltipOrientation.Right] = 28,
		[TooltipOrientation.Left] = 28,
	},
}

local Constants = {
	-- TOOLTIP CONSTANTS
	-- default padding in tooltip box
	DEFAULT_PADDING = 12,
	-- default padding between list items
	DEFAULT_LIST_PADDING = 8,
	-- corner radius
	CORNER_RADIUS = UDim.new(0, 8),
	-- istance from edge of trigger point to tip of caret
	CARET_DISTANCE = CARET_DISTANCE,
	-- distance from the edge of the content to the tip of the caret
	CONTENT_TO_CARET_TIP = CONTENT_TO_CARET_TIP,
	-- distance from edge of content to center of caret
	CONTENT_TO_CARET_CENTER = CONTENT_TO_CARET_TIP - CARET_SIZE.Y.Offset / 2,
	-- maximum tooltip box width
	MAX_WIDTH = 240,
	-- padding between hotkeys
	HOTKEY_PADDING = 6,
	-- caret image (for Top orientation, other orientations rotate this)
	CARET_IMAGE = Images["component_assets/triangleDown_16"],
	-- rotation to apply to caret image based on orientation
	CARET_ROTATION = {
		[TooltipOrientation.Top] = 0,
		[TooltipOrientation.Bottom] = 180,
		[TooltipOrientation.Right] = 90,
		[TooltipOrientation.Left] = 270,
	},
	-- size of caret image
	CARET_SIZE = CARET_SIZE,

	-- dropshadow constants
	DropShadow = {
		Small = SMALL_DROPSHADOW_CONSTS,
		Large = LARGE_DROPSHADOW_CONSTS,
	},

	-- SHARED CONSTANTS
	-- unit vector in the direction of each orientation
	ORIENTATION_VECTOR = {
		[TooltipOrientation.Top] = Vector2.new(0, -1),
		[TooltipOrientation.Bottom] = Vector2.new(0, 1),
		[TooltipOrientation.Left] = Vector2.new(-1, 0),
		[TooltipOrientation.Right] = Vector2.new(1, 0),
	},
	-- the opposit orientation to any given orientation
	OPPOSITE_ORIENTATION = {
		[TooltipOrientation.Top] = TooltipOrientation.Bottom,
		[TooltipOrientation.Bottom] = TooltipOrientation.Top,
		[TooltipOrientation.Right] = TooltipOrientation.Left,
		[TooltipOrientation.Left] = TooltipOrientation.Right,
	},
	-- distance from the edge of the trigger point to the edge of the tooltip box
	DISTANCE_TO_CONTENT = CARET_DISTANCE + CONTENT_TO_CARET_TIP,

	-- TOOLTIP CONTROLLER CONSTANTS
	-- min distance from tooltip to edge of screen
	SCREEN_MARGIN = 12,
	-- minimum lateral distance between the edge of the content box and the middle of the caret
	MIN_DISTANCE_TO_CARET_MIDDLE = 12 + CARET_SIZE.X.Offset / 2,
	-- animation targets when the tooltip is inactive
	INACTIVE_ANIMATION_TARGETS = INACTIVE_ANIMATION_TARGETS,
	-- animation targets when the tooltip is active
	ACTIVE_ANIMATION_TARGETS = ACTIVE_ANIMATION_TARGETS,
	-- animation options for withAnimation
	ANIMATION_OPTIONS = {
		frequency = 1 / 0.2,
	},

	-- HOVERCONTROLLER CONSTANTS
	-- default delay time (seconds)
	DEFAULT_DELAY_TIME = 0.4,
}

return table.freeze(Constants)
