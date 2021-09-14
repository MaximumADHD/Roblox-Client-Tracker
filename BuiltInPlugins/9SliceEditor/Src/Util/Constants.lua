local Constants = {}

-- MainPlugin Constants
Constants.DIALOG_SIZE = Vector2.new(675, 444)

-- SliceEditor Constants
Constants.BUTTON_FROMEDGE_PADDING = 20
Constants.BUTTON_FROMCENTER_PADDING = 5

-- ImageEditor/ImageDragger Constants
Constants.BACKGROUND_SIZE = 280
Constants.IMAGE_SIZE = 150

Constants.BACKGROUND_FROMEDGE_PADDING = 40
Constants.BACKGROUND_TILE_SIZE = 20
Constants.PIXEL_TOP_PADDING = 8
Constants.PIXEL_YPOSITION = Constants.BACKGROUND_SIZE + Constants.PIXEL_TOP_PADDING

Constants.DRAGGER_WIDTH = 9
Constants.DRAGGER_HEIGHT = 180

local TexturePath = "rbxasset://textures/9SliceEditor/"
Constants.IMAGES = {
	BACKGROUND_GRID = TexturePath .. "GridPattern.png",
	HORIZONTAL_DRAGGER = TexturePath .. "HorizontalDragger.png",
	VERTICAL_DRAGGER = TexturePath .. "VerticalDragger.png",
}

Constants.MOUSE_CURSORS = {
	EW = "rbxasset://SystemCursors/SizeEW",
	NS = "rbxasset://SystemCursors/SizeNS",
	NONE = "",
}

-- TextEditor/TextOffset Constants
Constants.TEXTIMAGE_PADDING = 70
Constants.TEXTEDITOR_YOFFSET = 116
Constants.TEXTEDITOR_XOFFSET =  Constants.BACKGROUND_SIZE + Constants.BACKGROUND_FROMEDGE_PADDING + Constants.TEXTIMAGE_PADDING
Constants.TEXTEDITOR_XSIZE = 220
Constants.TEXTEDITOR_YSIZE = 128
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
