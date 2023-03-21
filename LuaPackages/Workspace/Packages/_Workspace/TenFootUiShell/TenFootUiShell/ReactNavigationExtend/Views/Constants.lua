local defaultDistanceToCamera = 6
local canvasWidth = 1920
local canvasHeight = 1080

local topbarCanvasHeight = 126
local topbarHeightRatio = topbarCanvasHeight / canvasHeight
local pageContentCanvasHeight = canvasHeight - topbarCanvasHeight

return {
	DefaultDistanceToCamera = defaultDistanceToCamera,
	CanvasSize = Vector2.new(canvasWidth, canvasHeight),
	TopbarHeightRatio = topbarHeightRatio,
	PageContentHeightRatio = 1 - topbarHeightRatio,
	PageContentCanvasSize = Vector2.new(canvasWidth, pageContentCanvasHeight),
}
