local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local AppCommonLib = require(Packages.AppCommonLib)
local memoize = AppCommonLib.memoize
local SceneManagement = require(Packages.SceneManagement)
local calculateAdorneeProps = SceneManagement.calculateAdorneeProps

local defaultDistanceToCamera = 6
local canvasWidth = 1920
local canvasHeight = 1080

local topbarCanvasHeight = 126
local topbarHeightRatio = topbarCanvasHeight / canvasHeight
local pageContentCanvasHeight = canvasHeight - topbarCanvasHeight

local function getFullScreenDims()
	return calculateAdorneeProps.calculateFullScreenAdorneeProps(defaultDistanceToCamera)
end

local function getPageContentDims()
	return calculateAdorneeProps.calculatePageContentAdorneeProps(1 - topbarHeightRatio, defaultDistanceToCamera)
end

return {
	DefaultDistanceToCamera = defaultDistanceToCamera,
	CanvasSize = Vector2.new(canvasWidth, canvasHeight),
	TopbarHeightRatio = topbarHeightRatio,
	TopbarCanvasSize = Vector2.new(canvasWidth, topbarCanvasHeight),
	PageContentHeightRatio = 1 - topbarHeightRatio,
	PageContentCanvasSize = Vector2.new(canvasWidth, pageContentCanvasHeight),
	GetFullScreenDims = memoize(getFullScreenDims),
	GetPageContentDims = memoize(getPageContentDims),
}
