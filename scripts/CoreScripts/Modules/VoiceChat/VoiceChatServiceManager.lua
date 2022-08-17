local CorePackages = game:GetService("CorePackages")
local MemStorageService = game:GetService("MemStorageService")
local PlayersService = game:GetService("Players")
local Promise = require(CorePackages.Promise)
local Roact = require(CorePackages.Roact)
local Cryo = require(CorePackages.Cryo)
local PermissionsProtocol = require(CorePackages.UniversalApp.Permissions.PermissionsProtocol)
local CoreGui = game:GetService("CoreGui")
local runService = game:GetService('RunService')
local SoundService = game:GetService("SoundService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local log = require(RobloxGui.Modules.Logger):new(script.Name)

local GetFFlagEnableVoiceChatRejoinOnBlock = require(RobloxGui.Modules.Flags.GetFFlagEnableVoiceChatRejoinOnBlock)
local GetFFlagEnableUniveralVoiceToasts = require(RobloxGui.Modules.Flags.GetFFlagEnableUniveralVoiceToasts)
local GetFFlagVoiceCheckLocalNetworkSet = require(RobloxGui.Modules.Flags.GetFFlagVoiceCheckLocalNetworkSet)
local GetFIntEnableVoiceChatRejoinOnBlockDelay = require(RobloxGui.Modules.Flags.GetFIntEnableVoiceChatRejoinOnBlockDelay)
local GetFFlagVoiceChatDUARGate = require(RobloxGui.Modules.Flags.GetFFlagVoiceChatDUARGate)
local GetFFlagEnableVoiceChatLocalMuteUI = require(RobloxGui.Modules.Flags.GetFFlagEnableVoiceChatLocalMuteUI)
local GetFFlagVoiceChatStudioErrorToasts = require(RobloxGui.Modules.Flags.GetFFlagVoiceChatStudioErrorToasts)
local GetFFlagEnableVoiceMicPromptToastFix = require(RobloxGui.Modules.Flags.GetFFlagEnableVoiceMicPromptToastFix)
local GetFFlagEnableVoicePromptReasonText = require(RobloxGui.Modules.Flags.GetFFlagEnableVoicePromptReasonText)
local GetFFlagEnableErrorIconFix = require(RobloxGui.Modules.Flags.GetFFlagEnableErrorIconFix)
local GetFFlagVCPromptEarlyOut = require(RobloxGui.Modules.Flags.GetFFlagVCPromptEarlyOut)
local GetFFlagEnableSessionCancelationOnBlock = require(RobloxGui.Modules.Flags.GetFFlagEnableSessionCancelationOnBlock)
local GetFFlagDeferredBlockStatusChange = require(RobloxGui.Modules.Flags.GetFFlagDeferredBlockStatusChange)
local GetFFlagPlayerListAnimateMic = require(RobloxGui.Modules.Flags.GetFFlagPlayerListAnimateMic)
local GetFFlagOldMenuUseSpeakerIcons = require(RobloxGui.Modules.Flags.GetFFlagOldMenuUseSpeakerIcons)
local GetFFlagClearVoiceStateOnRejoin = require(RobloxGui.Modules.Flags.GetFFlagClearVoiceStateOnRejoin)
local GetFFlagSkipRedundantVoiceCheck = require(CorePackages.AppTempCommon.Flags.GetFFlagSkipRedundantVoiceCheck)
local GetFFlagEnableVoiceRccCheck = require(RobloxGui.Modules.Flags.GetFFlagEnableVoiceRccCheck)
local GetFFlagVoiceAbuseReportsEnabled = require(RobloxGui.Modules.Flags.GetFFlagVoiceAbuseReportsEnabled)
local GetFFlagClearUserFromRecentVoiceDataOnLeave = require(RobloxGui.Modules.Flags.GetFFlagClearUserFromRecentVoiceDataOnLeave)
local GetFIntVoiceUsersInteractionExpiryTimeSeconds = require(RobloxGui.Modules.Flags.GetFIntVoiceUsersInteractionExpiryTimeSeconds)
local GetFFlagEnableLuaVoiceChatAnalytics = require(RobloxGui.Modules.Flags.GetFFlagEnableLuaVoiceChatAnalytics)

local Constants = require(CorePackages.AppTempCommon.VoiceChat.Constants)
local VoiceChatPrompt = require(RobloxGui.Modules.VoiceChatPrompt.Components.VoiceChatPrompt)
local VoiceChatPromptType = require(RobloxGui.Modules.VoiceChatPrompt.PromptType)
local GetShowAgeVerificationOverlay = require(CorePackages.AppTempCommon.VoiceChat.Requests.GetShowAgeVerificationOverlay)
local GetInformedOfBan = require(CorePackages.AppTempCommon.VoiceChat.Requests.GetInformedOfBan)
local PostInformedOfBan = require(CorePackages.AppTempCommon.VoiceChat.Requests.PostInformedOfBan)
local SKIP_VOICE_CHECK_KEY = Constants.SKIP_VOICE_CHECK_KEY
local SKIP_VOICE_CHECK_UNIVERSE_KEY = Constants.SKIP_VOICE_CHECK_UNIVERSE_KEY

local Analytics = require(script.Parent.Analytics)
local HttpService = game:GetService("HttpService")
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local isSubjectToDesktopPolicies = require(RobloxGui.Modules.InGameMenu.isSubjectToDesktopPolicies)
-- We require here because one of the side effects of BlockingUtility.lua sets up PlayerBlockedEvent
local BlockingUtility = require(RobloxGui.Modules.BlockingUtility)

local StarterGui = game:GetService("StarterGui")

local VOICE_STATE = Constants.VOICE_STATE
local VOICE_CHAT_DEVICE_TYPE = Constants.VOICE_CHAT_DEVICE_TYPE
local MIN_VOICE_CHAT_API_VERSION_IS_CONTEXT_ENABLED = Constants.MIN_VOICE_CHAT_API_VERSION_IS_CONTEXT_ENABLED
local USER_INELIGIBLE_WARNING = Constants.USER_INELIGIBLE_WARNING
local PLACE_INELIGIBLE_WARNING = Constants.PLACE_INELIGIBLE_WARNING
local VOICE_CHAT_AVAILABILITY = Constants.VOICE_CHAT_AVAILABILITY
local MIN_VOICE_CHAT_API_VERSION_LOCAL_MIC_ACTIVITY = Constants.MIN_VOICE_CHAT_API_VERSION_LOCAL_MIC_ACTIVITY
local MIN_VOICE_CHAT_API_VERSION = Constants.MIN_VOICE_CHAT_API_VERSION

local VoiceChatServiceManager = {
	available = nil,
	version = nil,
	participants = nil,
	recentUsersInteractionData = nil,
	permissionPromise = nil,
	canUseServicePromise = nil,
	localMuted = nil,
	isTalking = false,
	previousGroupId = nil,
	previousMutedState = nil,
	userEligible = false,
	HttpRbxApiService = HttpRbxApiService,
	PermissionsService = PermissionsProtocol.default,
	participantJoined = Instance.new("BindableEvent"),
	participantLeft = Instance.new("BindableEvent"),
	participantsUpdate = Instance.new("BindableEvent"),
	muteChanged = Instance.new("BindableEvent"),
	talkingChanged = Instance.new("BindableEvent"),
	service = nil,
	voiceEnabled = false,
	VOICE_STATE = VOICE_STATE,
	isBanned = false,
	bannedUntil = nil,
	errorText = nil,
	BlockStatusChanged = nil,
	_mutedAnyone = false,
	VOICE_CHAT_DEVICE_TYPE = VOICE_CHAT_DEVICE_TYPE,
}

function getIconSrc(name, folder)
	local folderStr = folder and folder .. "/" or ""
	return "rbxasset://textures/ui/VoiceChat/" .. folderStr .. name .. ".png"
end

function getIcon(voiceState, level)
	if voiceState == VOICE_STATE.MUTED then
		return getIconSrc("Muted")
	elseif voiceState == VOICE_STATE.CONNECTING then
		return getIconSrc("Connecting")
	elseif voiceState == VOICE_STATE.INACTIVE then
		return getIconSrc("Blank")
	elseif voiceState == VOICE_STATE.TALKING then
		local micLevel = level or math.random()
		local roundedLevel = 20 * math.floor(0.5 + 5*micLevel)
		return level and getIconSrc("Unmuted" .. tostring(roundedLevel)) or getIconSrc("Blank")
	else
		return getIconSrc("Error")
	end
end

VoiceChatServiceManager.__index = VoiceChatServiceManager

function VoiceChatServiceManager.new(VoiceChatService, HttpRbxApiService, PermissionsService, BlockStatusChanged, AnalyticsService)
	local self = setmetatable({
		service = VoiceChatService,
		HttpRbxApiService = HttpRbxApiService,
		PermissionsService = PermissionsService,
		BlockStatusChanged = BlockStatusChanged,
		Analytics = if GetFFlagEnableLuaVoiceChatAnalytics then Analytics.new(AnalyticsService) else nil,
	}, VoiceChatServiceManager)

	local iconStyle = if GetFFlagOldMenuUseSpeakerIcons() then "SpeakerLight" else "MicLight"

	self.MuteStatusIcons = {
		MicOn = self:GetIcon("Unmuted0", iconStyle),
		MicOff = self:GetIcon("Muted", iconStyle),
		MicDisabled = self:GetIcon("Muted", iconStyle),
		Loading = self:GetIcon("Connecting", iconStyle),
		Error = self:GetIcon("Error", iconStyle),
	}

	self.PlayerMuteStatusIcons = {
		MicOn = self:GetIcon("Unmuted0", "MicLight"),
		MicOff = self:GetIcon("Muted", "MicLight"),
		MicDisabled = self:GetIcon("Muted", "MicLight"),
		Loading = self:GetIcon("Connecting", "MicLight"),
		Error = self:GetIcon("Error", "MicLight"),
	}
	return self
end

local VCSManagerNamespace = "[corescripts VCS Manager] "

local function shorten(id)
	return "..." .. string.sub(tostring(id), -4)
end

local function bind(t, k)
	return function(...)
		return t[k](t, ...)
	end
end

function VoiceChatServiceManager:_reportJoinFailed(result, level)
	if GetFFlagEnableLuaVoiceChatAnalytics() then
		self.Analytics:reportVoiceChatJoinResult(false, result, level)
	end
end

function VoiceChatServiceManager:asyncInit()
	if GetFFlagVoiceChatDUARGate() and isSubjectToDesktopPolicies() then
		return Promise.reject()
	end
	if self.service then
		log:trace("Manager already initialized")

		return Promise.resolve()
	end
	return VoiceChatServiceManager:canUseServiceAsync():andThen(function(canUseService)
		local serviceName = "VoiceChatService"
		if game:GetEngineFeature("UseNewVoiceChatService") then
			serviceName = "VoiceChatInternal"
			log:debug("Using VoiceChatInternal")
		end
		local success = pcall(function()
			local service = game:GetService(serviceName)
			if service then
				if
					service:GetVoiceChatApiVersion() < MIN_VOICE_CHAT_API_VERSION_IS_CONTEXT_ENABLED
					or service:IsContextVoiceEnabled()
				then
					self.voiceEnabled = true
					self.service = service
				end
			end
		end)
		if not success then
			log:warning("EnableVoiceChat flag is enabled but GetService panicked")
			self:_reportJoinFailed("getServiceFailed", Analytics.ERROR)

			return Promise.reject()
		elseif not self.service then
			log:debug("VoiceChatService is not set after init")
			self:_reportJoinFailed("contextNotEnabled")

			return Promise.reject()
		else
			return Promise.resolve()
		end
	end)
end

function VoiceChatServiceManager:getService()
	return self.service
end

function VoiceChatServiceManager:GetMutedAnyone()
	return self._mutedAnyone
end

function VoiceChatServiceManager:GetRequest(url, method)
	local success, result = pcall(function()
		local request = self.HttpRbxApiService:GetAsyncFullUrl(url,
			Enum.ThrottlingPriority.Default, Enum.HttpRequestType.Players)
		return HttpService:JSONDecode(request)
	end)
	return success and result
end

function VoiceChatServiceManager:PostRequest(url, method, postBody)
	local success, result = pcall(function()
		local request = self.HttpRbxApiService:PostAsyncFullUrl(url, postBody,
			Enum.ThrottlingPriority.Default, Enum.HttpContentType.ApplicationJson, Enum.HttpRequestType.Players)
		return HttpService:JSONDecode(request)
	end)
	return success and result
end

function VoiceChatServiceManager:userAndPlaceCanUseVoice()
	if GetFFlagSkipRedundantVoiceCheck()
		and MemStorageService:GetItem(SKIP_VOICE_CHECK_UNIVERSE_KEY) == tostring(game.GameId)
		and MemStorageService:GetItem(SKIP_VOICE_CHECK_KEY) == "true"
	then
		log:debug("Skipping Voice check due to cached value")
		MemStorageService:RemoveItem(SKIP_VOICE_CHECK_KEY)
		MemStorageService:RemoveItem(SKIP_VOICE_CHECK_UNIVERSE_KEY)
		return false
	end
	local result = GetShowAgeVerificationOverlay(bind(self, 'GetRequest'), tostring(game.GameId), tostring(game.PlaceId))
	if not result then
		self:_reportJoinFailed("invalidResponse", Analytics.ERROR)
		return false
	end
	local universePlaceSettings = result.universePlaceVoiceEnabledSettings
	local userSettings = result.voiceSettings
	log:trace("Voice settings endpoint returned {}", result)

	if GetFFlagVCPromptEarlyOut() and universePlaceSettings and not universePlaceSettings.isUniverseEnabledForVoice then
		-- We don't need to show any of these if the universe isn't voice enabled
		self:_reportJoinFailed("universeNotEnabled")
		return false
	end

	self.bannedUntil = nil
	if userSettings and userSettings.isBanned then
		local informedOfBanResult = GetInformedOfBan(bind(self, 'GetRequest'))
		if informedOfBanResult and not informedOfBanResult.informedOfBan then
			if userSettings.bannedUntil == nil then
				self:showPrompt(VoiceChatPromptType.VoiceChatSuspendedPermanent)
			else
				self.bannedUntil = userSettings.bannedUntil
				self:showPrompt(VoiceChatPromptType.VoiceChatSuspendedTemporary)
			end
		end
	elseif GetFFlagVoiceChatStudioErrorToasts() and runService:IsStudio() and userSettings and not userSettings.isVoiceEnabled then
		self:showPrompt(VoiceChatPromptType.User)
	elseif GetFFlagVoiceChatStudioErrorToasts() and runService:IsStudio()
		and universePlaceSettings and not universePlaceSettings.isPlaceEnabledForVoice then
		self:showPrompt(
			VoiceChatPromptType.Place,
			GetFFlagEnableVoicePromptReasonText()
				and (table.concat(universePlaceSettings.reasons or {}, '') or nil)
				or nil
		)
	end

	if not universePlaceSettings or not userSettings then
		self:_reportJoinFailed("invalidResponse", Analytics.ERROR)
	elseif not universePlaceSettings.isPlaceEnabledForVoice then
		self:_reportJoinFailed("placeNotEnabled")
	elseif not userSettings.isVoiceEnabled then
		self:_reportJoinFailed("userNotEnabled")
	end

	return universePlaceSettings and userSettings
		and userSettings.isVoiceEnabled
		and universePlaceSettings.isPlaceEnabledForVoice
end

function VoiceChatServiceManager:checkLocalNetworkPermission()
	if GetFFlagVoiceCheckLocalNetworkSet() then
		return self.PermissionsService:hasPermissions({
			PermissionsProtocol.Permissions.LOCAL_NETWORK
		}):andThen(function (permissionResponse)
			return permissionResponse and Promise.resolve() or Promise.reject()
		end)
	end
	return Promise.reject()
end

function VoiceChatServiceManager:requestMicPermission()
	if self.permissionPromise then
		-- We save this so that we only call PermissionProtocol once. It realy doesn't like getting called twice
		log:trace("PermissionProtocol already invoked")

		return self.permissionPromise
	end
	local permissions = {PermissionsProtocol.Permissions.MICROPHONE_ACCESS}
	if game:GetEngineFeature("PermissionsProtocolAllowsLocalNetworkAuthorization") then
		table.insert(permissions, PermissionsProtocol.Permissions.LOCAL_NETWORK)
	end
	self.permissionPromise = self.PermissionsService:requestPermissions(permissions):andThen(function (permissionResponse)
		if not permissionResponse and not permissionResponse.status then
			log:debug("No permission response, rejecting access")
			self:_reportJoinFailed("noPermissionResponse", Analytics.ERROR)
			return Promise.reject()
		end
		log:debug("Permission status {}", permissionResponse.status)

		local permissionGranted = permissionResponse.status == PermissionsProtocol.Status.AUTHORIZED
		if GetFFlagVoiceCheckLocalNetworkSet() then
			if permissionGranted then
				return Promise.resolve()
			else
				self:_reportJoinFailed("missingPermissions")
				local missingPermissions = permissionResponse.missingPermissions
				local networkPermissionDenied = missingPermissions and #missingPermissions == 1
					and missingPermissions[1] == 'LOCAL_NETWORK'
				return networkPermissionDenied and VoiceChatServiceManager:checkLocalNetworkPermission() or Promise.reject()
			end
		else
			return permissionGranted and Promise.resolve() or Promise.reject()
		end
	end):andThen(function()
		-- Check volume settings. Show prompt if volume is 0
		if GetFFlagEnableUniveralVoiceToasts() then
			self:CheckAndShowNotAudiblePrompt()
		end
		return Promise.resolve()
	end):catch(function()
		-- Check mic permission settings. Show prompt if no permission
		if GetFFlagEnableUniveralVoiceToasts() then
			self:CheckAndShowPermissionPrompt()
		end
		return Promise.reject()
	end)
	return self.permissionPromise
end

function VoiceChatServiceManager:canUseServiceAsync()
	if self.available ~= nil or not game:GetEngineFeature("VoiceChatSupported") then
		log:debug("Voice Chat is not Available, rejecting canUseService promise")
		return Promise.reject()
	end

	if not self.canUseServicePromise then
		self.canUseServicePromise = Promise.defer(function(resolve, reject)
			local canUseService = self:userAndPlaceCanUseVoice()
			if not canUseService then
				log:info("Voice access denied")
				-- We set self.available here so that we can early exit next time this method gets called
				self.available = VOICE_CHAT_AVAILABILITY.UserNotAvailable
				reject()
				return
			end
			if game:GetEngineFeature("VoiceChatEnabledRccProperties") and GetFFlagEnableVoiceRccCheck() then
				if not game:IsLoaded() then
					game.Loaded:Wait()
				end
				local VCS = game:GetService("VoiceChatService")
				if not VCS.VoiceChatEnabledForUniverseOnRcc or not VCS.VoiceChatEnabledForPlaceOnRcc then
					log:debug(
						"Disabling voice chat due to RCC Response. Universe: {}, Place: {}",
						VCS.VoiceChatEnabledForUniverseOnRcc,
						VCS.VoiceChatEnabledForPlaceOnRcc
					)

					if not VCS.VoiceChatEnabledForUniverseOnRcc then
						self:_reportJoinFailed("universeNotEnabled")
					elseif not VCS.VoiceChatEnabledForPlaceOnRcc then
						self:_reportJoinFailed("placeNotEnabled")
					end

					self.available = VOICE_CHAT_AVAILABILITY.PlaceNotAvailable
					reject()
					return
				end
			end
			self.userEligible = true
			resolve()
		end):andThen(function()
			return self:requestMicPermission()
		end)
	end
	return self.canUseServicePromise
end

function VoiceChatServiceManager:canUseService()
	if self.available ~= nil or not game:GetEngineFeature("VoiceChatSupported") then
		return false
	end
	local success, result = pcall(function()
		local request = HttpRbxApiService:GetAsyncFullUrl("https://voice.roblox.com/v1/settings",
			Enum.ThrottlingPriority.Default, Enum.HttpRequestType.Players)
		return HttpService:JSONDecode(request)
	end)
	local canUseService = success and result.isVoiceEnabled
	-- Make sure we only call this once
	if not canUseService then
		self.available = VOICE_CHAT_AVAILABILITY.UserNotAvailable
	end
	return canUseService
end

function VoiceChatServiceManager:ensureInitialized(action)
	if not self.service then
		error(VCSManagerNamespace .. "Attempting to " .. action .. " before calling init")
	end
end

function VoiceChatServiceManager:createPromptInstance(onReadyForSignal)
	if not self.voiceChatPromptInstance then
		if self.promptSignal then
			self.promptSignal:Destroy()
			self.promptSignal = nil
		end
		self.promptSignal = Instance.new("BindableEvent")
		local errorText = nil
		if GetFFlagEnableVoicePromptReasonText() then
			errorText = self.errorText
		end

		local banEnd = ""
		if self.bannedUntil ~= nil then
			banEnd = os.date("%x", self.bannedUntil.Seconds)
		end
		self.voiceChatPromptInstance = Roact.mount(Roact.createElement(VoiceChatPrompt, {
			promptSignal = self.promptSignal.Event,
			bannedUntil = banEnd,
			errorText = errorText,
			onReadyForSignal = onReadyForSignal,
			onContinueFunc = function() PostInformedOfBan(bind(self, 'PostRequest'), true) end
		}), CoreGui, "RobloxVoiceChatPromptGui")
	end
end

function VoiceChatServiceManager:showPrompt(promptType, errorText)
	if GetFFlagEnableVoicePromptReasonText() then
		self.errorText = errorText or nil
	end
	if not self.voiceChatPromptInstance then
		self:createPromptInstance(function()
			log:debug("Show Prompt: {}", promptType)
			self.promptSignal:fire(promptType)
		end)
	else
		log:debug("Show Prompt: {}", promptType)
		self.promptSignal:fire(promptType)
	end
end

function VoiceChatServiceManager:CheckAndShowPermissionPrompt()
	local function showPrompt()
		local userEligible = GetFFlagEnableVoiceMicPromptToastFix() and self.userEligible
		if self.voiceEnabled or userEligible then
			self.PermissionsService:hasPermissions({
				PermissionsProtocol.Permissions.MICROPHONE_ACCESS
			}):andThen(function (permissionResponse)
				if permissionResponse and
					permissionResponse.status == PermissionsProtocol.Status.DENIED then
					self:showPrompt(VoiceChatPromptType.Permission)
				end
			end)
		end
	end
	if GetFFlagEnableUniveralVoiceToasts() then
		-- We can't call asyncInit here because in this flow it will be called by asyncInit
		showPrompt()
	else
		self:asyncInit():andThen(function() end):catch(function()
			showPrompt()
		end)
	end
end

function VoiceChatServiceManager:CheckAndShowNotAudiblePrompt()
	if game:GetEngineFeature("VoiceChatSupported") then
		self:asyncInit():andThen(function()
			-- Check volume settings. Show prompt if volume is 0
			if UserSettings().GameSettings.MasterVolume == 0 then
				self:showPrompt(VoiceChatPromptType.NotAudible)
			end
		end):catch(function() end)
	end
end

function VoiceChatServiceManager:InitialJoinFailedPrompt()
	log:debug("JoinByGroupIdToken returns false")

	self:showPrompt(VoiceChatPromptType.Retry)
end

function VoiceChatServiceManager:ToggleMutePlayer(userId: number)
	self:ensureInitialized("mute player " .. userId)
	if GetFFlagVoiceAbuseReportsEnabled() then
		self._mutedAnyone = true
	end
	local requestedMuteStatus = not self.service:IsSubscribePaused(userId)
	log:trace("Setting mute for {} to {}", shorten(userId), requestedMuteStatus)

	self.service:SubscribePause(
		userId,
		requestedMuteStatus
	)
	-- We need to update the state and fire the event locally because toggling local muting doesn't trigger
	-- a participantStateChange for some reason.
	for _, player in pairs(self.participants) do
		if player.userId == userId then
			player.isMutedLocally = requestedMuteStatus
			self.participantsUpdate:Fire(self.participants)
		end
	end
end

function VoiceChatServiceManager:MuteAll(muteState: boolean)
	self:ensureInitialized("mute all")
	if GetFFlagVoiceAbuseReportsEnabled() then
		self._mutedAnyone = true
	end
	self.service:SubscribePauseAll(muteState)
	-- We need to update the state and fire the event locally because toggling local muting doesn't trigger
	-- a participantStateChange for some reason.
	for _, player in pairs(self.participants) do
		player.isMutedLocally = muteState
		self.participantsUpdate:Fire(self.participants)
	end
end


function VoiceChatServiceManager:VoiceStateToIcon(participantState, level)
	local voiceState = VOICE_STATE.INACTIVE
	if not participantState.subscriptionCompleted then
		voiceState = VOICE_STATE.CONNECTING
	elseif participantState.isMutedLocally then
		voiceState = GetFFlagEnableVoiceChatLocalMuteUI() and VOICE_STATE.LOCAL_MUTED or VOICE_STATE.MUTED
	elseif participantState.isMuted then
		voiceState = VOICE_STATE.MUTED
	elseif participantState.isSignalActive then
		voiceState = VOICE_STATE.TALKING
	end

	return getIcon(voiceState, level)
end

function VoiceChatServiceManager:GetIcon(name, folder)
	return getIconSrc(name, folder)
end

export type RecentInteractionData = {[string]: {lastHeardTime: number}}
function VoiceChatServiceManager:getRecentUsersInteractionData(): RecentInteractionData
	self:_updateRecentUsersInteractionData()
	return self.recentUsersInteractionData
end

function VoiceChatServiceManager:_setRecentUserState(userId, newState)
	local oldState = self.recentUsersInteractionData[tostring(userId)] or {}
	local participantInteractionData = Cryo.Dictionary.join(oldState, newState)

	self.recentUsersInteractionData = Cryo.Dictionary.join(self.recentUsersInteractionData, {
		[tostring(userId)] = participantInteractionData
	})
end

function VoiceChatServiceManager:_updateRecentUsersInteractionData()
	local currentTime = os.time()
	local userIdsToRemove = {}

	for userId, interactionData in pairs(self.recentUsersInteractionData) do
		local participant = self.participants[userId]
		local clearOnLeave = GetFFlagClearUserFromRecentVoiceDataOnLeave() and not PlayersService:GetPlayerByUserId(tonumber(userId))
		local clearOnInactive = (currentTime-interactionData.lastHeardTime) >= GetFIntVoiceUsersInteractionExpiryTimeSeconds()
		local isCurrentlyMuted = if not participant then true else participant.isMuted

		if (clearOnInactive and isCurrentlyMuted) or clearOnLeave then
			userIdsToRemove[userId] = Cryo.None
		end
	end

	self.recentUsersInteractionData = Cryo.Dictionary.join(self.recentUsersInteractionData, userIdsToRemove)
end

function VoiceChatServiceManager:SetupParticipantListeners()
	self:ensureInitialized("setup participant listeners")
	if not self.participants then
		self.participants = {}

		if GetFFlagVoiceAbuseReportsEnabled() then
			self.recentUsersInteractionData = {}
		end

		-- TODO: Init the participants list with the "Initial" state when API is ready
		self.service.ParticipantsStateChanged:Connect(function(participantLeft, participantJoined, updatedStates)
			log:trace("Participants state changed")

			for _, userId in ipairs(participantLeft) do
				if GetFFlagVoiceAbuseReportsEnabled() and not GetFFlagClearUserFromRecentVoiceDataOnLeave() then
					local participant = self.participants[tostring(userId)]

					if not participant.isMuted then
						self:_setRecentUserState(userId, {
							lastHeardTime = os.time(),
						})
					end
				end

				self.participants[tostring(userId)] = nil
				self.participantLeft:Fire(self.participants, GetFFlagPlayerListAnimateMic() and userId or nil)
			end
			for _ in ipairs(participantJoined) do
				self.participantJoined:Fire(self.participants)
			end
			for _, state in pairs(updatedStates) do
				local userId = state["userId"]

				if GetFFlagVoiceAbuseReportsEnabled() then
					local lastState = self.participants[userId]

					if not state.isMuted or (lastState and not lastState.isMuted) then
						self:_setRecentUserState(userId, {
							lastHeardTime = os.time(),
							player = PlayersService:GetPlayerByUserId(userId),
						})
					end
				end

				self.participants[tostring(userId)] = state
			end

			if GetFFlagVoiceAbuseReportsEnabled() then
				self:_updateRecentUsersInteractionData()
			end

			if #updatedStates > 0 then
				self.participantsUpdate:Fire(self.participants)
			end
		end)

		self.service.StateChanged:Connect(function(oldState, newState)
			local inFailedState = newState == (Enum::any).VoiceChatState.Failed
			local inConnectingState = newState == (Enum::any).VoiceChatState.Joining
			local newMuted = self.service:IsPublishPaused()
			if GetFFlagEnableErrorIconFix() then
				if newMuted ~= self.localMuted and not inFailedState and not inConnectingState then
					self.localMuted = newMuted
					self.muteChanged:Fire(newMuted)
				elseif inConnectingState then
					self.localMuted = nil
				end
			else
				if newMuted ~= self.localMuted then
					self.localMuted = newMuted
					self.muteChanged:Fire(newMuted)
				end
			end

			if newState == (Enum::any).VoiceChatState.Leaving then
				self.previousGroupId = self.service:GetGroupId()
				self.previousMutedState = self.service:IsPublishPaused()
			end
			if newState == (Enum::any).VoiceChatState.Ended or inFailedState then
				self.participants = {}
				self.localMuted = nil
				self.participantsUpdate:Fire(self.participants)
				if inFailedState then
					log:debug("State Changed to Failed. Reason: {}", self.service:GetAndClearCallFailureMessage())
				end
				if oldState == (Enum::any).VoiceChatState.Joining
					or oldState == (Enum::any).VoiceChatState.JoiningRetry
					or oldState == (Enum::any).VoiceChatState.Joined
				then
					if newState == (Enum::any).VoiceChatState.Ended then
						log:debug("State Changed to Ended from {}", oldState)
					end
					self:showPrompt(VoiceChatPromptType.Retry)
				end
			end
		end)

		if self.service:GetVoiceChatApiVersion() >= MIN_VOICE_CHAT_API_VERSION_LOCAL_MIC_ACTIVITY then
			self.service.PlayerMicActivitySignalChange:Connect(function(result)
				self.isTalking = result.isActive
				if not self.localMuted then
					self.talkingChanged:Fire(self.isTalking)
				end
			end)
		end

		if GetFFlagEnableVoiceChatRejoinOnBlock() then
			self.BlockStatusChanged:Connect(function(userId: number, isBlocked: boolean)
				if isBlocked then
					if self.participants[tostring(userId)] then
						if GetFFlagEnableSessionCancelationOnBlock() then
							log:debug("Blocking {}", shorten(userId))
							self.service:SubscribeBlock(userId)
						else
							wait(GetFIntEnableVoiceChatRejoinOnBlockDelay())
							self:RejoinCurrentChannel()
						end
					end
				else
					if GetFFlagEnableSessionCancelationOnBlock() then
						-- There's no way of knowing if the unblocked player will be in the voice channel, so we always have to disconnect
						log:debug("UnBlocking {}", shorten(userId))
						self.service:SubscribeUnblock(userId)
					else
						wait(GetFIntEnableVoiceChatRejoinOnBlockDelay())
						self:RejoinCurrentChannel()
					end
				end
			end)
		end
	end
end

function VoiceChatServiceManager:ToggleMic()
	self:ensureInitialized("toggle mic")
	if self.localMuted == nil then
		-- Not connected, so don't try and toggle anything.
		return
	end
	local newMuted = not self.service:IsPublishPaused()
	log:trace("Setting self mute to {}", newMuted)

	self.service:PublishPause(newMuted)
	self.localMuted = newMuted
	self.muteChanged:Fire(newMuted)
	if not self.localMuted then
		self.talkingChanged:Fire(self.isTalking)
	end
end

function VoiceChatServiceManager:SubscribeRetry(userId: number)
	self:ensureInitialized("subscribe retry")
	log:debug("Attempting to retry connection to user: {}", shorten(userId))
	self.service:SubscribeRetry(userId)
end

function VoiceChatServiceManager:RejoinCurrentChannel()
	pcall(function()
		local groupId = self.service:GetGroupId()
		if groupId and groupId ~= "" then
			local muted = self.service:IsPublishPaused()
			self.service:Leave()
			if GetFFlagClearVoiceStateOnRejoin() then
				log:debug('Rejoining current channel {}', groupId)
				-- Resets the UI on rejoin, as "Leave" doesn't seem to send any events in this case
				self.participants = {}
				self.participantsUpdate:Fire(self.participants)
			end
			local joinInProgress = self.service:JoinByGroupIdToken(groupId, muted)
			if not joinInProgress then
				VoiceChatServiceManager:InitialJoinFailedPrompt()
			end
		end
	end)
end

function VoiceChatServiceManager:RejoinPreviousChannel()
	local groupId = self.previousGroupId
	local muted = self.previousMutedState
	log:debug("Rejoining previous channel {} with mute status {}", groupId, muted)

	pcall(function()
		if groupId and groupId ~= "" then
			self.service:Leave()
			local joinInProgress = self.service:JoinByGroupIdToken(groupId, muted)
			if not joinInProgress then
				VoiceChatServiceManager:InitialJoinFailedPrompt()
			end
		end
	end)
end

local function isValidDeviceList(deviceNames, deviceGuids, index)
	return deviceNames and deviceGuids and index and #deviceNames > 0 and index > 0
		and index <= #deviceNames and #deviceNames == #deviceGuids
end

local function setVCSOutput(soundServiceOutputName, VCService)
	local VCSSuccess, VCSDeviceNames, VCSDeviceGuids, VCSIndex = pcall(function ()
		return VCService:GetSpeakerDevices()
	end)

	if VCSSuccess
		and isValidDeviceList(VCSDeviceNames, VCSDeviceGuids, VCSIndex) then

		-- Find the matching VCS Device
		local VCSDeviceIndex = 0
		for deviceIndex, deviceName in ipairs(VCSDeviceNames) do
			if deviceName == soundServiceOutputName then
				VCSDeviceIndex = deviceIndex
			end
		end

		if VCSDeviceIndex > 0 then
			log:info("[OutputDeviceSelection] Setting VCS Speaker Device To {} {}",
				VCSDeviceNames[VCSDeviceIndex], VCSDeviceGuids[VCSDeviceIndex])
			VCService:SetSpeakerDevice(
				VCSDeviceNames[VCSDeviceIndex],
				VCSDeviceGuids[VCSDeviceIndex]
			)
		else
			log:warning("Could not find equivalent VoiceChatService Device")
		end
	else
		log:warning("Could not connect to Voice Chat Service to change Output Device")
	end
end

function VoiceChatServiceManager:SwitchDevice(deviceType, deviceName, deviceGuid)
	if deviceType == VOICE_CHAT_DEVICE_TYPE.Input then
		self.service:SetMicDevice(deviceName, deviceGuid)
		-- TODO: This will be removed when set device API refactoring is done
		log:info("[OutputDeviceSelection] Setting VCS Mic Device To {} {}",
			deviceName, deviceGuid)
		log:info("[OutputDeviceSelection] Rejoining Voice Chat")
		self:RejoinCurrentChannel()
	else
		SoundService:SetOutputDevice(deviceName, deviceGuid)
		log:info("[OutputDeviceSelection] Setting SS Speaker Device To {} {}", deviceName, deviceGuid)
		setVCSOutput(deviceName)
	end
end

function VoiceChatServiceManager:GetDevices(deviceType)
	local soundServiceSuccess, deviceNames, deviceGuids, selectedIndex = pcall(function()
		if deviceType == VOICE_CHAT_DEVICE_TYPE.Input then
			return self.service:GetMicDevices()
		else
			return SoundService:GetOutputDevices()
		end
	end)

	-- The following is to add an additional check to ensure that VCS:GetSpeakerDevices() and SoundService:GetOutputDevices() are returning the same results.
	-- Otherwise we throw an error.
	local VCSSuccess, VCSDeviceNames, VCSDeviceGuids, VCSIndex = pcall(function ()
		return self.service:GetSpeakerDevices()
	end)

	local deviceOutputsAreConsistent = soundServiceSuccess and VCSSuccess and isValidDeviceList(deviceNames, deviceGuids, selectedIndex)
		and isValidDeviceList(VCSDeviceNames, VCSDeviceGuids, VCSIndex)
	log:debug("Device names found: {}", table.concat(deviceNames or {}, ", "))

	return deviceOutputsAreConsistent, deviceNames, deviceGuids, selectedIndex
end

function VoiceChatServiceManager:VoiceChatAvailable()
	local service = self.service
	if self.available == nil then
		if service then
			self.version = service:GetVoiceChatApiVersion()
			if self.version >= MIN_VOICE_CHAT_API_VERSION then
				self.available = service:GetVoiceChatAvailable()
				while self.available == VOICE_CHAT_AVAILABILITY.Checking do
					wait(1)
					self.available = service:GetVoiceChatAvailable()
				end
			end
		end
	end
	-- Ternary is for type coersion, that way we never return nil
	return (service and true or false)
		and self.version >= MIN_VOICE_CHAT_API_VERSION
		and self.available == VOICE_CHAT_AVAILABILITY.Available
end

function VoiceChatServiceManager:UnmountPrompt()
	if self.voiceChatPromptInstance ~= nil then
		Roact.unmount(self.voiceChatPromptInstance)
	end
end

VoiceChatServiceManager.default = VoiceChatServiceManager.new(
	nil, HttpRbxApiService, PermissionsProtocol.default,
	GetFFlagDeferredBlockStatusChange() and BlockingUtility:GetAfterBlockedStatusChangedEvent() or BlockingUtility:GetBlockedStatusChangedEvent()
)

export type VoiceChatServiceManager = typeof(VoiceChatServiceManager.default)

return VoiceChatServiceManager
