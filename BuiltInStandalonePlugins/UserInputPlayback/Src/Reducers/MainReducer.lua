local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local PlaybackTabReducer = require(Plugin.Src.Reducers.PlaybackTabReducer)

local MainReducer = Rodux.combineReducers({
	playbackTab = PlaybackTabReducer,
})

return MainReducer