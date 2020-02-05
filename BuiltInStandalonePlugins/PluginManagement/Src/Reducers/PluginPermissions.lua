--[[
	PluginPermissionInfo is a table separated by assetId.
	Example data:
	{
		[123] = {
			allowedHttpCount = 0,
			deniedHttpCount = 0,
			httpPermissions = {
				PermissionInfo.new(),
				PermissionInfo.new(),
			},
		},
	}
]]
local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local Rodux = require(Plugin.Packages.Rodux)

local PermissionInfo = require(Plugin.Src.Models.PermissionInfo)
local Constants = require(Plugin.Src.Util.Constants)

return Rodux.createReducer({}, {
	--[[ Sets a table of permission data. Will override the entire permissions table. ]]
	SetAllPluginPermissions = function(state, action)
		local updatedPluginsList = {}

        for id, entry in pairs(action.permissions) do
			local assetId = tonumber(id)
			if entry.PluginPermissions then
				local pluginPermissionsList = {}
				local allowedHttpCount = 0
				local deniedHttpCount = 0
				for _,permission in pairs(entry.PluginPermissions) do
					if permission.PermissionType == Constants.PERMISSION_TYPES.HttpPermission then
						local permissionInfo = PermissionInfo.fromUserData(permission)
						if permissionInfo.enabled then
							allowedHttpCount = allowedHttpCount + 1
						else
							deniedHttpCount = deniedHttpCount + 1
						end
						table.insert(pluginPermissionsList, permissionInfo)
					end
				end

				updatedPluginsList[assetId] = {
					allowedHttpCount = allowedHttpCount,
					deniedHttpCount = deniedHttpCount,
					httpPermissions = pluginPermissionsList,
				}
			end
		end

        return Cryo.Dictionary.join(state, updatedPluginsList)
	end,
})