local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Rodux)

local Status = require(Plugin.Src.Reducers.Status)
local AnimationData = require(Plugin.Src.Reducers.AnimationData)
local History = require(Plugin.Src.Reducers.History)
local Notifications = require(Plugin.Src.Reducers.Notifications)
local Analytics = require(Plugin.Src.Reducers.Analytics)

return Rodux.combineReducers({
	Status = Status,
	AnimationData = AnimationData,
	History = History,
	Notifications = Notifications,
	Analytics = Analytics,
})