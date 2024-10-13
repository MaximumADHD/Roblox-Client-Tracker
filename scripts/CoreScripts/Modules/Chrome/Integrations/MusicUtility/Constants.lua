local Chrome = script:FindFirstAncestor("Chrome")

local UnibarConstants = require(Chrome.Unibar.Constants)

local MIN_TRACK_DETAILS_PIXEL_WIDTH = 48
local MAX_TRACK_DETAILS_PIXEL_WIDTH = 78

return {
	PEEK_CONTAINER_HEIGHT = 44,
	PEEK_CONTAINER_POSITION = UDim2.fromOffset(0, 6),
	MIN_TRACK_DETAILS_WIDTH = MIN_TRACK_DETAILS_PIXEL_WIDTH / UnibarConstants.ICON_CELL_WIDTH,
	MAX_TRACK_DETAILS_WIDTH = MAX_TRACK_DETAILS_PIXEL_WIDTH / UnibarConstants.ICON_CELL_WIDTH,
}
