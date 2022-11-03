--[[
	Retrieves camera and microphone device permissions. MessageBus has a bug where
	it cannot handle multiple requests at once. This helper function
	will call once and store the values for future callers. It implements a
	request queue in the case this function is called multiple times
	before obtaining the permissions.

	Tracker: AVBURST-10621

	Response format:
	{
		hasCameraPermissions = bool,
		hasMicPermissions = bool,
	}
]]
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local Cryo = require(CorePackages.Cryo)
local PermissionsProtocol = require(CorePackages.Workspace.Packages.PermissionsProtocol).PermissionsProtocol.default

local Modules = CoreGui.RobloxGui.Modules
local FFlagSelfViewFixes = require(Modules.Flags.FFlagSelfViewFixes)

local hasCameraPermissions
local hasMicPermissions
local callbackQueue = {}
local inProgress = false

return function(callback)
	--do not use cached results here else it will return permissions not given from cached result despite meanwhile given
	--on first run when no permissions given before and then user gives them

	-- A request is already in progress, add the callback to the queue.
	if inProgress then
		table.insert(callbackQueue, callback)
		return
	end

	inProgress = true
	table.insert(callbackQueue, callback)

	if FFlagSelfViewFixes then
		-- Obtain the permissions for camera and mic.
		PermissionsProtocol:hasPermissions({
			PermissionsProtocol.Permissions.CAMERA_ACCESS,
			PermissionsProtocol.Permissions.MICROPHONE_ACCESS,
		}):andThen(function (permissionResponse)
			-- If permissions were different
			if typeof(permissionResponse) == "table" then
				local hasCameraPermissionsResponse = permissionResponse.status == PermissionsProtocol.Status.AUTHORIZED
					or not Cryo.List.find(permissionResponse.missingPermissions, PermissionsProtocol.Permissions.CAMERA_ACCESS)
				local hasMicPermissionsResponse = permissionResponse.status == PermissionsProtocol.Status.AUTHORIZED
					or not Cryo.List.find(permissionResponse.missingPermissions, PermissionsProtocol.Permissions.MICROPHONE_ACCESS)

				hasCameraPermissions = hasCameraPermissionsResponse
				hasMicPermissions = hasMicPermissionsResponse
			else
				-- If all permissions were authorized
				if permissionResponse == PermissionsProtocol.Status.AUTHORIZED then
					hasCameraPermissions = true
					hasMicPermissions = true
				else
					-- Fall back to denied
					hasCameraPermissions = false
					hasMicPermissions = false
				end
			end

			local response = {
				hasCameraPermissions = hasCameraPermissions,
				hasMicPermissions = hasMicPermissions,
			}

			-- Notify all callback listeners of the result.
			for _, callback in callbackQueue do
				callback(response)
			end

			callbackQueue = {}
			inProgress = false
		end)
	else
		PermissionsProtocol:hasPermissions({
			PermissionsProtocol.Permissions.CAMERA_ACCESS,
			PermissionsProtocol.Permissions.MICROPHONE_ACCESS,
		}):andThen(function (permissionResponse)
			local hasCameraPermissionsResponse = permissionResponse.status == PermissionsProtocol.Status.AUTHORIZED
				or not Cryo.List.find(permissionResponse.missingPermissions, PermissionsProtocol.Permissions.CAMERA_ACCESS)
			local hasMicPermissionsResponse = permissionResponse.status == PermissionsProtocol.Status.AUTHORIZED
				or not Cryo.List.find(permissionResponse.missingPermissions, PermissionsProtocol.Permissions.MICROPHONE_ACCESS)

			hasCameraPermissions = hasCameraPermissionsResponse
			hasMicPermissions = hasMicPermissionsResponse

			local response = {
				hasCameraPermissions = hasCameraPermissions,
				hasMicPermissions = hasMicPermissions,
			}

			-- Notify all callback listeners of the result.
			for _, callback in callbackQueue do
				callback(response)
			end

			callbackQueue = {}
			inProgress = false
		end)
	end
end
