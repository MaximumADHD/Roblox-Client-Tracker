--[[
	This function is injected into the Experience Chat repo. This will obtain the
	camera and mic permissions for the device being used.
]]
local CoreGui = game:GetService("CoreGui")

local Modules = CoreGui.RobloxGui.Modules
local getCamMicPermissions = require(Modules.Settings.getCamMicPermissions)

return function(callback)
	local promiseCallback = function(response)
		callback(response.hasCameraPermissions, response.hasMicPermissions)
	end
	getCamMicPermissions(promiseCallback)
end
