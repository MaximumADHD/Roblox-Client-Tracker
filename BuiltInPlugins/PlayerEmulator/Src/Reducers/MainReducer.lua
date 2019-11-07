local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local Example = require(Plugin.Src.Reducers.Example)

local MainReducer = Rodux.combineReducers({
	Example = Example,
})

return MainReducer