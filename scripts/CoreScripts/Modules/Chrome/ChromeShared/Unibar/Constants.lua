local CorePackages = game:GetService("CorePackages")

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagEnableConsoleExpControls = SharedFlags.FFlagEnableConsoleExpControls
local FFlagChromeShortcutRemoveLeaveOnRespawnPage = SharedFlags.FFlagChromeShortcutRemoveLeaveOnRespawnPage
local FFlagChromeShortcutRemoveRespawnOnLeavePage = SharedFlags.FFlagChromeShortcutRemoveRespawnOnLeavePage

local ReactOtter = require(CorePackages.Packages.ReactOtter)
local TenFootInterface = require(script.Parent.Parent.Parent.Parent.TenFootInterface)
local UIBlox = require(CorePackages.Packages.UIBlox)
local GetStyleTokens = require(script.Parent.Parent.Utility.GetStyleTokens)

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

local StyleTokens = GetStyleTokens()

local socialSlots = 3
local toggleSlots = 1
local nineDotSlots = 1

local function withUIScale(value: number)
	local scale = if TenFootInterface:IsEnabled() then 1.5 else 1 -- APPEXP-2377: Replace with Scale token
	return scale * value
end

return {
	ICON_CELL_WIDTH = StyleTokens.Size.Size_1100,
	DIVIDER_CELL_WIDTH = withUIScale(5),
	ICON_SIZE = StyleTokens.Size.Size_900,
	ICON_NAME_PREFIX = if FFlagEnableConsoleExpControls then "IconHitArea_" else nil,
	ICON_HIGHLIGHT_SIZE = UDim2.new(0, StyleTokens.Size.Size_900, 0, StyleTokens.Size.Size_900),
	ICON_DIVIDER_SIZE = UDim2.new(0, withUIScale(1), 0, StyleTokens.Size.Size_700),
	ICON_DIVIDER_POSITION = UDim2.new(0, StyleTokens.Size.Size_50, 0.5, 0),
	ICON_BADGE_OFFSET_X = StyleTokens.Gap.XXLarge,
	ICON_BADGE_OFFSET_Y = withUIScale(5),
	MEDIUM_ICON_SIZE = StyleTokens.Size.Size_700,
	UNIBAR_END_PADDING = StyleTokens.Padding.XSmall,
	MENU_SUBMENU_PADDING = withUIScale(10),
	-- Duplicate of TopBarConstants.Padding
	UNIBAR_LEFT_MARGIN = StyleTokens.Padding.Small,
	-- Duplicate of TopBarConstants.ScreenSideOffset
	MENU_ICON_SCREEN_SIDE_OFFSET = StyleTokens.Gap.Large,
	SUB_MENU_ROW_HEIGHT = StyleTokens.Size.Size_1400,
	SUBMENU_CORNER_RADIUS = withUIScale(10),
	SUBMENU_PADDING_LEFT = StyleTokens.Padding.Small,
	SUBMENU_PADDING_RIGHT = StyleTokens.Padding.Small,
	SUBMENU_ROW_LABEL_FONT = StyleTokens.Typography.TitleLarge,
	SUBMENU_ROW_PADDING = StyleTokens.Padding.Small,
	SUBMENU_ROW_CORNER_RADIUS = withUIScale(10),
	SUBMENU_BOTTOM_PADDING = StyleTokens.Padding.XLarge,
	PIN_ICON_SIZE = UDim2.new(0, withUIScale(18), 0, withUIScale(18)),
	PIN_BUTTON_SIZE = StyleTokens.Size.Size_1000,
	PIN_RIGHT_PADDING = withUIScale(13),
	PIN_CORNER_RADIUS = StyleTokens.Radius.Medium,
	NEW_BADGE_SIZE = withUIScale(66),
	MENU_ANIMATION_SPRING = {
		dampingRatio = 1.1,
		frequency = 1 / 0.15, -- @150ms size anim
		restingPositionLimit = 0.1,
		restingVelocityLimit = 0.05,
	} :: SpringOptions,
	UNIBAR_KEEP_OUT_AREA_ID = "unibar",
	SELFIE_VIEW_ID = "selfie_view",
	AVATAR_SWITCHER_ID = "avatar_switcher",

	UNIBAR_SHORTCUTBAR_ID = "unibarShortcuts",
	TILTMENU_SHORTCUTBAR_ID = "tiltMenuShortcuts",
	TILTMENU_DIALOG_SHORTCUTBAR_ID = "tiltMenuDialogShortcuts",
	TILTMENU_RESPAWN_DIALOG_SHORTCUTBAR_ID = if FFlagChromeShortcutRemoveLeaveOnRespawnPage
		then "tiltMenuRespawnDialogShortcuts"
		else nil :: never,
	TILTMENU_LEAVE_DIALOG_SHORTCUTBAR_ID = if FFlagChromeShortcutRemoveRespawnOnLeavePage
		then "tiltMenuLeaveDialogShortcuts"
		else nil :: never,

	SHORTCUTBAR_DISPLAYORDER = 100,

	-- WindowHost constants
	WINDOW_HOST_GUI_NAME = "WindowHost",
	CLOSE_BUTTON_FRAME = UDim2.fromOffset(StyleTokens.Size.Size_1100, StyleTokens.Size.Size_1100),
	CLOSE_BUTTON_SIZE = UDim2.fromOffset(withUIScale(22), withUIScale(22)),
	CLOSE_ICON_SIZE = IconSize.Small,
	CORNER_RADIUS = UDim.new(0, StyleTokens.Radius.Medium),
	WINDOW_DEFAULT_PADDING = StyleTokens.Padding.Small,
	WINDOW_ICON_SIZE = withUIScale(42),

	-- the amount of travel to activate a WindowHost from dragging an icon
	DRAG_MAGNITUDE_THRESHOLD = 10,

	DEFAULT_HEIGHT_LARGE = withUIScale(285),
	DEFAULT_WIDTH_LARGE = withUIScale(176),
	DEFAULT_HEIGHT = withUIScale(130),
	DEFAULT_WIDTH = withUIScale(176),

	MAX_HEIGHT_PORTRAIT = withUIScale(285),
	MAX_WIDTH_PORTRAIT = withUIScale(260),
	MAX_HEIGHT_LANDSCAPE = withUIScale(285),
	MAX_WIDTH_LANDSCAPE = withUIScale(260),

	-- Integration Constraints per device type
	SOCIAL_SLOTS = socialSlots, -- Chat, mic, and self view always present in open standard unibar (when available)
	TOGGLE_SLOTS = toggleSlots, -- Unibar or back button present in every unibar/compact utility state
	NINE_DOT_SLOTS = nineDotSlots, -- Nine dot always present in open unibar
	CORE_SLOTS = socialSlots + toggleSlots + nineDotSlots, -- Slots always present in open Unibar
	MOBILE_TINY_PORTRAIT_SLOTS = 5,
	MOBILE_PORTRAIT_SLOTS = 6,
	MOBILE_LANDSCAPE_SLOTS = 7,
	NON_MOBILE_SLOTS = 9,

	MAX_NUM_UNIVERSES_SHOWN = 5,

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
		ICON_ACTIVATED = "chrome_unibar_icon_activated",
		ICON_DRAG_START = "chrome_unibar_icon_drag_started",
		ICON_DRAG_END = "chrome_unibar_icon_drag_ended",
		WINDOW_DRAG_START = "chrome_unibar_window_drag_started",
		WINDOW_DRAG_END = "chrome_unibar_window_drag_ended",
		WINDOW_RESIZE = "chrome_unibar_window_resized",
		WINDOW_OPENED = "chrome_unibar_window_opened",
		WINDOW_CLOSED = "chrome_unibar_window_closed",
	},
}
