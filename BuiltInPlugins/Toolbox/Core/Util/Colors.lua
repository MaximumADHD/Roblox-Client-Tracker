local Plugin = script.Parent.Parent.Parent
local wrapStrictTable = require(Plugin.Core.Util.wrapStrictTable)

local Colors = {}

-- These color definitions match what are used on the Studio start page
-- Defined in qml/Colors.qml
Colors.BLUE_PRIMARY = Color3.fromRGB(  0, 162, 255)	-- 0    , 0.635, 1
Colors.BLUE_DISABLED = Color3.fromRGB(153, 218, 255)

Colors.GRAY_1 = Color3.fromRGB( 25,  25,  25)		-- 0.098, 0.098, 0.098
Colors.GRAY_2 = Color3.fromRGB(117, 117, 117)		-- 0.459, 0.459, 0.459
Colors.GRAY_3 = Color3.fromRGB(184, 184, 184)		-- 0.722, 0.722, 0.722
Colors.GRAY_5 = Color3.fromRGB(242, 242, 242)		-- 0.949, 0.949, 0.949
Colors.GRAY_6 = Color3.fromRGB(245, 245, 245)		-- 0.961, 0.961, 0.961

Colors.WHITE = Color3.fromRGB(255, 255, 255)		-- 1    , 1    , 1
Colors.BLACK = Color3.fromRGB(0, 0, 0)			-- 0    , 0    , 0

Colors.HEADER_BACKGROUND_COLOR = Color3.fromRGB(242, 242, 242)
Colors.HEADER_BORDER_COLOR = Color3.fromRGB(184, 184, 184)

Colors.FOOTER_BACKGROUND_COLOR = Color3.fromRGB(227, 227, 227)
Colors.FOOTER_BORDER_COLOR = Color3.fromRGB(184, 184, 184)

Colors.LIGHT_ASSETNAME_TEXT_COLOR = Color3.fromRGB(65, 105, 225)	-- 0.255, 0.412, 0.882

Colors.DARK_BORDER_COLOR = Color3.fromRGB(34, 34, 34)			-- 0.133, 0.133, 0.133
Colors.DARK_SCROLL_BAR_BACKGROUND_COLOR = Color3.fromRGB(41, 41, 41)

Colors.DARK_BACKGROUND_COLOR = Color3.fromRGB(53, 53, 53)
Colors.DARK_MAIN_SECTION_COLOR = Color3.fromRGB(46, 46, 46)
Colors.DARK_SCROLL_BAR_COLOR = Color3.fromRGB(56, 56, 56)

Colors.DARK_DISABLED_TEXT_COLOR = Color3.fromRGB(85, 85, 85)
Colors.DARK_DIMMER_TEXT_COLOR = Color3.fromRGB(102, 102, 102)
Colors.DARK_TITLE_COLOR = Color3.fromRGB(170, 170, 170)
Colors.DARK_MAIN_TEXT_COLOR = Color3.fromRGB(204, 204, 204)

Colors.DARK_RIBBON_BAR_ICON_HOVER_COLOR = Color3.fromRGB(37, 37, 37)

Colors.DARK_WIDGET_SELECTED_COLOR = Color3.fromRGB(11, 90, 175)
Colors.DARK_WIDGET_HOVER_COLOR = Color3.fromRGB(66, 66, 66)

Colors.DARK_GREY_BUTTON_DEFAULT_COLOR = Color3.fromRGB(58, 58, 58)

Colors.VOTING_GREEN = Color3.fromRGB(82, 168, 70)
Colors.VOTING_RED = Color3.fromRGB(206, 100, 91)

Colors.INSTALL_GREEN = Color3.new(0,.7,0)
Colors.INSTALL_RED = Color3.new(.9,0,0)

return wrapStrictTable(Colors, "Colors")
