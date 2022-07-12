--[[
	The main RoactRodux reducer for the plugin.
	New Plugin Setup: If your plugin is stateful, create actions and reducers to store data
]]

local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local Permissions = require(script.Parent.Permissions)
local GroupMetadata = require(script.Parent.GroupMetadata)
local GroupRolePermissions = require(script.Parent.GroupRolePermissions)
local GameOwnerMetadata = require(script.Parent.GameOwnerMetadata)
local CollaboratorSearch = require(script.Parent.CollaboratorSearch)
local LoadState = require(script.Parent.LoadState)
local SaveState = require(script.Parent.SaveState)

return (Rodux.combineReducers({
	GameOwnerMetadata = GameOwnerMetadata,
	Permissions = Permissions,
	GroupMetadata = GroupMetadata,
	GroupRolePermissions = GroupRolePermissions,
	CollaboratorSearch = CollaboratorSearch,
	LoadState = LoadState,
	SaveState = SaveState
}))
