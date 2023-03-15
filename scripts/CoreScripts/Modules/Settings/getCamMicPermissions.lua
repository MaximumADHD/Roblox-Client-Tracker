--[[
	Multi functional script. Will first obtain Roblox User Settings if they
	have allowed camera and microphone access to Roblox through their account settings.

	Next, retrieves camera and microphone device permissions. MessageBus has a bug where
	it cannot handle multiple requests at once. This helper function
	will call once and store the values for future callers. It implements a
	request queue in the case this function is called multiple times
	before obtaining the permissions.

	Tracker: AVBURST-10621

	Response format for callbacks:
	{
		hasCameraPermissions = bool,
		hasMicPermissions = bool,
	}

	Otherwise the response from PermissionsProtocol is returned directly.
]]
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local Cryo = require(CorePackages.Cryo)
local PermissionsProtocol = require(CorePackages.Workspace.Packages.PermissionsProtocol).PermissionsProtocol.default
local getVoiceCameraAccountSettings = require(CoreGui.RobloxGui.Modules.Settings.getVoiceCameraAccountSettings)
local Promise = require(CorePackages.Promise)

local GetFFlagUpdateCamMicPermissioning = require(CoreGui.RobloxGui.Modules.Settings.Flags.GetFFlagUpdateCamMicPermissioning)

type Table = { [any]: any }
type Array<T> = { T }

local hasCameraPermissions
local hasMicPermissions
local callbackQueue: Table = {}
local inProgress = false

export type UserSettings = {
	isVoiceEnabledUserSettings: boolean,
	isCameraEnabledUserSettings: boolean,
}

local function invokeCallbacks(response)
	-- Notify all callback listeners of the result.
	for index, callback in callbackQueue do
		callback(response)
	end
end

-- Do not request permissions if the user has not enabled them
-- in their roblox account settings.
local function getPermissionsToRequest(userSettings: UserSettings, overridePermissions: Array<string>?)
	local permissionsToRequest: Array<string> = {}

	if userSettings.isCameraEnabledUserSettings then
		table.insert(permissionsToRequest, PermissionsProtocol.Permissions.CAMERA_ACCESS)
	end

	if userSettings.isVoiceEnabledUserSettings then
		table.insert(permissionsToRequest, PermissionsProtocol.Permissions.MICROPHONE_ACCESS)
	end

	if overridePermissions then
		permissionsToRequest = overridePermissions
	end

	return permissionsToRequest
end

if GetFFlagUpdateCamMicPermissioning() then
	return function(callback, overridePermissions: Array<string>?)
		-- A request is already in progress, add the callback to the queue.
		if inProgress and callback then
			table.insert(callbackQueue, callback)
			return
		end

		inProgress = true
		if callback then
			table.insert(callbackQueue, callback)
		end

		-- Default Permissions to check for.
		local permissions: Array<string> = {
			PermissionsProtocol.Permissions.CAMERA_ACCESS,
			PermissionsProtocol.Permissions.MICROPHONE_ACCESS,
		}

		if overridePermissions then
			permissions = overridePermissions
		end

		return Promise.new(function(resolve, _)
			-- First check that the user has enabled voice/camera on their roblox account,
			-- and that the universe and place has it enabled as well.
			resolve(getVoiceCameraAccountSettings())
		end):andThen(function(userSettings)
			-- First check if permissions were already given.
			return PermissionsProtocol:hasPermissions(permissions):andThen(function(hasPermissionsResult)
				-- If permissions have already granted
				if hasPermissionsResult.status == PermissionsProtocol.Status.AUTHORIZED then
					local response = {
						hasCameraPermissions = userSettings.isCameraEnabledUserSettings,
						hasMicPermissions = userSettings.isVoiceEnabledUserSettings,
					}

					invokeCallbacks(response)
					inProgress = false
					callbackQueue = {}

					return hasPermissionsResult
				else
					local permissionsToRequest: Array<string> = getPermissionsToRequest(userSettings, overridePermissions)
					-- Requesting any permissions that have not been given yet.
					return PermissionsProtocol:requestPermissions(permissionsToRequest):andThen(function(requestPermissionsResult)
						-- If the return value is a table, that means permissions have different values.
						if typeof(requestPermissionsResult) == "table" then
							local hasCameraPermissionsResponse = requestPermissionsResult.status == PermissionsProtocol.Status.AUTHORIZED
								or not Cryo.List.find(requestPermissionsResult.missingPermissions, PermissionsProtocol.Permissions.CAMERA_ACCESS)
							local hasMicPermissionsResponse = requestPermissionsResult.status == PermissionsProtocol.Status.AUTHORIZED
								or not Cryo.List.find(requestPermissionsResult.missingPermissions, PermissionsProtocol.Permissions.MICROPHONE_ACCESS)
				
							hasCameraPermissions = hasCameraPermissionsResponse
							hasMicPermissions = hasMicPermissionsResponse
						else
							-- If all permissions were authorized
							if requestPermissionsResult == PermissionsProtocol.Status.AUTHORIZED then
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

						invokeCallbacks(response)
				
						callbackQueue = {}
						inProgress = false

						return requestPermissionsResult
					end)
				end
			end)
		end)
	end
else
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
	end
end
