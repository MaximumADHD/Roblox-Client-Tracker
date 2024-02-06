local CorePackages = game:GetService("CorePackages")
local VideoCaptureService = game:GetService("VideoCaptureService")
local AnalyticsService = game:GetService("RbxAnalyticsService")
local CoreGui = game:GetService("CoreGui")

local Cryo = require(CorePackages.Cryo)
local getCamMicPermissions = require(CoreGui.RobloxGui.Modules.Settings.getCamMicPermissions)
local PermissionsProtocol = require(CorePackages.Workspace.Packages.PermissionsProtocol).PermissionsProtocol.default
local cameraDevicesHelper = require(CoreGui.RobloxGui.Modules.Settings.cameraDevicesHelper)

local cameraDevices = cameraDevicesHelper.GetDevices()
local userHasEligibleCamera = not Cryo.isEmpty(cameraDevices)
if userHasEligibleCamera then
	local callback = function(response)
		local hasAccessToCamera = response.hasCameraPermissions
		AnalyticsService:SendEventDeferred("client", "avatarChat", "CameraDevicePermissionResponse", {
			hasAccessToCamera = hasAccessToCamera,
			hasEligibleCamera = userHasEligibleCamera,
		})
	end

	-- Get Camera Permissions settings from OS without requesting
	local shouldNotRequestPerms = true
	getCamMicPermissions(callback, { PermissionsProtocol.Permissions.CAMERA_ACCESS :: string }, shouldNotRequestPerms)
else
	AnalyticsService:SendEventDeferred("client", "avatarChat", "CameraDevicePermissionResponse", {
		hasAccessToCamera = false,
		hasEligibleCamera = userHasEligibleCamera,
	})
end
