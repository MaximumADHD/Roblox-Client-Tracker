local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local getCamMicPermissions = require(CoreGui.RobloxGui.Modules.Settings.getCamMicPermissions)
local MicrophoneDevicePermissionsLogging = require(CoreGui.RobloxGui.Modules.Settings.Resources.MicrophoneDevicePermissionsLogging)
local PermissionsProtocol = require(CorePackages.Workspace.Packages.PermissionsProtocol).PermissionsProtocol.default
local getFFlagMicrophoneDevicePermissionsPromptLogging = require(CoreGui.RobloxGui.Modules.Flags.getFFlagMicrophoneDevicePermissionsPromptLogging)

-- This file is necessary to guarantee that our call to getCamMicPermissions
-- is processed in the getCamMicPermissions queue earlier than others that
-- prompt the user for device permissions, such as in FaceChatSelfieView

if getFFlagMicrophoneDevicePermissionsPromptLogging() then
	local callback = function(response)
		MicrophoneDevicePermissionsLogging:init(response.hasMicPermissions :: boolean)
	end

	local shouldNotRequestPerms = true
	getCamMicPermissions(callback, { PermissionsProtocol.Permissions.MICROPHONE_ACCESS :: string }, shouldNotRequestPerms)
end
