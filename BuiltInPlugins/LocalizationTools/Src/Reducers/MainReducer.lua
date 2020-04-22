--[[
	The main RoactRodux reducer for the plugin.
]]

local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local PluginMetadata = require(Plugin.Src.Reducers.PluginMetadata)
local Message = require(Plugin.Src.Reducers.Message)
local CloudTable = require(Plugin.Src.Reducers.CloudTable)

return Rodux.combineReducers({
	PluginMetadata = PluginMetadata,
	Message = Message,
	CloudTable = CloudTable,
})
