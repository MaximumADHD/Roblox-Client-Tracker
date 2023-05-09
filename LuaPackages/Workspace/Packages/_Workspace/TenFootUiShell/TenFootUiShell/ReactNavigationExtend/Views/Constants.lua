local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local AppCommonLib = require(Packages.AppCommonLib)
local ReactOtter = require(Packages.ReactOtter)
local SceneManagement = require(Packages.SceneManagement)
local memoize = AppCommonLib.memoize
local calculateAdorneeProps = SceneManagement.calculateAdorneeProps

type SpringOptions = ReactOtter.SpringOptions

local DEFAULT_SCREEN_DISTANCE_TO_CAMERA = 6
local DEFAULT_BACKGROUND_DISTANCE_TO_CAMERA = 60
local CANVAS_WIDTH = 1920
local CANVAS_HEIGHT = 1080

local TOP_BAR_CANVAS_HEIGHT = 126
local TOPBAR_HEIGHT_RATIO = TOP_BAR_CANVAS_HEIGHT / CANVAS_HEIGHT
local CONTROLLER_BAR_CANVAS_HEIGHT = 80
local CONTROLLER_BAR_HEIGHT_RATIO = CONTROLLER_BAR_CANVAS_HEIGHT / CANVAS_HEIGHT
local PAGE_CONTENT_CANVAS_HEIGHT = CANVAS_HEIGHT - TOP_BAR_CANVAS_HEIGHT

local Z_DIRECTION_ZOOM_FACTOR = 0.1

local xDirectioAnimationSpringConfig: SpringOptions = {
	stiffness = 150,
	damping = 20,
	mass = 1,
}

local zDirectioAnimationSpringConfig: SpringOptions = {
	stiffness = 710,
	damping = 40,
	mass = 1,
}

local function getFullScreenDims()
	return calculateAdorneeProps.calculateFullScreenAdorneeProps(DEFAULT_SCREEN_DISTANCE_TO_CAMERA)
end

local function getPageContentDims()
	return calculateAdorneeProps.calculatePageContentAdorneeProps(
		1 - TOPBAR_HEIGHT_RATIO,
		DEFAULT_SCREEN_DISTANCE_TO_CAMERA
	)
end

return {
	DEFAULT_SCREEN_DISTANCE_TO_CAMERA = DEFAULT_SCREEN_DISTANCE_TO_CAMERA,
	DEFAULT_BACKGROUND_DISTANCE_TO_CAMERA = DEFAULT_BACKGROUND_DISTANCE_TO_CAMERA,
	TOP_BAR_HEIGHT_RATIO = TOPBAR_HEIGHT_RATIO,
	TOP_BAR_CANVAS_SIZE = Vector2.new(CANVAS_WIDTH, TOP_BAR_CANVAS_HEIGHT),
	CONTROLLER_BAR_HEIGHT_RATIO = CONTROLLER_BAR_HEIGHT_RATIO,
	CONTROLLER_BAR_CANVAS_SIZE = Vector2.new(CANVAS_WIDTH, CONTROLLER_BAR_CANVAS_HEIGHT),
	PAGE_CONTENT_CANVAS_SIZE = Vector2.new(CANVAS_WIDTH, PAGE_CONTENT_CANVAS_HEIGHT),
	X_DIRECTION_ANIMATION_SPRING_CONFIG = xDirectioAnimationSpringConfig,
	Z_DIRECTION_ANIMATION_SPRING_CONFIG = zDirectioAnimationSpringConfig,
	Z_DIRECTION_ZOOM_FACTOR = Z_DIRECTION_ZOOM_FACTOR,

	GetFullScreenDims = memoize(getFullScreenDims),
	GetPageContentDims = memoize(getPageContentDims),
}
