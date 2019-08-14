local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local Example = require(Plugin.Src.Reducers.Example)
local SandboxDrafts = require(Plugin.Src.Reducers.SandboxDrafts)

local MainReducer = Rodux.combineReducers({
	Example = Example,
	SandboxDrafts = SandboxDrafts,
})

return MainReducer