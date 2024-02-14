--[[
	This function is injected into the Experience Chat repo. This will obtain the
	camera and mic permissions for the device being used.
]]
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Modules = CoreGui.RobloxGui.Modules
local getCamMicPermissions = require(Modules.Settings.getCamMicPermissions)

local CorePackages = game:GetService("CorePackages")
local PermissionsProtocol = require(CorePackages.Workspace.Packages.PermissionsProtocol).PermissionsProtocol.default

local getFFlagDoNotPromptCameraPermissionsOnMount = require(RobloxGui.Modules.Flags.getFFlagDoNotPromptCameraPermissionsOnMount)
type PermissionType = "camera" | "microphone"

if getFFlagDoNotPromptCameraPermissionsOnMount() then
	return function(callback, permissionType : PermissionType?, shouldNotRequestPerms: boolean?)
		local permissionsToRequest

		if permissionType then
			if permissionType == "camera" then
				permissionsToRequest = { PermissionsProtocol.Permissions.CAMERA_ACCESS :: string }
			elseif permissionType == "microphone" then
				permissionsToRequest = { PermissionsProtocol.Permissions.MICROPHONE_ACCESS :: string }
			end
		end

		local promiseCallback = function(response)
			callback(response.hasCameraPermissions, response.hasMicPermissions)
		end

		getCamMicPermissions(promiseCallback, permissionsToRequest, shouldNotRequestPerms, "ExperienceChat.getPermissions")
	end
end

return function(callback)
	local promiseCallback = function(response)
		callback(response.hasCameraPermissions, response.hasMicPermissions)
	end
	getCamMicPermissions(promiseCallback)
end
