local Framework = script:FindFirstAncestor("UI").Parent

local enumerate = require(Framework.Util.enumerate)

return enumerate("MediaPlayerSignal", {
	PLAY = "PLAY",
	PAUSE = "PAUSE",
	SET_TIME = "SET_TIME",
})
