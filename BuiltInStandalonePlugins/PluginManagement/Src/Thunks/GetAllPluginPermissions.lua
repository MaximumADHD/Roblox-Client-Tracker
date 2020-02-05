--[[
	TODO: This file is a WIP and uses hard-coded data. We need to connect to the correct APIs before shipping this file.
]]
local Plugin = script.Parent.Parent.Parent

local SetAllPluginPermissions = require(Plugin.Src.Actions.SetAllPluginPermissions)
--local NetworkError = require(Plugin.Core.Actions.NetworkError)

-- https://develop.roblox.com/docs#/
-- GET /v1/user/studiodata
-- https://develop.roblox.com/v1/user/studiodata?clientKey=InstalledPluginsAsJson_V001

local FAKE_PERMISSION = {
	{
		PermissionType = "HttpPermission",
		PermissionData = {
			domain = "www.google.com",
			enabled = true,
		}
	},
	{
		PermissionType = "HttpPermission",
		PermissionData = {
			domain = "localhost",
			enabled = false,
		}
	},
	{
		PermissionType = "HttpPermission",
		PermissionData = {
			domain = "www.roblox.com",
			enabled = true,
		}
	},
}
local FAKE_PERMISSION2 = {
	{
		PermissionType = "HttpPermission",
		PermissionData = {
			domain = "localhost",
			enabled = false,
		}
	},
}
local FAKE_PERMISSION3 = {
	{
		PermissionType = "HttpPermission",
		PermissionData = {
			domain = "www.google.com",
			enabled = true,
		}
	},
	{
		PermissionType = "HttpPermission",
		PermissionData = {
			domain = "www.roblox.com",
			enabled = true,
		}
	},
}

local FAKE_DATA = {
	[165687726] = {
		AssetVersion = 5339764524,
		Enabled = false,
		Moderated = false,
		PluginPermissions = FAKE_PERMISSION,
	},
	[1997686364] = {
		AssetVersion = 4912657914,
		Enabled = true,
		Moderated = false,
		PluginPermissions = FAKE_PERMISSION2,
	},
	[4508391577] = {
		AssetVersion = 5428377384,
		Enabled = true,
		Moderated = false,
		PluginPermissions = FAKE_PERMISSION3,
	},
	[4582447627] = {
		AssetVersion = 5409870015,
		Enabled = true,
		Moderated = false,
		PluginPermissions = FAKE_PERMISSION,
	}
}

return function(apiImpl)
	return function(store)
		-- TODO: actualy hook up to API
		spawn(function()
			store:dispatch(SetAllPluginPermissions(FAKE_DATA))
		end)
	end
end
