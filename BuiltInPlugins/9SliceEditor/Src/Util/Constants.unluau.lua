-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
var0.WIDGET_SIZE = Vector2.new(330, 255)
var0.BUTTON_FROMEDGE_PADDING = 20
var0.BUTTON_FROMCENTER_PADDING = 5
var0.BACKGROUND_SIZE = 180
var0.IMAGE_SIZE = 150
var0.BACKGROUND_FROMEDGE_PADDING = 40
var0.BACKGROUND_TILE_SIZE = 20
var0.PIXEL_TOP_PADDING = 5
var0.PIXEL_YPOSITION = var0.BACKGROUND_SIZE + var0.PIXEL_TOP_PADDING
var0.IMAGE_PREVIEW_WINDOW_PADDING = 18
var0.DRAGGER_WIDTH = 9
var0.DRAGGER_HEIGHT = 180
var0.DRAGGER_WIDTH_V2 = 8
var0.DRAGGER_CLICK_WINDOW_WIDTH = 16
var0.DRAGGER_CENTER_INSETPX = 1
var0.DRAGGER_HANDLE_SIZE = 16
local var63 = {}
var63.BACKGROUND_GRID = "rbxasset://textures/9SliceEditor/" ... "GridPattern.png"
var63.HORIZONTAL_DRAGGER = "rbxasset://textures/9SliceEditor/" ... "HorizontalDragger.png"
var63.VERTICAL_DRAGGER = "rbxasset://textures/9SliceEditor/" ... "VerticalDragger.png"
local var73 = {}
local var74 = {}
var74.NORMAL = "rbxasset://textures/9SliceEditor/" ... "Dragger2Left.png"
var74.OUTLINED = "rbxasset://textures/9SliceEditor/" ... "Dragger2OutlinedLeft.png"
var73.LEFT = var74
local var81 = {}
var81.NORMAL = "rbxasset://textures/9SliceEditor/" ... "Dragger2Right.png"
var81.OUTLINED = "rbxasset://textures/9SliceEditor/" ... "Dragger2OutlinedRight.png"
var73.RIGHT = var81
local var88 = {}
var88.NORMAL = "rbxasset://textures/9SliceEditor/" ... "Dragger2Top.png"
var88.OUTLINED = "rbxasset://textures/9SliceEditor/" ... "Dragger2OutlinedTop.png"
var73.TOP = var88
local var95 = {}
var95.NORMAL = "rbxasset://textures/9SliceEditor/" ... "Dragger2Bottom.png"
var95.OUTLINED = "rbxasset://textures/9SliceEditor/" ... "Dragger2OutlinedBottom.png"
var73.BOTTOM = var95
var63.DRAGGER_V2 = var73
var0.IMAGES = var63
local var102 = {}
var102.EW = "rbxasset://SystemCursors/SizeEW"
var102.NS = "rbxasset://SystemCursors/SizeNS"
var102.NONE = ""
var0.MOUSE_CURSORS = var102
var0.TEXTIMAGE_PADDING = 70
var0.TEXTEDITOR_YOFFSET = 116
var0.TEXTEDITOR_XOFFSET = var0.BACKGROUND_SIZE + var0.BACKGROUND_FROMEDGE_PADDING + var0.TEXTIMAGE_PADDING
var0.TEXTEDITOR_XSIZE = 110
var0.TEXTEDITOR_YSIZE = 140
var0.TEXTSIZE = 18
var0.TEXTINPUT_PADDING = 8
var0.LEFTINPUT_YPOSITION = 24
var0.RIGHTINPUT_YPOSITION = var0.LEFTINPUT_YPOSITION + 20 + var0.TEXTINPUT_PADDING
var0.TOPINPUT_YPOSITION = var0.RIGHTINPUT_YPOSITION + 20 + var0.TEXTINPUT_PADDING
var0.BOTTOMINPUT_YPOSITION = var0.TOPINPUT_YPOSITION + 20 + var0.TEXTINPUT_PADDING
var0.TEXTLABEL_PADDING = 2
var0.LEFTLABEL_YPOSITION = var0.LEFTINPUT_YPOSITION + var0.TEXTLABEL_PADDING
var0.RIGHTLABEL_YPOSITION = var0.RIGHTINPUT_YPOSITION + var0.TEXTLABEL_PADDING
var0.TOPLABEL_YPOSITION = var0.TOPINPUT_YPOSITION + var0.TEXTLABEL_PADDING
var0.BOTTOMLABEL_YPOSITION = var0.BOTTOMINPUT_YPOSITION + var0.TEXTLABEL_PADDING
return var0
