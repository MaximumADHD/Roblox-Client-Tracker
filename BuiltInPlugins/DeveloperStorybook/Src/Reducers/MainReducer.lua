--[[
	The main RoactRodux reducer for the plugin.
]]

local Main = script.Parent.Parent.Parent
local Rodux = require(Main.Packages.Rodux)

local Stories = require(Main.Src.Reducers.Stories)

export type State = {
	Stories: Stories.State,
}

return Rodux.combineReducers({
	Stories = Stories,
})
