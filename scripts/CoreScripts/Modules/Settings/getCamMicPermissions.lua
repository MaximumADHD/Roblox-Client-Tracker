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

type Table = { [any]: any }
type Array<T> = { T }

local hasCameraPermissions
local hasMicPermissions
local requestPermissionsQueue: any = {}
local inProgress = false

export type PermissionsToCheck = { any? }

export type UserSettings = {
	isVoiceEnabledUserSettings: boolean,
	isCameraEnabledUserSettings: boolean,
}

-- Do not request permissions if the user has not enabled them
-- in their roblox account settings.
local function removePermissionsBasedOnUserSetting(userSettings: UserSettings, permissionsToCheck: Array<string>): Array<string>
	if not userSettings.isCameraEnabledUserSettings and Cryo.List.find(permissionsToCheck, PermissionsProtocol.Permissions.CAMERA_ACCESS) then
		permissionsToCheck = Cryo.List.removeValue(permissionsToCheck, PermissionsProtocol.Permissions.CAMERA_ACCESS)
	end

	if not userSettings.isVoiceEnabledUserSettings and Cryo.List.find(permissionsToCheck, PermissionsProtocol.Permissions.MICROPHONE_ACCESS) then
		permissionsToCheck = Cryo.List.removeValue(permissionsToCheck, PermissionsProtocol.Permissions.MICROPHONE_ACCESS)
	end

	return permissionsToCheck
end

-- TODO Make callback required with removal of FFlagUpdateCamMicPermissioning
local function getCamMicPermissions(callback, permissionsToRequest: Array<string>?)
	local permsToCheck: Array<string> = {}
	if permissionsToRequest then
		permsToCheck = permissionsToRequest
	else
		permsToCheck = {
			PermissionsProtocol.Permissions.MICROPHONE_ACCESS,
			PermissionsProtocol.Permissions.CAMERA_ACCESS,
		}
	end

	-- A function to call the next request in the queue.
	local function invokeNextRequest()
		if requestPermissionsQueue[1] then
			local nextRequest = requestPermissionsQueue[1]
			table.remove(requestPermissionsQueue, 1)
			getCamMicPermissions(nextRequest.callback, nextRequest.permsToCheck)
		end
	end

	-- A request is already in progress. Queue up another call to this function.
	if inProgress then
		table.insert(requestPermissionsQueue, {
			callback = callback,
			permissionsToRequest = permissionsToRequest,
		})

		return
	end

	inProgress = true

	return Promise.new(function(resolve, _)
		-- First check that the user has enabled voice/camera on their roblox account,
		-- and that the universe and place has it enabled as well.
		resolve(getVoiceCameraAccountSettings())
	end):andThen(function(userSettings)
		local permissionsToCheck = removePermissionsBasedOnUserSetting(userSettings, permsToCheck)
		local checkingCamera = Cryo.List.find(permissionsToCheck, PermissionsProtocol.Permissions.CAMERA_ACCESS) ~= nil
		local checkingMic = Cryo.List.find(permissionsToCheck, PermissionsProtocol.Permissions.MICROPHONE_ACCESS) ~= nil

		-- early out if no permissions are to be checked.
		if not permissionsToCheck or #permissionsToCheck <= 0 then
			local response = {
				hasCameraPermissions = false,
				hasMicPermissions = false,
			}

			callback(response)
			return
		end
		-- First check if permissions were already given.
		return PermissionsProtocol:hasPermissions(permissionsToCheck):andThen(function(hasPermissionsResult)
			-- If permissions have already granted
			if hasPermissionsResult.status == PermissionsProtocol.Status.AUTHORIZED then
				local response = {
					hasCameraPermissions = checkingCamera,
					hasMicPermissions = checkingMic,
				}

				callback(response)
				inProgress = false
				invokeNextRequest()
				return hasPermissionsResult
			else
				-- Requesting any permissions that have not been given yet.
				return PermissionsProtocol:requestPermissions(permissionsToCheck):andThen(function(requestPermissionsResult)
					-- If the return value is a table, that means permissions have different values.
					if typeof(requestPermissionsResult) == "table" then
						local hasCameraPermissionsResponse = checkingCamera and (requestPermissionsResult.status == PermissionsProtocol.Status.AUTHORIZED
							or not Cryo.List.find(requestPermissionsResult.missingPermissions, PermissionsProtocol.Permissions.CAMERA_ACCESS))
						local hasMicPermissionsResponse = checkingMic and (requestPermissionsResult.status == PermissionsProtocol.Status.AUTHORIZED
							or not Cryo.List.find(requestPermissionsResult.missingPermissions, PermissionsProtocol.Permissions.MICROPHONE_ACCESS))
			
						hasCameraPermissions = hasCameraPermissionsResponse
						hasMicPermissions = hasMicPermissionsResponse
					else
						-- If all permissions were authorized
						if requestPermissionsResult == PermissionsProtocol.Status.AUTHORIZED then
							hasCameraPermissions = checkingCamera
							hasMicPermissions = checkingMic
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

					callback(response)
					inProgress = false
					invokeNextRequest()

					return requestPermissionsResult
				end)
			end
		end)
	end)
end

return getCamMicPermissions
