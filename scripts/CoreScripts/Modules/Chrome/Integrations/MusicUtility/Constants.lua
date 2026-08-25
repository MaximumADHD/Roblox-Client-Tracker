local Chrome = script:FindFirstAncestor("Chrome")

local UnibarConstants = require(Chrome.ChromeShared.Unibar.Constants)

local MIN_TRACK_DETAILS_PIXEL_WIDTH = 48
local MAX_TRACK_DETAILS_PIXEL_WIDTH = 78

return {
	MIN_TRACK_DETAILS_WIDTH = MIN_TRACK_DETAILS_PIXEL_WIDTH / UnibarConstants.ICON_CELL_WIDTH,
	MAX_TRACK_DETAILS_WIDTH = MAX_TRACK_DETAILS_PIXEL_WIDTH / UnibarConstants.ICON_CELL_WIDTH,
	MUSIC_WINDOW_MAX_SIZE = Vector2.new(400, 80),
}
