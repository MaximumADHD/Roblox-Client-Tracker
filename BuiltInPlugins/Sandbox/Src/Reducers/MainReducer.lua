local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local Example = require(Plugin.Src.Reducers.Example)
local DraftsServiceStatus = require(Plugin.Src.Reducers.DraftsServiceStatus)
local SandboxDrafts = require(Plugin.Src.Reducers.SandboxDrafts)

local MainReducer = Rodux.combineReducers({
	Example = Example,
	DraftsServiceStatus = DraftsServiceStatus,
	SandboxDrafts = SandboxDrafts,
})

return MainReducer