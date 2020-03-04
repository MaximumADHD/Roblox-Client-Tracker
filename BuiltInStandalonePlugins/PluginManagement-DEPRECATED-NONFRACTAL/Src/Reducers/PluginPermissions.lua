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
			if entry then
				local pluginPermissionsList = {}
				local allowedHttpCount = 0
				local deniedHttpCount = 0
				for permissionIndex,permission in pairs(entry) do
					if permission.Type == Constants.PERMISSION_TYPES.HttpService then
						local permissionInfo = PermissionInfo.fromUserData(permission, permissionIndex)
						if permissionInfo.allowed then
							allowedHttpCount = allowedHttpCount + 1
						else
							deniedHttpCount = deniedHttpCount + 1
						end
						table.insert(pluginPermissionsList, permissionInfo)
					end
				end

				table.sort(pluginPermissionsList, function(first, second)
					return string.lower(first.data.domain) < string.lower(second.data.domain)
				end)

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