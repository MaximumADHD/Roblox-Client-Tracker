local Constants = {}

-- MainPlugin Constants
Constants.WIDGET_SIZE = Vector2.new(330, 255)

-- SliceEditor Constants
Constants.BUTTON_FROMEDGE_PADDING = 20
Constants.BUTTON_FROMCENTER_PADDING = 5

-- ImageEditor/ImageDragger Constants
Constants.BACKGROUND_SIZE = 180
Constants.IMAGE_SIZE = 150

Constants.BACKGROUND_FROMEDGE_PADDING = 40
Constants.BACKGROUND_TILE_SIZE = 20
Constants.PIXEL_TOP_PADDING = 5
Constants.PIXEL_YPOSITION = Constants.BACKGROUND_SIZE + Constants.PIXEL_TOP_PADDING
Constants.IMAGE_PREVIEW_WINDOW_PADDING = 18

Constants.DRAGGER_WIDTH = 9
Constants.DRAGGER_HEIGHT = 180
Constants.DRAGGER_WIDTH_V2 = 8
Constants.DRAGGER_CLICK_WINDOW_WIDTH = 16 -- Should be even
Constants.DRAGGER_CENTER_INSETPX = 1
Constants.DRAGGER_HANDLE_SIZE = 16 -- Should be less than or equal to IMAGE_PREVIEW_WINDOW_PADDING

local TexturePath = "rbxasset://textures/9SliceEditor/"
Constants.IMAGES = {
	BACKGROUND_GRID = TexturePath .. "GridPattern.png",
	HORIZONTAL_DRAGGER = TexturePath .. "HorizontalDragger.png",
	VERTICAL_DRAGGER = TexturePath .. "VerticalDragger.png",
	DRAGGER_V2 = {
		LEFT = {
			NORMAL = TexturePath .. "Dragger2Left.png",
			OUTLINED = TexturePath .. "Dragger2OutlinedLeft.png",
		},
		RIGHT = {
			NORMAL = TexturePath .. "Dragger2Right.png",
			OUTLINED = TexturePath .. "Dragger2OutlinedRight.png",
		},
		TOP = {
			NORMAL = TexturePath .. "Dragger2Top.png",
			OUTLINED = TexturePath .. "Dragger2OutlinedTop.png",
		},
		BOTTOM = {
			NORMAL = TexturePath .. "Dragger2Bottom.png",
			OUTLINED = TexturePath .. "Dragger2OutlinedBottom.png",
		},
	},
}

Constants.MOUSE_CURSORS = {
	EW = "rbxasset://SystemCursors/SizeEW",
	NS = "rbxasset://SystemCursors/SizeNS",
	NONE = "",
}

-- TextEditor/TextOffset Constants
Constants.TEXTIMAGE_PADDING = 70
Constants.TEXTEDITOR_YOFFSET = 116
Constants.TEXTEDITOR_XOFFSET = Constants.BACKGROUND_SIZE
	+ Constants.BACKGROUND_FROMEDGE_PADDING
	+ Constants.TEXTIMAGE_PADDING
Constants.TEXTEDITOR_XSIZE = 110
Constants.TEXTEDITOR_YSIZE = 140
Constants.TEXTSIZE = 18

local buttonHeight = 20
Constants.TEXTINPUT_PADDING = 8
Constants.LEFTINPUT_YPOSITION = 24
Constants.RIGHTINPUT_YPOSITION = Constants.LEFTINPUT_YPOSITION + buttonHeight + Constants.TEXTINPUT_PADDING
Constants.TOPINPUT_YPOSITION = Constants.RIGHTINPUT_YPOSITION + buttonHeight + Constants.TEXTINPUT_PADDING
Constants.BOTTOMINPUT_YPOSITION = Constants.TOPINPUT_YPOSITION + buttonHeight + Constants.TEXTINPUT_PADDING

Constants.TEXTLABEL_PADDING = 2
Constants.LEFTLABEL_YPOSITION = Constants.LEFTINPUT_YPOSITION + Constants.TEXTLABEL_PADDING
Constants.RIGHTLABEL_YPOSITION = Constants.RIGHTINPUT_YPOSITION + Constants.TEXTLABEL_PADDING
Constants.TOPLABEL_YPOSITION = Constants.TOPINPUT_YPOSITION + Constants.TEXTLABEL_PADDING
Constants.BOTTOMLABEL_YPOSITION = Constants.BOTTOMINPUT_YPOSITION + Constants.TEXTLABEL_PADDING

return Constants
