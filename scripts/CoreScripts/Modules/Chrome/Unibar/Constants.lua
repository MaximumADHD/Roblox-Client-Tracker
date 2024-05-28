local CorePackages = game:GetService("CorePackages")
local ReactOtter = require(CorePackages.Packages.ReactOtter)
local UIBlox = require(CorePackages.UIBlox)

type SpringOptions = ReactOtter.SpringOptions
local IconSize = UIBlox.App.ImageSet.Enum.IconSize

local InputTypes = {
	MouseAndKeyboard = "MouseAndKeyboard",
	Touch = "Touch",
	Gamepad = "Gamepad",
}

local ScreenOrientations = {
	Landscape = "Landscape",
	Portrait = "Portrait",
	Sensor = "Sensor",
}

return {
	ICON_CELL_WIDTH = 44,
	DIVIDER_CELL_WIDTH = 5,
	ICON_SIZE = 36,
	SUB_MENU_ROW_HEIGHT = 56,
	PIN_ICON_SIZE = UDim2.new(0, 18, 0, 18),
	PIN_BUTTON_SIZE = 40,
	PIN_RIGHT_PADDING = 13,
	NEW_BADGE_SIZE = 66,
	MENU_ANIMATION_SPRING = {
		dampingRatio = 1.1,
		frequency = 1 / 0.15, -- @150ms size anim
		restingPositionLimit = 0.1,
		restingVelocityLimit = 0.05,
	} :: SpringOptions,
	UNIBAR_KEEP_OUT_AREA_ID = "unibar",

	-- WindowHost constants
	WINDOW_HOST_GUI_NAME = "WindowHost",
	CLOSE_BUTTON_FRAME = UDim2.fromOffset(44, 44),
	CLOSE_BUTTON_SIZE = UDim2.fromOffset(22, 22),
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

	HEALTH = {
		RED = Color3.fromRGB(255, 28, 0),
		YELLOW = Color3.fromRGB(250, 235, 0),
		GREEN = Color3.fromRGB(27, 252, 107),
		RED_THRESHOLD = 0.1,
		YELLOW_THRESHOLD = 0.5,
		GREEN_THRESHOLD = 0.8,
	},

	ANALYTICS = {
		SCREEN_ORIENTATION_MAP = {
			[Enum.ScreenOrientation.LandscapeLeft] = ScreenOrientations.Landscape,
			[Enum.ScreenOrientation.LandscapeRight] = ScreenOrientations.Landscape,
			[Enum.ScreenOrientation.LandscapeSensor] = ScreenOrientations.Landscape,
			[Enum.ScreenOrientation.Portrait] = ScreenOrientations.Portrait,
			[Enum.ScreenOrientation.Sensor] = ScreenOrientations.Sensor,
		},
		INPUT_TYPE_MAP = {
			[Enum.UserInputType.MouseButton1] = InputTypes.MouseAndKeyboard,
			[Enum.UserInputType.MouseButton2] = InputTypes.MouseAndKeyboard,
			[Enum.UserInputType.MouseButton3] = InputTypes.MouseAndKeyboard,
			[Enum.UserInputType.MouseWheel] = InputTypes.MouseAndKeyboard,
			[Enum.UserInputType.MouseMovement] = InputTypes.MouseAndKeyboard,
			[Enum.UserInputType.Keyboard] = InputTypes.MouseAndKeyboard,

			[Enum.UserInputType.Gamepad1] = InputTypes.Gamepad,
			[Enum.UserInputType.Gamepad2] = InputTypes.Gamepad,
			[Enum.UserInputType.Gamepad3] = InputTypes.Gamepad,
			[Enum.UserInputType.Gamepad4] = InputTypes.Gamepad,
			[Enum.UserInputType.Gamepad5] = InputTypes.Gamepad,
			[Enum.UserInputType.Gamepad6] = InputTypes.Gamepad,
			[Enum.UserInputType.Gamepad7] = InputTypes.Gamepad,
			[Enum.UserInputType.Gamepad8] = InputTypes.Gamepad,

			[Enum.UserInputType.Touch] = InputTypes.Touch,
		},
		UNIBAR_OPENED = "chrome_unibar_opened",
		UNIBAR_CLOSED = "chrome_unibar_closed",
		ICON_ACTIVATED = "chrome_unibar_icon_activated",
		ICON_DRAG_START = "chrome_unibar_icon_drag_started",
		ICON_DRAG_END = "chrome_unibar_icon_drag_ended",
		WINDOW_DRAG_START = "chrome_unibar_window_drag_started",
		WINDOW_DRAG_END = "chrome_unibar_window_drag_ended",
		WINDOW_RESIZE = "chrome_unibar_window_resized",
		WINDOW_OPENED = "chrome_unibar_window_opened",
		WINDOW_CLOSED = "chrome_unibar_window_closed",
		PIN_ADDED = "chrome_unibar_pin_added",
		PIN_REMOVED = "chrome_unibar_pin_removed",
	},
}
