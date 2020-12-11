local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Rodux)

local Status = require(Plugin.SrcDeprecated.Reducers.Status)
local AnimationData = require(Plugin.SrcDeprecated.Reducers.AnimationData)
local History = require(Plugin.SrcDeprecated.Reducers.History)
local Notifications = require(Plugin.SrcDeprecated.Reducers.Notifications)
local Analytics = require(Plugin.SrcDeprecated.Reducers.Analytics)

return Rodux.combineReducers({
	Status = Status,
	AnimationData = AnimationData,
	History = History,
	Notifications = Notifications,
	Analytics = Analytics,
})