--[[
	TODO: This file is a WIP and uses hard-coded data. We need to connect to the correct APIs before shipping this file.
]]
local Plugin = script.Parent.Parent.Parent

local GetAllPluginPermissions = require(Plugin.Src.Thunks.GetAllPluginPermissions)
--local NetworkError = require(Plugin.Core.Actions.NetworkError)

return function(apiImpl)
	return function(store)
		-- TODO: actualy hook up to correct API
		spawn(function()
			store:dispatch(GetAllPluginPermissions(apiImpl))
		end)
	end
end
