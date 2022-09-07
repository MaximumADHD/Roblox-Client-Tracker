local Navigation = script.Parent.Parent
local App = Navigation.Parent
local UIBlox = App.Parent
local IconSize = require(UIBlox.App.ImageSet.Enum.IconSize)
local Images = require(App.ImageSet.Images)
local getIconSize = require(UIBlox.App.ImageSet.getIconSize)

local BAR_SIZE = 56
local SHADOW_SIZE = 72
local BOTTOM_TEXT_PADDING = 4
local TEXT_LINE_HEIGHT = 12
local ICON_SIZE = getIconSize(IconSize.Medium)

local Constants = {
	-- IABottomBar Constants
	SPRING_OPTIONS = {
		frequency = 3,
	},

	BAR_SIZE = BAR_SIZE,
	BOTTOM_TEXT_PADDING = BOTTOM_TEXT_PADDING,
	TEXT_LINE_HEIGHT = TEXT_LINE_HEIGHT,

	-- interactable area of each item in nav bar (Y is bigger than X due to text)
	ITEM_SIZE_X = BAR_SIZE,
	ITEM_SIZE_Y = BAR_SIZE + BOTTOM_TEXT_PADDING + TEXT_LINE_HEIGHT, -- add text height to make it clickable
	SHADOW_SIZE = SHADOW_SIZE, -- drop shadow takes up 72px of horizontal/vertical space. must account for this when calculating padding

	ICON_SIZE_X = ICON_SIZE,
	ICON_SIZE_Y = ICON_SIZE,
	ICON_TRANSPARENCY = 0,
	ICON_TRANSPARENCY_HOVERED = 0.5,
	BADGE_POSITION_X = 18,
	BADGE_POSITION_Y = -2,
	EMPTY_BADGE_POSITION_X = 22,
	EMPTY_BADGE_POSITION_Y = 2,

	DEFAULT_NAV_HEIGHT = 114,

	NAVBAR_CORNER_RADIUS = 40,

	-- design spec specifies different padding for smaller screen sizes. this is the breakpoint for that different padding
	SMALL_BREAKPOINT = 350,

	-- padding on left and right of the entire navbar. to give adequate room for the drop shadow, we account for its size in the padding since shadow space is essentially padding.
	-- we never want padding to be < 0
	ENITRE_BAR_PADDING_HORIZONTAL = math.max(0, 12 - (SHADOW_SIZE - BAR_SIZE) / 2), -- divided by 2 because padding only has shadow on 1 side
	ENITRE_BAR_PADDING_HORIZONTAL_SMALL = math.max(0, 10 - (SHADOW_SIZE - BAR_SIZE) / 2), -- small equivalent for above screen size

	-- padding on left and right of the middle capsule bar. to give adequate room for the drop shadow, we account for its size in the padding since shadow space is essentially padding.
	-- we never want padding to be < 0
	MIDDLE_BAR_PADDING_HORIZONTAL = math.max(0, 20 - (SHADOW_SIZE - BAR_SIZE)), -- not divided by 2 because padding has shadow on both sides
	MIDDLE_BAR_PADDING_HORIZONTAL_SMALL = math.max(0, 10 - (SHADOW_SIZE - BAR_SIZE)), -- small equivalent for above screen size

	-- padding above the entire nav bar. drop shadow space might already add top padding so account for it if it does
	TOP_PADDING_ENTIRE_BAR = math.max(0, 8 - (SHADOW_SIZE - BAR_SIZE) / 2), -- divided by 2 because drop shadow is only below it

	TEXT_SIZE = 10, -- Actual TextSize passed into TextLabel
	TEXT_SIZE_SMALL = 8, -- show smaller text when it wouldn't horizontally fit normally

	MIN_ITEMS = 5, -- the absolute minimum number of icons we want to show so essential actions don't get cutoff

	DROP_SHADOW_CONSTS = {
		IMAGE = Images["component_assets/dropshadow_56_8"],
		SLICE_CENTER = Rect.new(35, 35, 37, 37),
	},

	RIPPLE_CONSTS = {
		State1 = { Size = 4, Transparency = 1 },
		State2 = { Size = 12, Transparency = 0.7 },
		State3 = { Size = 48, Transparency = 0 },
		State4 = { Size = 70, Transparency = 1 },
	},
}

return table.freeze(Constants)
