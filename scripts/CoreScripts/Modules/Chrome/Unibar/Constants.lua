local CorePackages = game:GetService("CorePackages")
local ReactOtter = require(CorePackages.Packages.ReactOtter)
local UIBlox = require(CorePackages.UIBlox)

type SpringOptions = ReactOtter.SpringOptions
local IconSize = UIBlox.App.ImageSet.Enum.IconSize

return {
	ICON_CELL_WIDTH = 44,
	DIVIDER_CELL_WIDTH = 5,
	ICON_SIZE = 36,
	MENU_ANIMATION_SPRING = {
		dampingRatio = 1.1,
		frequency = 1 / 0.15, -- @150ms size anim
		restingPositionLimit = 0.1,
		restingVelocityLimit = 0.05,
	} :: SpringOptions,
	UNIBAR_KEEP_OUT_AREA_ID = "unibar",

	-- WindowHost constants
	WINDOW_HOST_GUI_NAME = "WindowHost",
	CLOSE_BUTTON_SIZE = UDim2.fromOffset(26, 26),
	CLOSE_ICON_SIZE = IconSize.Small,
	CORNER_RADIUS = UDim.new(0, 8),

	WINDOW_ACTIVE_SECONDS = 2,

	-- the amount of travel to activate a WindowHost from dragging an icon
	DRAG_MAGNITUDE_THRESHOLD = 10,

	DEFAULT_HEIGHT_LARGE = 324,
	DEFAULT_WIDTH_LARGE = 150,
	DEFAULT_HEIGHT = 185,
	DEFAULT_WIDTH = 86,

	MAX_HEIGHT_PORTRAIT = 324,
	MAX_WIDTH_PORTRAIT = 150,
	MAX_HEIGHT_LANDSCAPE = 240,
	MAX_WIDTH_LANDSCAPE = 112,
}
