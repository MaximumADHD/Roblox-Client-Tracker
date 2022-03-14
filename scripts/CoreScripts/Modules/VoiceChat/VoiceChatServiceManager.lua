--!nocheck
-- We're not checking this file because luau currently doesn't know about Enum.VoiceChatState
local CorePackages = game:GetService("CorePackages")
local Promise = require(CorePackages.Promise)
local Roact = require(CorePackages.Roact)
local PermissionsProtocol = require(CorePackages.UniversalApp.Permissions.PermissionsProtocol)
local CoreGui = game:GetService("CoreGui")
local runService = game:GetService('RunService')
local SoundService = game:GetService("SoundService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local log = require(RobloxGui.Modules.Logger):new(script.Name)

local GetFFlagEnableVoiceChatOptionsDualServiceOutputs = require(RobloxGui.Modules.Flags.getFFlagEnableVoiceChatOptionsDualServiceOutputs)
local GetFFlagEnableVoiceChatRejoinOnBlock = require(RobloxGui.Modules.Flags.GetFFlagEnableVoiceChatRejoinOnBlock)
local GetFFlagEnableVoiceChatMuteOnBlock = require(RobloxGui.Modules.Flags.GetFFlagEnableVoiceChatMuteOnBlock)
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
local GetFFlagLazyLoadPlayerBlockedEvent = require(RobloxGui.Modules.Flags.GetFFlagLazyLoadPlayerBlockedEvent)
local GetFFlagDeferredBlockStatusChange = require(RobloxGui.Modules.Flags.GetFFlagDeferredBlockStatusChange)
local GetFFlagPlayerListAnimateMic = require(RobloxGui.Modules.Flags.GetFFlagPlayerListAnimateMic)
local GetFFlagOldMenuUseSpeakerIcons = require(RobloxGui.Modules.Flags.GetFFlagOldMenuUseSpeakerIcons)

local Constants = require(script.Parent.Constants)
local GetFFlagModerationByProxyUserBanNotification = require(RobloxGui.Modules.Flags.GetFFlagModerationByProxyUserBanNotification)
local VoiceChatPrompt = require(RobloxGui.Modules.VoiceChatPrompt.Components.VoiceChatPrompt)
local VoiceChatPromptType = require(RobloxGui.Modules.VoiceChatPrompt.PromptType)
local GetShowAgeVerificationOverlay = require(RobloxGui.Modules.VoiceChat.Requests.GetShowAgeVerificationOverlay)
local GetInformedOfBan = require(RobloxGui.Modules.VoiceChat.Requests.GetInformedOfBan)
local PostInformedOfBan = require(RobloxGui.Modules.VoiceChat.Requests.PostInformedOfBan)
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

function VoiceChatServiceManager.new(VoiceChatService, HttpRbxApiService, PermissionsService, BlockStatusChanged)
	local self = setmetatable({
		service = VoiceChatService,
		HttpRbxApiService = HttpRbxApiService,
		PermissionsService = PermissionsService,
		BlockStatusChanged = BlockStatusChanged,
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
	return function(...) return t[k](t, ...) end
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

			return Promise.reject()
		elseif not self.service then
			log:debug("VoiceChatService is not set after init")

			return Promise.reject()
		else
			return Promise.resolve()
		end			
	end)
end

function VoiceChatServiceManager:getService()
	return self.service
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

function VoiceChatServiceManager:userAndPlaceCanUseVoice(universeId)
	local result = GetShowAgeVerificationOverlay(bind(self, 'GetRequest'), tostring(game.GameId), tostring(game.PlaceId))
	if not result then
		return false
	end
	local universePlaceSettings = result.universePlaceVoiceEnabledSettings
	local userSettings = result.voiceSettings
	log:trace("Voice settings endpoint returned {}", result)

	if GetFFlagVCPromptEarlyOut() and universePlaceSettings and not universePlaceSettings.isUniverseEnabledForVoice then
		-- We don't need to show any of these if the universe isn't voice enabled
		return false
	end

	self.bannedUntil = nil
	if GetFFlagModerationByProxyUserBanNotification() and userSettings and userSettings.isBanned then
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

			return Promise.reject()
		end
		log:debug("Permission status {}", permissionResponse.status)

		local permissionGranted = permissionResponse.status == PermissionsProtocol.Status.AUTHORIZED
		if GetFFlagVoiceCheckLocalNetworkSet() then
			if permissionGranted then
				return Promise.resolve()
			else
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

		if GetFFlagModerationByProxyUserBanNotification() then
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
		else
			self.voiceChatPromptInstance = Roact.mount(Roact.createElement(VoiceChatPrompt, {
				promptSignal = self.promptSignal.Event,
				errorText = errorText,
				onReadyForSignal = onReadyForSignal,
			}), CoreGui, "RobloxVoiceChatPromptGui")
		end
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

function VoiceChatServiceManager:GetIcon(name, folder, scale)
	return getIconSrc(name, folder, scale)
end

function VoiceChatServiceManager:SetupParticipantListeners()
	self:ensureInitialized("setup participant listeners")
	if not self.participants then
		self.participants = {}
		-- TODO: Init the participants list with the "Initial" state when API is ready
		self.service.ParticipantsStateChanged:Connect(function(participantLeft, participantJoined, updatedStates)
			log:trace("Participants state changed")

			for _, userId in ipairs(participantLeft) do
				self.participants[tostring(userId)] = nil
				self.participantLeft:Fire(self.participants, GetFFlagPlayerListAnimateMic() and userId or nil)
			end
			for _ in ipairs(participantJoined) do
				self.participantJoined:Fire(self.participants)
			end
			for _, state in pairs(updatedStates) do
				local userId = state["userId"]
				self.participants[tostring(userId)] = state
			end
			if #updatedStates > 0 then
				self.participantsUpdate:Fire(self.participants)
			end
		end)

		self.service.StateChanged:Connect(function(oldState, newState)
			local inFailedState = newState == Enum.VoiceChatState.Failed
			local newMuted = self.service:IsPublishPaused()
			if GetFFlagEnableErrorIconFix() then
				if newMuted ~= self.localMuted and not inFailedState then
					self.localMuted = newMuted
					self.muteChanged:Fire(newMuted)
				end
			else
				if newMuted ~= self.localMuted then
					self.localMuted = newMuted
					self.muteChanged:Fire(newMuted)
				end
			end
			
			if newState == Enum.VoiceChatState.Leaving then
				self.previousGroupId = self.service:GetGroupId()
				self.previousMutedState = self.service:IsPublishPaused()
			end
			if newState == Enum.VoiceChatState.Ended or inFailedState then
				self.participants = {}
				self.localMuted = nil
				self.participantsUpdate:Fire(self.participants)
				if inFailedState then
					log:debug("State Changed to Failed. Reason: {}", self.service:GetAndClearCallFailureMessage())

				end
				if (oldState == Enum.VoiceChatState.Joining or
					oldState == Enum.VoiceChatState.JoiningRetry or
					oldState == Enum.VoiceChatState.Joined) then
					if newState == Enum.VoiceChatState.Ended then
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
			if GetFFlagLazyLoadPlayerBlockedEvent() then
				self.BlockStatusChanged:Connect(function(userId: number, isBlocked: bool)
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
			else
				local PlayerBlockedEvent, PlayerUnBlockedEvent
				pcall(function()
					PlayerBlockedEvent = StarterGui:GetCore("PlayerBlockedEvent")
					PlayerUnBlockedEvent = StarterGui:GetCore("PlayerUnblockedEvent")	
				end)
				if not (PlayerUnBlockedEvent or PlayerBlockedEvent) then
					return
				end
				PlayerBlockedEvent.Event:Connect(function(player)
					if self.participants[tostring(player.UserId)] then
						if GetFFlagEnableVoiceChatMuteOnBlock() then
							self:ToggleMutePlayer(player.UserId)
						end
	
						if GetFFlagEnableSessionCancelationOnBlock() then
							log:debug("Blocking {}", shorten(player.UserId))
							self.service:SubscribeBlock(player.UserId)
						else
							wait(GetFIntEnableVoiceChatRejoinOnBlockDelay())
							self:RejoinCurrentChannel()
						end
					end
				end)
				PlayerUnBlockedEvent.Event:Connect(function(player)
					if GetFFlagEnableSessionCancelationOnBlock() then
						-- There's no way of knowing if the unblocked player will be in the voice channel, so we always have to disconnect
						log:debug("UnBlocking {}", shorten(player.UserId))
						self.service:SubscribeUnblock(player.UserId)
					else
						wait(GetFIntEnableVoiceChatRejoinOnBlockDelay())
						self:RejoinCurrentChannel()
					end
					if GetFFlagEnableVoiceChatMuteOnBlock() then
						self.service:SubscribePause(
							player.UserId,
							false
						)
					end
				end)
			end
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

function VoiceChatServiceManager:RejoinCurrentChannel()
	pcall(function()
		local groupId = self.service:GetGroupId()
		if groupId and groupId ~= "" then
			local muted = self.service:IsPublishPaused()
			self.service:Leave()
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
		if GetFFlagEnableVoiceChatOptionsDualServiceOutputs() then
			setVCSOutput(deviceName)
		end
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
		if GetFFlagEnableVoiceChatOptionsDualServiceOutputs() then
			return self.service:GetSpeakerDevices()
		else
			-- We're returning these, but because the flag is off they will never be used outside of the below check
			return deviceNames, deviceGuids, selectedIndex
		end
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

return VoiceChatServiceManager
