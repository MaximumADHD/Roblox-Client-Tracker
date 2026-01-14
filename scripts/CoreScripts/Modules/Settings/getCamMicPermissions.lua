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
local AnalyticsService = game:GetService("RbxAnalyticsService")
local RunService = game:GetService("RunService")
local VideoCaptureService = game:GetService("VideoCaptureService")

local Cryo = require(CorePackages.Packages.Cryo)
local PermissionsProtocol = require(CorePackages.Workspace.Packages.PermissionsProtocol).PermissionsProtocol.default
local cameraDevicePermissionGrantedSignal =
	require(CoreGui.RobloxGui.Modules.Settings.cameraDevicePermissionGrantedSignal)
local MicrophoneDevicePermissionsLogging =
	require(CoreGui.RobloxGui.Modules.Settings.Resources.MicrophoneDevicePermissionsLogging)

local Promise = require(CorePackages.Packages.Promise)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local TrackerMenu = require(RobloxGui.Modules.Tracker.TrackerMenu)
local TrackerPromptType = require(RobloxGui.Modules.Tracker.TrackerPromptType)

local FFlagAvatarChatCoreScriptSupport =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagAvatarChatCoreScriptSupport()
local GetFFlagSelfieViewEnabled = require(CoreGui.RobloxGui.Modules.SelfieView.Flags.GetFFlagSelfieViewEnabled)
local GetFFlagAvatarChatServiceEnabled =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagAvatarChatServiceEnabled
local getFFlagDoNotPromptCameraPermissionsOnMount =
	require(RobloxGui.Modules.Flags.getFFlagDoNotPromptCameraPermissionsOnMount)
local getFFlagEnableAnalyticsForCameraDevicePermissions =
	require(RobloxGui.Modules.Flags.getFFlagEnableAnalyticsForCameraDevicePermissions)
local GetFFlagJoinWithoutMicPermissions =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagJoinWithoutMicPermissions
local FFlagCheckCameraAvailabilityBeforePermissions =
	game:DefineFastFlag("CheckCameraAvailabilityBeforePermissions", false)
local FFlagSkipVoicePermissionCheck = game:DefineFastFlag("DebugSkipVoicePermissionCheck", false)

local AvatarChatService: any = if GetFFlagAvatarChatServiceEnabled() then game:GetService("AvatarChatService") else nil

type Table = { [any]: any }
type Array<T> = { T }

local hasCameraPermissions
local hasMicPermissions
local requestPermissionsQueue: any = {}
local inProgress = false

export type PermissionsToCheck = { any? }

export type AllowedSettings = {
	isVoiceEnabled: boolean,
	isCameraEnabled: boolean,
}

-- Do not request permissions if the user has not enabled them
-- in their roblox account settings.
local function removePermissionsBasedOnUserSetting(
	allowedSettings: AllowedSettings,
	permissionsToCheck: Array<string>,
	shouldNotRequestPerms: boolean?
): Array<string>
	if
		not allowedSettings.isCameraEnabled
		and Cryo.List.find(permissionsToCheck, PermissionsProtocol.Permissions.CAMERA_ACCESS)
	then
		permissionsToCheck = Cryo.List.removeValue(permissionsToCheck, PermissionsProtocol.Permissions.CAMERA_ACCESS)
	end

	if GetFFlagJoinWithoutMicPermissions() then
		if
			not allowedSettings.isVoiceEnabled
				and Cryo.List.find(permissionsToCheck, PermissionsProtocol.Permissions.MICROPHONE_ACCESS)
			or shouldNotRequestPerms == nil
		then
			permissionsToCheck =
				Cryo.List.removeValue(permissionsToCheck, PermissionsProtocol.Permissions.MICROPHONE_ACCESS)
		end
	-- We want to ignore any mic permissions checks when shouldNotRequestPerms unset
	else
		if
			not allowedSettings.isVoiceEnabled
			and Cryo.List.find(permissionsToCheck, PermissionsProtocol.Permissions.MICROPHONE_ACCESS)
		then
			permissionsToCheck =
				Cryo.List.removeValue(permissionsToCheck, PermissionsProtocol.Permissions.MICROPHONE_ACCESS)
		end
	end

	if
		FFlagSkipVoicePermissionCheck
		and Cryo.List.find(permissionsToCheck, PermissionsProtocol.Permissions.MICROPHONE_ACCESS)
	then
		permissionsToCheck =
			Cryo.List.removeValue(permissionsToCheck, PermissionsProtocol.Permissions.MICROPHONE_ACCESS)
	end

	if FFlagCheckCameraAvailabilityBeforePermissions then
		if Cryo.List.find(permissionsToCheck, PermissionsProtocol.Permissions.CAMERA_ACCESS) then
			local cameraDevices = VideoCaptureService:GetCameraDevices()
			local noEligibleCameraConnected = Cryo.isEmpty(cameraDevices)
			if noEligibleCameraConnected then
				permissionsToCheck =
					Cryo.List.removeValue(permissionsToCheck, PermissionsProtocol.Permissions.CAMERA_ACCESS)
			end
		end
	end

	return permissionsToCheck
end

local function requestPermissions(
	allowedSettings: AllowedSettings,
	callback,
	invokeNextRequest,
	permsToCheck,
	shouldNotRequestPerms: boolean?,
	context: string?
)
	local cacheCamera = true
	local cacheMic = true
	if FFlagAvatarChatCoreScriptSupport or GetFFlagSelfieViewEnabled() then
		cacheCamera = Cryo.List.find(permsToCheck, PermissionsProtocol.Permissions.CAMERA_ACCESS) ~= nil
		cacheMic = Cryo.List.find(permsToCheck, PermissionsProtocol.Permissions.MICROPHONE_ACCESS) ~= nil
	end

	local permissionsToCheck = removePermissionsBasedOnUserSetting(allowedSettings, permsToCheck, shouldNotRequestPerms)
	local checkingCamera = Cryo.List.find(permissionsToCheck, PermissionsProtocol.Permissions.CAMERA_ACCESS) ~= nil
	local checkingMic = Cryo.List.find(permissionsToCheck, PermissionsProtocol.Permissions.MICROPHONE_ACCESS) ~= nil

	-- early out if no permissions are to be checked.
	if not permissionsToCheck or #permissionsToCheck <= 0 then
		local response = {
			hasCameraPermissions = false,
			hasMicPermissions = false,
		}

		callback(response)
		inProgress = false
		invokeNextRequest()
		return
	end

	if shouldNotRequestPerms == true then
		-- Call PermissionsProtocol:hasPermissions but do not requestPermissions when denied
		return Promise.new(function(resolve, _)
			local hasPermissionAuthorizedResult = {}

			for _, permission in ipairs(permissionsToCheck) do
				local success, result = PermissionsProtocol:hasPermissions({ permission }):await()
				if success then
					hasPermissionAuthorizedResult[permission] = result.status == PermissionsProtocol.Status.AUTHORIZED
				else
					hasPermissionAuthorizedResult[permission] = false
				end
			end

			local response = {
				hasCameraPermissions = hasPermissionAuthorizedResult[PermissionsProtocol.Permissions.CAMERA_ACCESS]
					or false,
				hasMicPermissions = hasPermissionAuthorizedResult[PermissionsProtocol.Permissions.MICROPHONE_ACCESS]
					or false,
			}
			callback(response)
			inProgress = false
			invokeNextRequest()

			resolve(hasPermissionAuthorizedResult)
			return
		end)
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
			if checkingMic and context then
				MicrophoneDevicePermissionsLogging:logPromptImpression({
					didAuthorize = false,
					uiContext = context :: string,
				})
			end
			-- Requesting any permissions that have not been given yet.
			return PermissionsProtocol:requestPermissions(permissionsToCheck):andThen(function(requestPermissionsResult)
				-- If the return value is a table, that means permissions have different values.
				if typeof(requestPermissionsResult) == "table" then
					local hasCameraPermissionsResponse = checkingCamera
						and (
							requestPermissionsResult.status == PermissionsProtocol.Status.AUTHORIZED
							or not Cryo.List.find(
								requestPermissionsResult.missingPermissions,
								PermissionsProtocol.Permissions.CAMERA_ACCESS
							)
						)
					local hasMicPermissionsResponse = checkingMic
						and (
							requestPermissionsResult.status == PermissionsProtocol.Status.AUTHORIZED
							or not Cryo.List.find(
								requestPermissionsResult.missingPermissions,
								PermissionsProtocol.Permissions.MICROPHONE_ACCESS
							)
						)

					hasCameraPermissions = if cacheCamera then hasCameraPermissionsResponse else nil
					hasMicPermissions = if cacheMic then hasMicPermissionsResponse else nil

					-- If camera permissions were authorized, we want to fire the granted signal
					if hasCameraPermissions then
						cameraDevicePermissionGrantedSignal:fire()
					end
				else
					-- If all permissions were authorized
					if requestPermissionsResult == PermissionsProtocol.Status.AUTHORIZED then
						cameraDevicePermissionGrantedSignal:fire()
						hasCameraPermissions = checkingCamera
						hasMicPermissions = checkingMic
					else
						-- Fall back to denied
						hasCameraPermissions = false
						hasMicPermissions = false
					end
				end

				local response = {
					hasCameraPermissions = hasCameraPermissions or false,
					hasMicPermissions = hasMicPermissions or false,
				}

				if getFFlagEnableAnalyticsForCameraDevicePermissions() then
					-- Check if we requested camera permissions
					if checkingCamera then
						local didAuthorize = hasCameraPermissions or false
						local target = if RunService:IsStudio() then "studio" else "client"
						AnalyticsService:SendEventDeferred(target, "avatarChat", "CameraDevicePermissionPrompted", {
							didAuthorize = didAuthorize,
						})
					end
				end

				if checkingMic and context then
					MicrophoneDevicePermissionsLogging:logPromptInteraction({
						didAuthorize = hasMicPermissions :: boolean,
						uiContext = context :: string,
					})
				end

				-- Remove with AVBURST-12354 once the C++ side fixes this.
				if checkingCamera and not hasCameraPermissions then
					if not getFFlagDoNotPromptCameraPermissionsOnMount() then
						-- We will be firing the prompt as well in the component that requests it. This extra toast is unncessary.
						TrackerMenu:showPrompt(TrackerPromptType.VideoNoPermission)
					end
				end

				callback(response)
				inProgress = false
				invokeNextRequest()

				return requestPermissionsResult
			end)
		end
	end)
end

type CachedResult = {
	hasCameraPermissions: boolean,
	hasMicPermissions: boolean,
}

local function tryGetCachedResults(permsToCheck): CachedResult?
	if FFlagSkipVoicePermissionCheck then
		hasMicPermissions = true
	end

	if hasCameraPermissions == nil or hasMicPermissions == nil then
		return nil
	end

	local hasOtherPermissions = false
	for _, permission in permsToCheck do
		if
			permission ~= PermissionsProtocol.Permissions.MICROPHONE_ACCESS
			and permission ~= PermissionsProtocol.Permissions.CAMERA_ACCESS
		then
			hasOtherPermissions = true
		end
	end

	if hasOtherPermissions then
		return nil
	end

	return {
		hasCameraPermissions = hasCameraPermissions or false,
		hasMicPermissions = hasMicPermissions or false,
	}
end

-- TODO Make callback required with removal of FFlagUpdateCamMicPermissioning
-- If shouldNotRequestPerms is true, we only obtain the current state of device permissions instead of requesting them.
-- When called, please include context parameter--it is used for telemetry.
local function getCamMicPermissions(
	callback,
	permissionsToRequest: Array<string>?,
	shouldNotRequestPerms: boolean?,
	context: string?,
	getRawPermission: boolean?
)
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
			getCamMicPermissions(
				nextRequest.callback,
				nextRequest.permissionsToRequest,
				nextRequest.shouldNotRequestPerms,
				nextRequest.context,
				nextRequest.getRawPermission
			)
		end
	end

	if
		(FFlagAvatarChatCoreScriptSupport or GetFFlagSelfieViewEnabled())
		and (not getRawPermission )
	then
		local cachedResults = tryGetCachedResults(permsToCheck)
		if cachedResults then
			callback(cachedResults)
			invokeNextRequest()
			return
		end
	end

	-- A request is already in progress. Queue up another call to this function.
	if inProgress then
		table.insert(requestPermissionsQueue, {
			callback = callback,
			permissionsToRequest = permissionsToRequest,
			shouldNotRequestPerms = shouldNotRequestPerms,
			context = context,
			getRawPermission = getRawPermission,
		})

		return
	end

	inProgress = true

	if getRawPermission then
		return PermissionsProtocol:hasPermissions(permsToCheck):andThen(function(results)
			callback(results)
			inProgress = false
			invokeNextRequest()
		end)
	end

	if FFlagAvatarChatCoreScriptSupport or GetFFlagSelfieViewEnabled() then
		if GetFFlagAvatarChatServiceEnabled() then
			return Promise.new(function(resolve, _)
				if AvatarChatService.ClientFeaturesInitialized then
					local combinedAllowedSettings: AllowedSettings = {
						isVoiceEnabled = AvatarChatService:IsEnabled(
							AvatarChatService.ClientFeatures,
							Enum.AvatarChatServiceFeature.UserAudio
						),
						isCameraEnabled = AvatarChatService:IsEnabled(
							AvatarChatService.ClientFeatures,
							Enum.AvatarChatServiceFeature.UserVideo
						),
					}
					resolve(combinedAllowedSettings)
				else
					local clientFeaturesChangedListener
					clientFeaturesChangedListener = AvatarChatService:GetPropertyChangedSignal("ClientFeatures")
						:Connect(function()
							clientFeaturesChangedListener:Disconnect()
							local combinedAllowedSettings: AllowedSettings = {
								isVoiceEnabled = AvatarChatService:IsEnabled(
									AvatarChatService.ClientFeatures,
									Enum.AvatarChatServiceFeature.UserAudio
								),
								isCameraEnabled = AvatarChatService:IsEnabled(
									AvatarChatService.ClientFeatures,
									Enum.AvatarChatServiceFeature.UserVideo
								),
							}
							resolve(combinedAllowedSettings)
						end)
				end
			end):andThen(function(allowedSettings)
				requestPermissions(
					allowedSettings,
					callback,
					invokeNextRequest,
					permsToCheck,
					shouldNotRequestPerms,
					context
				)
			end)
		end
	end

	return Promise.new(function(resolve, _)
		local noAllowedSettings : AllowedSettings = {
			isVoiceEnabled = false,
			isCameraEnabled = false
		}
		resolve(noAllowedSettings)
	end)
end

return getCamMicPermissions
