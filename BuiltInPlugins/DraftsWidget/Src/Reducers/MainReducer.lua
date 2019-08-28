local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local Example = require(Plugin.Src.Reducers.Example)
local DraftsServiceStatus = require(Plugin.Src.Reducers.DraftsServiceStatus)
local DraftsReducer = require(Plugin.Src.Reducers.DraftsReducer)

local MainReducer = Rodux.combineReducers({
	Example = Example,
	DraftsServiceStatus = DraftsServiceStatus,
	Drafts = DraftsReducer,
})

return MainReducer