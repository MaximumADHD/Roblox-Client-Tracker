--!nonstrict
local CorePackages = game:GetService("CorePackages")
local PlayersService = game:GetService("Players")
local Collections = game:GetService("CollectionService")
local Promise = require(CorePackages.Promise)
local Roact = require(CorePackages.Roact)
local Cryo = require(CorePackages.Cryo)
local LuauPolyfill = require(CorePackages.Packages.LuauPolyfill)
local PermissionsProtocol = require(CorePackages.Workspace.Packages.PermissionsProtocol).PermissionsProtocol
local CoreGui = game:GetService("CoreGui")
local runService = game:GetService("RunService")
local SoundService = game:GetService("SoundService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local NotificationService = game:GetService("NotificationService")
local LocalizationService = game:GetService("LocalizationService")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
local VoiceChatService = game:GetService("VoiceChatService")
local log = require(RobloxGui.Modules.Logger):new(script.Name)

local CoreGuiModules = RobloxGui:WaitForChild("Modules")
local IXPServiceWrapper = require(CoreGuiModules.Common.IXPServiceWrapper)

local GetFFlagEnableUniveralVoiceToasts = require(RobloxGui.Modules.Flags.GetFFlagEnableUniveralVoiceToasts)
local GetFFlagEnableVoiceMicPromptToastFix = require(RobloxGui.Modules.Flags.GetFFlagEnableVoiceMicPromptToastFix)
local GetFFlagEnableVoicePromptReasonText = require(RobloxGui.Modules.Flags.GetFFlagEnableVoicePromptReasonText)
local GetFFlagEnableErrorIconFix = require(RobloxGui.Modules.Flags.GetFFlagEnableErrorIconFix)
local GetFFlagDeferredBlockStatusChange = require(RobloxGui.Modules.Flags.GetFFlagDeferredBlockStatusChange)
local GetFFlagPlayerListAnimateMic = require(RobloxGui.Modules.Flags.GetFFlagPlayerListAnimateMic)
local GetFFlagOldMenuUseSpeakerIcons = require(RobloxGui.Modules.Flags.GetFFlagOldMenuUseSpeakerIcons)
local GetFFlagClearVoiceStateOnRejoin = require(RobloxGui.Modules.Flags.GetFFlagClearVoiceStateOnRejoin)
local GetFFlagEnableVoiceRccCheck = require(RobloxGui.Modules.Flags.GetFFlagEnableVoiceRccCheck)
local GetFFlagClearUserFromRecentVoiceDataOnLeave =
	require(RobloxGui.Modules.Flags.GetFFlagClearUserFromRecentVoiceDataOnLeave)
local GetFIntVoiceUsersInteractionExpiryTimeSeconds =
	require(RobloxGui.Modules.Flags.GetFIntVoiceUsersInteractionExpiryTimeSeconds)
local GetFFlagEnableLuaVoiceChatAnalytics = require(RobloxGui.Modules.Flags.GetFFlagEnableLuaVoiceChatAnalytics)
local GetFFlagVoiceChatUseSoundServiceInputApi =
	require(RobloxGui.Modules.Flags.GetFFlagVoiceChatUseSoundServiceInputApi)
local GetFFlagVoiceChatWatchForMissedSignalROnEventReceived =
	require(RobloxGui.Modules.Flags.GetFFlagVoiceChatWatchForMissedSignalROnEventReceived)
local GetFFlagAvatarChatServiceEnabled = require(RobloxGui.Modules.Flags.GetFFlagAvatarChatServiceEnabled)
local GetFFlagVoiceChatServiceManagerUseAvatarChat =
	require(RobloxGui.Modules.Flags.GetFFlagVoiceChatServiceManagerUseAvatarChat)
local FFlagAvatarChatCoreScriptSupport = require(RobloxGui.Modules.Flags.FFlagAvatarChatCoreScriptSupport)
local GetFFlagLuaConsumePlayerModerated = require(RobloxGui.Modules.Flags.GetFFlagLuaConsumePlayerModerated)
local GetFFlagUseLuaSignalrConsumer = require(RobloxGui.Modules.Flags.GetFFlagUseLuaSignalrConsumer)
local GetFFlagEnableVoiceNudge = require(RobloxGui.Modules.Flags.GetFFlagEnableVoiceNudge)
local GetFFlagAlwaysMountVoicePrompt = require(RobloxGui.Modules.Flags.GetFFlagAlwaysMountVoicePrompt)
local GetFFlagEnableNudgeAnalytics = require(RobloxGui.Modules.Flags.GetFFlagEnableNudgeAnalytics)
local GetFFlagVoiceUseAudioRoutingAPI = require(RobloxGui.Modules.Flags.GetFFlagVoiceUseAudioRoutingAPI)
local GetFFlagLocalMutedNilFix = require(RobloxGui.Modules.Flags.GetFFlagLocalMutedNilFix)
local FFlagMuteNonFriendsEvent = require(RobloxGui.Modules.Flags.FFlagMuteNonFriendsEvent)
local GetFFlagShowMuteToggles = require(RobloxGui.Modules.Settings.Flags.GetFFlagShowMuteToggles)
local GetFFlagJoinWithoutMicPermissions = require(RobloxGui.Modules.Flags.GetFFlagJoinWithoutMicPermissions)

local FFlagEnableCoreVoiceChatModule = require(script.Parent.Flags.GetFFlagEnableCoreVoiceChatModule)()

local VoiceChatCore
-- Once flag is removed, all checks for "VoiceChatCore" presence and "self.coreVoiceManager" can be removed as well
-- Analytics.lua could be removed as well, but checked prior to see if it happens to be required anywhere else outside of this class
-- Constants.lua could also be partially reused from VoiceChatCore rather than current duplicate
-- Just make sure to check the right files, there are RobloxGui.Modules.VoiceChat.Constants and CorePackages.Workspace.Packages.VoiceChat.Constants
-- Types such as type VoiceChatPlaceSettings can be further exported from VoiceChatCore and deleted from here
if FFlagEnableCoreVoiceChatModule then
	VoiceChatCore = require(CorePackages.Workspace.Packages.VoiceChatCore)
end

local FFlagFixNudgeDeniedEvents = game:DefineFastFlag("FixNudgeDeniedEvents", false)
local FFlagFixNonSelfCalls = game:DefineFastFlag("FixNonSelfCalls", false)
local DebugShowAudioDeviceInputDebugger = game:DefineFastFlag("DebugShowAudioDeviceInputDebugger", false)
local FFlagFixMissingPermissionsAnalytics = game:DefineFastFlag("FixMissingPermissionsAnalytics", false)
local FFlagSkipVoicePermissionCheck = game:DefineFastFlag("DebugSkipVoicePermissionCheck", false)

local FFlagAlwaysSetupVoiceListeners = game:DefineFastFlag("AlwaysSetupVoiceListeners", false)
local FFlagOverwriteIsMutedLocally = game:DefineFastFlag("OverwriteIsMutedLocally", false)
local FFlagHideVoiceUIUntilInputExists = game:DefineFastFlag("HideVoiceUIUntilInputExists", false)
local FFlagFixNewAudioAPIEcho = game:DefineFastFlag("FFlagFixNewAudioAPIEcho", false)
local FFlagUpdateDeviceInputPlayerChanged = game:DefineFastFlag("UpdateDeviceInputPlayerChanged", false)
local FFlagSetActiveWhenConnecting = game:DefineFastFlag("SetActiveWhenConnecting", false)
local FFlagHideUIWhenVoiceDefaultDisabled = game:DefineFastFlag("HideUIWhenVoiceDefaultDisabled", false)
local FFlagUseAudioInstanceAdded = game:DefineFastFlag("UseAudioInstanceAdded", false) and game:GetEngineFeature("AudioInstanceAddedApiEnabled")
local FFlagReceiveLikelySpeakingUsers = game:DefineFastFlag("DebugReceiveLikelySpeakingUsers", false)
local FFlagEnableVoiceSignal = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableVoiceSignal()
local FFlagEnqueueVoiceClientJoinOperationLua = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnqueueVoiceClientJoinOperationLua()

if VoiceChatCore then
	FFlagAlwaysSetupVoiceListeners = require(VoiceChatCore.Flags.GetFFlagAlwaysSetupVoiceListeners)()
	FFlagOverwriteIsMutedLocally = require(VoiceChatCore.Flags.GetFFlagOverwriteIsMutedLocally)()
	FFlagHideVoiceUIUntilInputExists = require(VoiceChatCore.Flags.GetFFlagHideVoiceUIUntilInputExists)()
	FFlagFixNewAudioAPIEcho = require(VoiceChatCore.Flags.GetFFlagFixNewAudioAPIEcho)()
	FFlagUpdateDeviceInputPlayerChanged = require(VoiceChatCore.Flags.GetFFlagUpdateDeviceInputPlayerChanged)()
	FFlagSetActiveWhenConnecting = require(VoiceChatCore.Flags.GetFFlagSetActiveWhenConnecting)()
	FFlagHideUIWhenVoiceDefaultDisabled = require(VoiceChatCore.Flags.GetFFlagHideUIWhenVoiceDefaultDisabled)()
	FFlagUseAudioInstanceAdded = require(VoiceChatCore.Flags.GetFFlagUseAudioInstanceAdded)()
	FFlagReceiveLikelySpeakingUsers = require(VoiceChatCore.Flags.GetFFlagReceiveLikelySpeakingUsers)()
end

local getFFlagMicrophoneDevicePermissionsPromptLogging = require(RobloxGui.Modules.Flags.getFFlagMicrophoneDevicePermissionsPromptLogging)
local GetFFlagVoiceBanShowToastOnSubsequentJoins = require(RobloxGui.Modules.Flags.GetFFlagVoiceBanShowToastOnSubsequentJoins)
local GetFFlagUpdateNudgeV3VoiceBanUI = require(RobloxGui.Modules.Flags.GetFFlagUpdateNudgeV3VoiceBanUI)
local GetFFlagEnableInExpVoiceUpsell = require(RobloxGui.Modules.Flags.GetFFlagEnableInExpVoiceUpsell)
local GetFFlagBatchVoiceParticipantsUpdates = require(RobloxGui.Modules.Flags.GetFFlagBatchVoiceParticipantsUpdates)
local GetFIntThrottleParticipantsUpdateMs = require(RobloxGui.Modules.Flags.GetFIntThrottleParticipantsUpdateMs)
local FStringVoiceUIImprovementsIXPLayerName = game:DefineFastString("VoiceUIImprovementsIXPLayerName", "Voice.Exposure")
local FStringThrottleParticipantsUpdateIXPLayerValue =
	game:DefineFastString("ThrottleParticipantsUpdateIXPLayerValue", "ThrottleParticipantsUpdate")
local VoiceChat = require(CorePackages.Workspace.Packages.VoiceChat)
local Constants = VoiceChat.Constants
local GetShowAgeVerificationOverlay = VoiceChat.AgeVerificationOverlay.GetShowAgeVerificationOverlay
local PostRecordUserSeenGeneralModal = VoiceChat.AgeVerificationOverlay.PostRecordUserSeenGeneralModal
local VoiceChatFlags = VoiceChat.Flags
local VoiceConstants = require(RobloxGui.Modules.VoiceChat.Constants)
local VoiceChatPrompt = require(RobloxGui.Modules.VoiceChatPrompt.Components.VoiceChatPrompt)
local AudioDeviceInputDebugger = require(RobloxGui.Modules.VoiceChat.Components.AudioDeviceInputDebugger)
local VoiceChatPromptType = require(RobloxGui.Modules.VoiceChatPrompt.PromptType)
local GetUserSettings = VoiceChat.GetUserSettings
local GetInformedOfBan = VoiceChat.GetInformedOfBan
local PostInformedOfBan = VoiceChat.PostInformedOfBan
local getCamMicPermissions = require(RobloxGui.Modules.Settings.getCamMicPermissions)
local BAN_REASON = VoiceConstants.BAN_REASON

local VCSMAnalytics = require(script.Parent.Analytics)
local Analytics = if VoiceChatCore then VoiceChatCore.Analytics else VCSMAnalytics

local HttpService = game:GetService("HttpService")
local HttpRbxApiService = game:GetService("HttpRbxApiService")
-- We require here because one of the side effects of BlockingUtility.lua sets up PlayerBlockedEvent
local BlockingUtility = require(RobloxGui.Modules.BlockingUtility)
local MicrophoneDevicePermissionsLogging =
	require(RobloxGui.Modules.Settings.Resources.MicrophoneDevicePermissionsLogging)

local AvatarChatService = if GetFFlagAvatarChatServiceEnabled() then game:GetService("AvatarChatService") else nil
local FFlagEasierUnmutingPassMuteStatus = game:DefineFastFlag("EasierUnmutingPassMuteStatus", false)
local ExperienceChat = if FFlagEasierUnmutingPassMuteStatus then require(CorePackages.ExperienceChat) else nil

local GetFFlagUsePostRecordUserSeenGeneralModal = VoiceChatFlags.GetFFlagUsePostRecordUserSeenGeneralModal

local LinkingProtocol = require(CorePackages.Workspace.Packages.LinkingProtocol).LinkingProtocol.default
local CallProtocol = require(CorePackages.Workspace.Packages.CallProtocol).CallProtocol.default
local CallProtocolEnums = require(CorePackages.Workspace.Packages.CallProtocol).Enums

local CoreVoiceManager
local CoreVoiceConstants
if VoiceChatCore then
	CoreVoiceManager = VoiceChatCore.CoreVoiceManager
	CoreVoiceConstants = VoiceChatCore.Constants
end

type VoiceMuteIndividualArgs = VCSMAnalytics.VoiceMuteIndividualArgs
type VoiceMuteGroupArgs = VCSMAnalytics.VoiceMuteGroupArgs
type VoiceMuteSelfArgs = VCSMAnalytics.VoiceMuteSelfArgs

type VoiceChatPlaceSettings = {
	isUniverseEnabledForVoice: boolean,
	isPlaceEnabledForVoice: boolean,
	isUniverseEnabledForAvatarVideo: boolean,
	isPlaceEnabledForAvatarVideo: boolean,
}

type VoiceChatUserSettings = {
	isUserEligible: boolean,
	isVoiceEnabled: boolean,
	isVerifiedForVoice: boolean?,
	isAvatarVideoEligible: boolean,
	isAvatarVideoEnabled: boolean,
	isBanned: boolean,
	bannedUntil: any,
}

type VoiceChatPlaceAndUserSettings = {
	universePlaceVoiceEnabledSettings: VoiceChatPlaceSettings,
	voiceSettings: VoiceChatUserSettings,
}

local VOICE_STATE = Constants.VOICE_STATE
local VOICE_CHAT_DEVICE_TYPE = Constants.VOICE_CHAT_DEVICE_TYPE
local MIN_VOICE_CHAT_API_VERSION_IS_CONTEXT_ENABLED = Constants.MIN_VOICE_CHAT_API_VERSION_IS_CONTEXT_ENABLED
local VOICE_CHAT_AVAILABILITY = Constants.VOICE_CHAT_AVAILABILITY
local MIN_VOICE_CHAT_API_VERSION_LOCAL_MIC_ACTIVITY = Constants.MIN_VOICE_CHAT_API_VERSION_LOCAL_MIC_ACTIVITY
local MIN_VOICE_CHAT_API_VERSION = Constants.MIN_VOICE_CHAT_API_VERSION
local WATCHED_NAMESPACES = Constants.WATCHED_NAMESPACES
local WATCHED_MESSAGE_TYPES = Constants.WATCHED_MESSAGE_TYPES
local PERMISSION_STATE = Constants.PERMISSION_STATE
local VOICE_JOIN_PROGRESS = if VoiceChatCore then CoreVoiceConstants.VOICE_JOIN_PROGRESS else VoiceConstants.VOICE_JOIN_PROGRESS
type WatchedMessageTypes = VoiceChat.WatchedMessageTypes
type EventTable = { [WatchedMessageTypes]: BindableEvent }
type AudioDeviceData = {
	onPlayerChanged: RBXScriptConnection,
	onMutedChanged: RBXScriptConnection,
	onActiveChanged: RBXScriptConnection,
	serverActiveState: boolean,
	analyzer: AudioAnalyzer | nil,
}

type CommunicationPermissions = {
	universePlaceVoiceEnabledSettings: VoiceChatPlaceSettings,
	voiceSettings: VoiceChatUserSettings,
}

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
	NotificationService = NotificationService,
	runService = runService,
	PermissionsService = PermissionsProtocol.default,
	communicationPermissionsResult = nil,
	VoiceJoinProgress = VOICE_JOIN_PROGRESS.Idle,
	VoiceJoinProgressChanged = Instance.new("BindableEvent"),
	participantJoined = Instance.new("BindableEvent"),
	participantLeft = Instance.new("BindableEvent"),
	participantsUpdate = Instance.new("BindableEvent"),
	muteChanged = Instance.new("BindableEvent"),
	muteAllChanged = Instance.new("BindableEvent"),
	attemptVoiceRejoin = Instance.new("BindableEvent"),
	mutedNonFriends = if FFlagMuteNonFriendsEvent then Instance.new("BindableEvent") else nil,
	userAgencySelected = if GetFFlagShowMuteToggles() then Instance.new("BindableEvent") else nil,
	audioDeviceInputAdded = if FFlagHideVoiceUIUntilInputExists then Instance.new("BindableEvent") else nil,
	sendMuteEvent = nil,
	LikelySpeakingUsersEvent = nil,
	muteAll = false,
	mutedPlayers = {} :: { [number]: boolean },
	talkingChanged = Instance.new("BindableEvent"),
	SignalREventTable = {} :: EventTable,
	audioDevices = {} :: { [AudioDeviceInput]: AudioDeviceData },
	service = nil,
	previousSessionId = nil,
	voiceEnabled = false,
	VOICE_STATE = VOICE_STATE,
	permissionState = if GetFFlagJoinWithoutMicPermissions() then PERMISSION_STATE.IDLE else nil,
	isBanned = false,
	bannedUntil = nil,
	errorText = nil,
	BlockStatusChanged = nil,
	isInCall = false,
	callMutedState = false,
	banReason = nil,
	_mutedAnyone = false,
	VOICE_CHAT_DEVICE_TYPE = VOICE_CHAT_DEVICE_TYPE,
	getPermissionsFunction = getCamMicPermissions,
	AvatarChatService = AvatarChatService,
	inExpUpsellEntrypoint = nil,
}

-- Getting/Setting these properties on VoiceChatServiceManager passes through to CoreVoiceManager instance.
-- This allows not to have to change every line where the property is used.
local VOICE_CHAT_CORE_PROPERTIES = LuauPolyfill.Set.new({
	"available",
	"participants",
	"recentUsersInteractionData",
	"permissionPromise",
	"canUseServicePromise",
	"localMuted",
	"isTalking",
	"previousGroupId",
	"previousMutedState",
	"userEligible",
	"sendMuteEvent",
	"LikelySpeakingUsersEvent",
	"mutedPlayers",
	"SignalREventTable",
	"audioDevices",
	"service",
	"previousSessionId",
	"voiceEnabled",
	"permissionState",
	"BlockStatusChanged",
	"isInCall",
	"callMutedState",

	"attemptVoiceRejoin",
	"VoiceJoinProgressChanged",
	"participantJoined",
	"participantLeft",
	"participantsUpdate",
	"muteChanged",
	"audioDeviceInputAdded",
	"talkingChanged",
})

-- Initialized in GetVoiceStateFromEnum
local LOCAL_STATE_MAP = {}
local IN_EXP_VARIANT_TO_PROMPT = {
	[VoiceConstants.IN_EXP_UPSELL_VARIANT.VARIANT1] = VoiceChatPromptType.VoiceConsentModalV1,
	[VoiceConstants.IN_EXP_UPSELL_VARIANT.VARIANT2] = VoiceChatPromptType.VoiceConsentModalV2,
	[VoiceConstants.IN_EXP_UPSELL_VARIANT.VARIANT3] = VoiceChatPromptType.VoiceConsentModalV3,
}

function getIconSrc(name, folder)
	local folderStr = folder and folder .. "/" or ""
	return "rbxasset://textures/ui/VoiceChat/" .. folderStr .. name .. ".png"
end

function getIcon(voiceState, level, folder)
	if voiceState == VOICE_STATE.MUTED then
		return getIconSrc("Muted", folder)
	elseif voiceState == VOICE_STATE.CONNECTING then
		return getIconSrc("Connecting", folder)
	elseif voiceState == VOICE_STATE.INACTIVE then
		return getIconSrc("Blank", folder)
	elseif voiceState == VOICE_STATE.TALKING then
		local micLevel = level or math.random()
		local roundedLevel = 20 * math.floor(0.5 + 5 * micLevel)
		return level and getIconSrc("Unmuted" .. tostring(roundedLevel), folder) or getIconSrc("Blank", folder)
	else
		return getIconSrc("Error", folder)
	end
end

VoiceChatServiceManager.__index = VoiceChatServiceManager

if FFlagEnableCoreVoiceChatModule then
	function VoiceChatServiceManager:__index(index)
		if VOICE_CHAT_CORE_PROPERTIES:has(index) then
			return self.coreVoiceManager[index]
		end
		return rawget(VoiceChatServiceManager, index)
	end

	function VoiceChatServiceManager:__newindex(index, value)
		if VOICE_CHAT_CORE_PROPERTIES:has(index) then
			self.coreVoiceManager[index] = value
		else
			rawset(VoiceChatServiceManager, index, value)
		end
	end
end

function VoiceChatServiceManager.new(
	coreVoiceManager,
	VoiceChatService,
	HttpRbxApiService,
	PermissionsService,
	BlockStatusChanged,
	AnalyticsService,
	NotificationService,
	getPermissionsFunction,
	AvatarChatService
)
	local self = setmetatable({
		service = VoiceChatService,
		HttpRbxApiService = HttpRbxApiService,
		NotificationService = NotificationService,
		PermissionsService = PermissionsService,
		BlockStatusChanged = BlockStatusChanged,
		Analytics = Analytics.new(AnalyticsService),
		getPermissionsFunction = if getPermissionsFunction then getPermissionsFunction else getCamMicPermissions,
		AvatarChatService = AvatarChatService,
		SequenceNumbers = {},
		SignalREventTable = {} :: EventTable,
		coreVoiceManager = coreVoiceManager,
		_mutedAnyone = false,
	}, VoiceChatServiceManager)

	if GetFFlagUseLuaSignalrConsumer() then
		for _, v in WATCHED_MESSAGE_TYPES do
			self.SignalREventTable[v :: WatchedMessageTypes] = Instance.new("BindableEvent")
		end
	end

	-- shouldThrottleParticipantUpdate is only true if and only if FInt > 0 and user is in throttle IXP treatment
	self.shouldThrottleParticipantUpdate = false
	self.participantsStateThrottleTime = 0
	self.lastParticipantsStateUpdate = 0
	self.lastStateUpdateCounter = 0
	if GetFIntThrottleParticipantsUpdateMs() > 0 then
		self.participantsStateThrottleTime = GetFIntThrottleParticipantsUpdateMs() / 1000.0
		local layerFetchSuccess, layerData = pcall(function()
			return IXPServiceWrapper:GetLayerData(FStringVoiceUIImprovementsIXPLayerName)
		end)
		if layerFetchSuccess and layerData and layerData[FStringThrottleParticipantsUpdateIXPLayerValue] then
			self.shouldThrottleParticipantUpdate = true
		end
	end

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

	if FFlagEnableCoreVoiceChatModule then
		self.coreVoiceManager:subscribe('GetPermissions', function (callback, permissions, shouldNotRequestPerms)
			self.getPermissionsFunction(callback, permissions, shouldNotRequestPerms, "VoiceChatServiceManager.requestMicPermission")
		end)
		self.coreVoiceManager:subscribe('OnVoiceParticipantRemoved', function (userId)
			if FFlagEasierUnmutingPassMuteStatus and ExperienceChat.Events.VoiceParticipantRemoved then
				ExperienceChat.Events.VoiceParticipantRemoved(tostring(userId))
			end
		end)
		self.coreVoiceManager:subscribe('OnVoiceParticipantAdded', function (userId)
			if FFlagEasierUnmutingPassMuteStatus and ExperienceChat.Events.VoiceParticipantAdded then
				ExperienceChat.Events.VoiceParticipantAdded(tostring(userId))
			end
		end)
		self.coreVoiceManager:subscribe('OnVoiceParticipantToggleMuted', function (userId, isMuted)
			if
				FFlagEasierUnmutingPassMuteStatus
				and ExperienceChat.Events.VoiceParticipantToggleMuted
			then
				ExperienceChat.Events.VoiceParticipantToggleMuted(tostring(userId), isMuted)
			end
		end)
		self.coreVoiceManager:subscribe('OnUserAndPlaceCanUseVoiceResolved', function (userSettings, universePlaceSettings)
			self:_onUserAndPlaceCanUseVoiceResolved(userSettings, universePlaceSettings)
		end)
		self.coreVoiceManager:subscribe('OnRequestMicPermissionResolved', function ()
			if GetFFlagEnableUniveralVoiceToasts() then
				return self:CheckAndShowNotAudiblePrompt()
			end
		end)
		self.coreVoiceManager:subscribe('OnRequestMicPermissionRejected', function ()
			-- Check mic permission settings. Show prompt if no permission
			if GetFFlagEnableUniveralVoiceToasts() and not FFlagSkipVoicePermissionCheck then
				return self:CheckAndShowPermissionPrompt():finallyReturn(Promise.reject())
			end
		end)
		self.coreVoiceManager:subscribe('OnDevicePlayerChanged', function ()
			self:UpdateAudioDeviceInputDebugger()
		end)
		self.coreVoiceManager:subscribe('OnDeviceActiveChanged', function ()
			self:UpdateAudioDeviceInputDebugger()
		end)
		self.coreVoiceManager:subscribe('OnDeviceMuteChanged', function ()
			self:UpdateAudioDeviceInputDebugger()
		end)
		self.coreVoiceManager:subscribe('OnStateChanged', function ()
			if getFFlagMicrophoneDevicePermissionsPromptLogging() then
				MicrophoneDevicePermissionsLogging:setClientSessionId(self.coreVoiceManager:GetSessionId())
			end
		end)
		self.coreVoiceManager:subscribe('OnAudioDeviceInputAdded', function ()
			self:UpdateAudioDeviceInputDebugger()
		end)
		self.coreVoiceManager:subscribe('OnAudioDeviceInputRemoved', function ()
			self:UpdateAudioDeviceInputDebugger()
		end)
		self.coreVoiceManager:subscribe('OnInitialJoinFailed', function ()
			self:InitialJoinFailedPrompt()
		end)
		self.coreVoiceManager:subscribe('OnPlayerModerated', function ()
			self:ShowPlayerModeratedMessage()
		end)

		self.coreVoiceManager:subscribe('OnRetryRequested', function ()
			self:showPrompt(VoiceChatPromptType.Retry)
		end)
		self.coreVoiceManager:subscribe('OnVoiceToxicityModal', function ()
			log:debug("Showing Voice Toxicity Modal")
			self:showPrompt(VoiceChatPromptType.VoiceToxicityModal)
		end)
		self.coreVoiceManager:subscribe('OnVoiceToxicityToast', function ()
			log:debug("Showing Voice Toxicity Toast")
			self:showPrompt(VoiceChatPromptType.VoiceToxicityToast)
		end)
		self.coreVoiceManager:subscribe('OnPermissionRequested', function ()
			self:showPrompt(VoiceChatPromptType.Permission)
		end)
	end
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
	if self.coreVoiceManager then
		return self.coreVoiceManager:_reportJoinFailed(result, level)
	end
	if GetFFlagEnableLuaVoiceChatAnalytics() then
		self.Analytics:reportVoiceChatJoinResult(false, result, level)
	end
end

function VoiceChatServiceManager:_asyncInit()
	if self.coreVoiceManager then
		return self.coreVoiceManager:_asyncInit()
	end
	self:CheckCallState()
	return (if FFlagFixNonSelfCalls then self else VoiceChatServiceManager)
		:canUseServiceAsync()
		:andThen(function(canUseService)
			if FFlagEnqueueVoiceClientJoinOperationLua then
				local service = game:GetService("VoiceChatService")
				if service then
					service:joinVoice()
					log:debug("Starting Voice Chat Client Join Operation")
				end
			end 
			local serviceName = "VoiceChatService"
			if game:GetEngineFeature("UseNewVoiceChatService") then
				serviceName = "VoiceChatInternal"
				log:debug("Using VoiceChatInternal")
			end
			local success, err = pcall(function()
				local service = game:GetService(serviceName)
				if service then
					if
						service:GetVoiceChatApiVersion() < MIN_VOICE_CHAT_API_VERSION_IS_CONTEXT_ENABLED
						or service:IsContextVoiceEnabled()
					then
						self.voiceEnabled = true
						self.service = service
						if FFlagAlwaysSetupVoiceListeners then
							-- This fixes a race condition when the user successfully joins a call before
							-- SetupParticipantListeners is called, causing the UI to get into a bad state
							self:SetupParticipantListeners()
						end
					end
				end
			end)
			if not success then
				log:warning("EnableVoiceChat flag is enabled but GetService panicked {}", err)
				self:_reportJoinFailed("getServiceFailed", Analytics.ERROR)

				return Promise.reject()
			elseif not self.service then
				log:debug("VoiceChatService is not set after init")
				self:_reportJoinFailed("contextNotEnabled")

				return Promise.reject()
			else
				self:watchSignalR()
				return if FFlagHideVoiceUIUntilInputExists then self:CheckAudioInputExists() else Promise.resolve()
			end
		end)
end

function VoiceChatServiceManager:asyncInit()
	if self.coreVoiceManager then
		return self.coreVoiceManager:asyncInit()
	end

	if self.service then
		log:trace("Manager already initialized")

		return Promise.resolve()
	end

	if not self.initPromise then
		if FFlagReceiveLikelySpeakingUsers then
			if not self.LikelySpeakingUsersEvent then
				local LikelySpeakingUsersEvent = self:GetLikelySpeakingUsersEvent()
				if LikelySpeakingUsersEvent then
					log:trace("Connecting to likely speaking users")
					LikelySpeakingUsersEvent.OnClientEvent:Connect(function(likelySpeakingUsers)
						log:trace("New Likely Speaking Users: {}", HttpService:JSONEncode(likelySpeakingUsers))
					end)
				end
			end
		end
		-- Don't keep creating new promises every time asyncInit is called
		self.initPromise = self:_asyncInit()
	end
	return self.initPromise
end

local inputsExistPromise
function VoiceChatServiceManager:CheckAudioInputExists()
	if self.coreVoiceManager then
		return self.coreVoiceManager:CheckAudioInputExists()
	end
	log:trace("Checking for AudioDeviceInput")
	if not inputsExistPromise then
		inputsExistPromise = Promise.new(function(resolve, _)
			if #Cryo.Dictionary.keys(self.audioDevices) > 0 then
				log:trace("Found existing AudioDeviceInput")
				resolve()
			else
				self.audioDeviceInputAdded.Event:Connect(function()
					log:trace("Found new AudioDeviceInput")
					resolve()
				end)
			end
		end)
	end
	return inputsExistPromise
end

function VoiceChatServiceManager:getService()
	return self.service
end

function VoiceChatServiceManager:GetMutedAnyone()
	return self._mutedAnyone
end

function VoiceChatServiceManager:GetRequest(url, method)
	if self.coreVoiceManager then
		return self.coreVoiceManager:GetRequest(url, method)
	end
	local success, result = pcall(function()
		local request =
			self.HttpRbxApiService:GetAsyncFullUrl(url, Enum.ThrottlingPriority.Default, Enum.HttpRequestType.Players)
		return HttpService:JSONDecode(request)
	end)
	return success and result
end

function VoiceChatServiceManager:PostRequest(url, method, postBody)
	local success, result = pcall(function()
		local request = self.HttpRbxApiService:PostAsyncFullUrl(
			url,
			postBody,
			Enum.ThrottlingPriority.Default,
			Enum.HttpContentType.ApplicationJson,
			Enum.HttpRequestType.Players
		)
		return HttpService:JSONDecode(request)
	end)
	return success and result
end

local function jsonDecode(data)
	local success, result = pcall(function()
		return HttpService:JSONDecode(data)
	end)
	if success and result then
		return result
	else
		return {}
	end
end

type AgeVerificationOverlayData = {
	universePlaceVoiceEnabledSettings: any,
	voiceSettings: any,
	showVoiceInExperienceUpsell: boolean,
  	showVoiceInExperienceUpsellVariant: string
}

function VoiceChatServiceManager:_GetShowAgeVerificationOverlay(): nil | AgeVerificationOverlayData
	if self.coreVoiceManager then
		return self.coreVoiceManager:_GetShowAgeVerificationOverlay()
	end

	return GetShowAgeVerificationOverlay(bind(self, "GetRequest"), tostring(game.GameId), tostring(game.PlaceId))
end

function VoiceChatServiceManager:FetchAgeVerificationOverlay(): nil | AgeVerificationOverlayData
	if self.coreVoiceManager then
		return self.coreVoiceManager:FetchAgeVerificationOverlay()
	end

	if not self._getShowAgeVerificationOverlayResult then
		self._getShowAgeVerificationOverlayResult = self:_GetShowAgeVerificationOverlay()
	end
	return self._getShowAgeVerificationOverlayResult
end

function VoiceChatServiceManager:RecordUserSeenModal(modalId: string): nil
	if GetFFlagUsePostRecordUserSeenGeneralModal() then
		return PostRecordUserSeenGeneralModal(bind(self, "PostRequest"), modalId)
	end
	return nil
end

function VoiceChatServiceManager:checkAndUpdateSequence(namespace: string, value: number)
	if self.coreVoiceManager then
		return self.coreVoiceManager:checkAndUpdateSequence(namespace, value)
	end

	-- Returns the difference between the expected sequence number and the received number.
	-- 0 means everything's fine. Positive means a skip. Negative means a duplicate or out of order number.

	if not value then
		-- Got a nil value. We'll react when we get a message showing that we actually missed something.
		return 0
	end

	if not self.SequenceNumbers[namespace] then
		-- This is the first one we've seen, so assume it's fine.
		self.SequenceNumbers[namespace] = value
		return 0
	end

	local diff = value - self.SequenceNumbers[namespace]
	if diff > 0 then
		self.SequenceNumbers[namespace] = value
	end

	return diff - 1
end

function VoiceChatServiceManager:onMissedSequence(namespace)
	if self.coreVoiceManager then
		return self.coreVoiceManager:onMissedSequence(namespace)
	end
	log:error("Detected a missed signalR message: {}", namespace)

	-- For now, rejoin the call regardless of what was missed
	self:RejoinCurrentChannel()
end

type EventData = { namespace: string, detail: string, detailType: string }
function VoiceChatServiceManager:watchSignalR()
	if self.coreVoiceManager then
		return self.coreVoiceManager:watchSignalR()
	end

	self.NotificationService.RobloxEventReceived:Connect(function(eventData: EventData)
		local namespace = eventData.namespace
		if not WATCHED_NAMESPACES[namespace] then
			return
		end

		local detail = jsonDecode(eventData.detail)

		if GetFFlagUseLuaSignalrConsumer() then
			local matchingEvent = self.SignalREventTable[detail["type"]]
			if matchingEvent then
				matchingEvent:Fire(detail)
			end
		end
		local seqNum = detail.SequenceNumber
		log:trace("SignalR message {}: {}", namespace, seqNum)

		local diff = self:checkAndUpdateSequence(namespace, seqNum)
		if diff > 0 then
			self.Analytics:reportReconnectDueToMissedSequence()
			if GetFFlagVoiceChatWatchForMissedSignalROnEventReceived() then
				self:onMissedSequence(namespace)
			end
		elseif diff < -1 then -- Ignore duplicate (-1) messages for now
			self.Analytics:reportOutOfOrderSequence()
		end
	end)

	self.NotificationService.RobloxConnectionChanged:Connect(
		function(connectionHubName, state, seqNum, seqNumByNamespace)
			if connectionHubName == "signalR" then
				if state ~= Enum.ConnectionState.Connected then
					log:info("SignalR disconnected")
					return -- We'll update the sequence numbers once signalR reconnects
				end

				for namespace, value in pairs(jsonDecode(seqNumByNamespace)) do
					if not WATCHED_NAMESPACES[namespace] then
						continue
					end
					log:trace("SignalR message {}: {}", namespace, value)

					local diff = self:checkAndUpdateSequence(namespace, value)
					if diff > 0 then
						self.Analytics:reportReconnectDueToMissedSequence()
						if GetFFlagVoiceChatWatchForMissedSignalROnEventReceived() then
							self:onMissedSequence(namespace)
						end
					elseif diff < -1 then -- Duplicate (-1) messages are expected when reconnecting
						self.Analytics:reportOutOfOrderSequence()
					end
				end
			end
		end
	)
end

--[[
	Given the response from PermissionProtocol, check if voice has been given.
	Multiple permissions may have been asked for, so narrow down to voice.
]]
function VoiceChatServiceManager:voicePermissionGranted(permissionResponse)
	if self.coreVoiceManager then
		return self.coreVoiceManager:voicePermissionGranted(permissionResponse)
	end
	local permissionGranted = false
	-- If the return value is a table, that means multiple permissions have different values.
	if typeof(permissionResponse) == "table" then
		-- This currently panics every time that permissionResponse.missingPermissions is nil
		local hasMicPermissionsResponse = permissionResponse.status == PermissionsProtocol.Status.AUTHORIZED
			or not Cryo.List.find(
				permissionResponse.missingPermissions,
				PermissionsProtocol.Permissions.MICROPHONE_ACCESS
			)

		permissionGranted = hasMicPermissionsResponse
	else
		-- If all permissions were authorized
		permissionGranted = permissionResponse == PermissionsProtocol.Status.AUTHORIZED
	end

	return permissionGranted
end

function VoiceChatServiceManager:GetSignalREvent(type: WatchedMessageTypes): RBXScriptSignal
	if self.coreVoiceManager then
		return self.coreVoiceManager:GetSignalREvent(type)
	end
	local matchingEvent = self.SignalREventTable[type]
	return matchingEvent.Event
end

-- Map AvatarChatService feature mask to VoiceChat structs.
function VoiceChatServiceManager:avatarChatUserAndPlaceSettingsValueOfClientFeatures(clientFeatures)
	if self.coreVoiceManager then
		return self.coreVoiceManager:avatarChatUserAndPlaceSettingsValueOfClientFeatures(clientFeatures)
	end

	local placeSettings: VoiceChatPlaceSettings = {
		isUniverseEnabledForVoice = self.AvatarChatService:IsEnabled(
			clientFeatures,
			Enum.AvatarChatServiceFeature.UniverseAudio
		),
		isPlaceEnabledForVoice = self.AvatarChatService:IsEnabled(
			clientFeatures,
			Enum.AvatarChatServiceFeature.PlaceAudio
		),
		isUniverseEnabledForAvatarVideo = self.AvatarChatService:IsEnabled(
			clientFeatures,
			Enum.AvatarChatServiceFeature.UniverseVideo
		),
		isPlaceEnabledForAvatarVideo = self.AvatarChatService:IsEnabled(
			clientFeatures,
			Enum.AvatarChatServiceFeature.PlaceVideo
		),
	}

	local userSettings: VoiceChatUserSettings = {
		isUserEligible = self.AvatarChatService:IsEnabled(
			clientFeatures,
			Enum.AvatarChatServiceFeature.UserAudioEligible
		),
		isVoiceEnabled = self.AvatarChatService:IsEnabled(clientFeatures, Enum.AvatarChatServiceFeature.UserAudio),
		isAvatarVideoEligible = self.AvatarChatService:IsEnabled(
			clientFeatures,
			Enum.AvatarChatServiceFeature.UserVideoEligible
		),
		isAvatarVideoEnabled = self.AvatarChatService:IsEnabled(
			clientFeatures,
			Enum.AvatarChatServiceFeature.UserVideo
		),
		isUserVerifiedForVoice = if FFlagEnableVoiceSignal then self.AvatarChatService:IsEnabled(
			clientFeatures,
			Enum.AvatarChatServiceFeature.UserVerifiedForVoice
		) else nil,
		isBanned = self.AvatarChatService:IsEnabled(clientFeatures, Enum.AvatarChatServiceFeature.UserBanned),
		bannedUntil = nil,
	}

	return {
		universePlaceVoiceEnabledSettings = placeSettings,
		voiceSettings = userSettings,
	} :: CommunicationPermissions
end

function VoiceChatServiceManager:resolveAvatarChatUserAndPlaceSettings()
	if self.coreVoiceManager then
		return self.coreVoiceManager:resolveAvatarChatUserAndPlaceSettings()
	end

	local ok, clientFeatures = pcall(self.AvatarChatService.GetClientFeaturesAsync, self.AvatarChatService)

	if not ok then
		return nil
	end

	return self:avatarChatUserAndPlaceSettingsValueOfClientFeatures(clientFeatures)
end

function VoiceChatServiceManager:EnableVoice()
	if self.coreVoiceManager then
		return self.coreVoiceManager:EnableVoice()
	end

	log:trace("Enabling voice")
	 -- We need to wait for the new values to finish replicating from rcc after we call EnableVoice
	self.AvatarChatService:GetPropertyChangedSignal("ClientFeatures"):Once(function()
		self.attemptVoiceRejoin:Fire()
	end)
	self.AvatarChatService:EnableVoice()
end

function VoiceChatServiceManager:_onUserAndPlaceCanUseVoiceResolved(userSettings, universePlaceSettings)
	self.bannedUntil = nil
	if userSettings and userSettings.isBanned then
		local informedOfBanResult = GetInformedOfBan(bind(self, "GetRequest"))
		if informedOfBanResult and not informedOfBanResult.informedOfBan then
			-- AvatarChatService currently cant provide more than flags, hence we still need an additional request here for banned users.
			if
				GetFFlagAvatarChatServiceEnabled()
				and GetFFlagVoiceChatServiceManagerUseAvatarChat()
				and userSettings.bannedUntil == nil
			then
				self:ShowPlayerModeratedMessage()
			else
				if userSettings.bannedUntil == nil then
					self:showPrompt(VoiceChatPromptType.VoiceChatSuspendedPermanent)
				else
					self.bannedUntil = userSettings.bannedUntil
					if GetFFlagUpdateNudgeV3VoiceBanUI() and userSettings.banReason == BAN_REASON.NUDGE_V3 then
						self:showPrompt(VoiceChatPromptType.VoiceChatSuspendedTemporaryB)
					else
						self:showPrompt(VoiceChatPromptType.VoiceChatSuspendedTemporary)
					end
				end
			end
		end

		if
			GetFFlagVoiceBanShowToastOnSubsequentJoins()
			and informedOfBanResult
			and informedOfBanResult.informedOfBan
		then
			self:ShowPlayerModeratedMessage(true)
		end
	elseif self.runService:IsStudio() and userSettings and not userSettings.isVoiceEnabled then
		self:showPrompt(VoiceChatPromptType.User)
	elseif
		self.runService:IsStudio()
		and universePlaceSettings
		and not universePlaceSettings.isPlaceEnabledForVoice
	then
		self:showPrompt(
			VoiceChatPromptType.Place,
			GetFFlagEnableVoicePromptReasonText() and (table.concat(universePlaceSettings.reasons or {}, "") or nil)
				or nil
		)
	end
end

function VoiceChatServiceManager:ChangeVoiceJoinProgress(state: VoiceConstants.VoiceJoinProgressType)
	if self.coreVoiceManager then
		return self.coreVoiceManager:ChangeVoiceJoinProgress(state)
	end

	self.VoiceJoinProgress = state
	self.VoiceJoinProgressChanged:Fire(self.VoiceJoinProgress)
end

function VoiceChatServiceManager:UserOnlyEligibleForVoice(): boolean
	if self.coreVoiceManager then
		return self.coreVoiceManager:UserOnlyEligibleForVoice()
	end

	local result = self.communicationPermissionsResult
	if not result or not result.voiceSettings or not result.universePlaceVoiceEnabledSettings then
		return false
	end
	local userOnlyEligibleForVoice = result.voiceSettings.isUserVerifiedForVoice and not result.voiceSettings.isVoiceEnabled and result.universePlaceVoiceEnabledSettings.isPlaceEnabledForVoice
	return userOnlyEligibleForVoice
end

function VoiceChatServiceManager:UserVoiceEnabled(): boolean
	if self.coreVoiceManager then
		return self.coreVoiceManager:UserVoiceEnabled()
	end

	local result = self.communicationPermissionsResult
	if not result or not result.voiceSettings or not result.universePlaceVoiceEnabledSettings then
		return false
	end
	local userVoiceEnabled = result.voiceSettings.isVoiceEnabled and result.universePlaceVoiceEnabledSettings.isPlaceEnabledForVoice
	return userVoiceEnabled
end

function VoiceChatServiceManager:UserInInExperienceUpsellTreatment(): boolean
	if self.coreVoiceManager then
		return self.coreVoiceManager:UserInInExperienceUpsellTreatment()
	end

	local ageVerificationOverlayData = self:FetchAgeVerificationOverlay()
	if not ageVerificationOverlayData then
		return false
	end
	
	local voiceInExpUpsellVariant = ageVerificationOverlayData.showVoiceInExperienceUpsellVariant
	return voiceInExpUpsellVariant == VoiceConstants.IN_EXP_UPSELL_VARIANT.VARIANT1
		or voiceInExpUpsellVariant == VoiceConstants.IN_EXP_UPSELL_VARIANT.VARIANT2
		or voiceInExpUpsellVariant == VoiceConstants.IN_EXP_UPSELL_VARIANT.VARIANT3
end

function VoiceChatServiceManager:UserEligibleForInExperienceUpsell(): boolean
	if self.coreVoiceManager then
		return self.coreVoiceManager:UserEligibleForInExperienceUpsell()
	end

	local userIsEligibleForUpsell = self:UserOnlyEligibleForVoice()
	if not userIsEligibleForUpsell then -- If the user is voice enabled or not verified for voice, or if the place is not voice enabled, then we can just skip the fetch
		return false
	end

	if FFlagEnableVoiceSignal then
		-- If a user is voice eligible, we also check if a user is in a treatment variant for the experiment to determine if they are eligible for the upsell
		local userInInExperienceUpsellTreatment = self:UserInInExperienceUpsellTreatment()
		return userIsEligibleForUpsell and userInInExperienceUpsellTreatment
	else
		-- In this previous version if a user is voice eligible, we check showVoiceInExperienceUpsell, but this can be false even if a user is in a treatment variant
		-- This causes an issue where joining voice fails to complete
		local ageVerificationOverlayData = self:FetchAgeVerificationOverlay()
		return userIsEligibleForUpsell
			and ageVerificationOverlayData
			and ageVerificationOverlayData.showVoiceInExperienceUpsell
	end
end

function VoiceChatServiceManager:SetInExpUpsellEntrypoint(entrypoint: string)
	self.inExpUpsellEntrypoint = entrypoint
end

function VoiceChatServiceManager:userAndPlaceCanUseVoice()
	if self.coreVoiceManager then
		return self.coreVoiceManager:userAndPlaceCanUseVoice()
	end

	local result: VoiceChatPlaceAndUserSettings = if GetFFlagAvatarChatServiceEnabled()
			and GetFFlagVoiceChatServiceManagerUseAvatarChat()
		then self:resolveAvatarChatUserAndPlaceSettings()
		else GetShowAgeVerificationOverlay(bind(self, "GetRequest"), tostring(game.GameId), tostring(game.PlaceId))
	if not result then
		self:_reportJoinFailed("invalidResponse", Analytics.ERROR)
		return false
	end
	local universePlaceSettings = result.universePlaceVoiceEnabledSettings
	local userSettings = result.voiceSettings
	log:trace("Voice settings endpoint returned {}", result)

	if FFlagEnableVoiceSignal then
		self.communicationPermissionsResult = result
		if self:UserEligibleForInExperienceUpsell() then
			self:ChangeVoiceJoinProgress(VOICE_JOIN_PROGRESS.Suspended)
		end
	end

	if universePlaceSettings and not universePlaceSettings.isUniverseEnabledForVoice then
		-- We don't need to show any of these if the universe isn't voice enabled
		self:_reportJoinFailed("universeNotEnabled")
		return false
	end

	self.bannedUntil = nil
	if userSettings and userSettings.isBanned then
		local informedOfBanResult = GetInformedOfBan(bind(self, "GetRequest"))
		if informedOfBanResult and not informedOfBanResult.informedOfBan then
			-- AvatarChatService currently cant provide more than flags, hence we still need an additional request here for banned users.
			if
				GetFFlagAvatarChatServiceEnabled()
				and GetFFlagVoiceChatServiceManagerUseAvatarChat()
				and userSettings.bannedUntil == nil
			then
				self:ShowPlayerModeratedMessage()
			else
				if userSettings.bannedUntil == nil then
					self:showPrompt(VoiceChatPromptType.VoiceChatSuspendedPermanent)
				else
					self.bannedUntil = userSettings.bannedUntil
					if GetFFlagUpdateNudgeV3VoiceBanUI() and userSettings.banReason == BAN_REASON.NUDGE_V3 then
						self:showPrompt(VoiceChatPromptType.VoiceChatSuspendedTemporaryB)
					else
						self:showPrompt(VoiceChatPromptType.VoiceChatSuspendedTemporary)
					end
				end
			end
		end

		if
			GetFFlagVoiceBanShowToastOnSubsequentJoins()
			and informedOfBanResult
			and informedOfBanResult.informedOfBan
		then
			self:ShowPlayerModeratedMessage(true)
		end
	elseif self.runService:IsStudio() and userSettings and not userSettings.isVoiceEnabled then
		self:showPrompt(VoiceChatPromptType.User)
	elseif
		self.runService:IsStudio()
		and universePlaceSettings
		and not universePlaceSettings.isPlaceEnabledForVoice
	then
		self:showPrompt(
			VoiceChatPromptType.Place,
			GetFFlagEnableVoicePromptReasonText() and (table.concat(universePlaceSettings.reasons or {}, "") or nil)
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

	return universePlaceSettings
		and userSettings
		and userSettings.isVoiceEnabled
		and universePlaceSettings.isPlaceEnabledForVoice
end

function VoiceChatServiceManager:ShowPlayerModeratedMessage(informedOfBan: boolean)
	local userSettings = GetUserSettings(bind(self, "GetRequest"))
	if not userSettings or not userSettings.isBanned then
		self:_reportJoinFailed("PlayerModeratedBadState", Analytics.ERROR)
		return
	else
		self.banReason = userSettings.banReason
		if userSettings.bannedUntil == nil then
			self:showPrompt(VoiceChatPromptType.VoiceChatSuspendedPermanent)
		else
			self.bannedUntil = userSettings.bannedUntil

			if not GetFFlagVoiceBanShowToastOnSubsequentJoins() then
				self:showPrompt(VoiceChatPromptType.VoiceChatSuspendedTemporary)
			else
				if informedOfBan then
					self:showPrompt(VoiceChatPromptType.VoiceChatSuspendedTemporaryToast)
				else
					if GetFFlagUpdateNudgeV3VoiceBanUI() and self.banReason == BAN_REASON.NUDGE_V3 then
						self:showPrompt(VoiceChatPromptType.VoiceChatSuspendedTemporaryB)
					else
						self:showPrompt(VoiceChatPromptType.VoiceChatSuspendedTemporary)
					end
				end
			end
		end
	end
end

function VoiceChatServiceManager:CheckCallState()
	if self.coreVoiceManager then
		return self.coreVoiceManager:CheckCallState()
	end

	log:trace("Checking user call state")
	local success, err = pcall(function()
		CallProtocol:getCallState()
			:andThen(function(params)
				-- If call exist, use the muted state from CallProtocol
				log:trace("Got user call state")
				if
					params.status ~= CallProtocolEnums.CallStatus.Idle.rawValue()
					and params.status ~= CallProtocolEnums.CallStatus.Ringing.rawValue()
				then
					self.isInCall = true
					self.callMutedState = params.muted
					log:trace("Changing call muted state to {}", params.muted)
				end
			end)
			:catch(function(e)
				-- Not in call
				log:trace("User not in call {}", e)
			end)
	end)
	if not success then
		log:debug("Error checking user call state {}", err)
	end
end

function VoiceChatServiceManager:ShowVoiceChatLoadingMessage()
	self:showPrompt(VoiceChatPromptType.VoiceLoading)
end

function VoiceChatServiceManager:requestMicPermission()
	if self.coreVoiceManager then
		return self.coreVoiceManager:requestMicPermission()
	end
	if self.permissionPromise then
		-- We save this so that we only call PermissionProtocol once. It realy doesn't like getting called twice
		log:trace("PermissionProtocol already invoked")

		return self.permissionPromise
	end
	local permissions = { PermissionsProtocol.Permissions.MICROPHONE_ACCESS }

	local promiseStart
	if GetFFlagJoinWithoutMicPermissions() then
		log:debug("Requesting device permission")
		local success, result = self.PermissionsService:hasPermissions(permissions):await()
		if success then
			if result.status == PermissionsProtocol.Status.AUTHORIZED then
				self.permissionState = PERMISSION_STATE.LISTEN_AND_TALK
			elseif result.missingPermissions then
				self.permissionState = PERMISSION_STATE.PENDING_MIC
			elseif result.deniedPermissions then
				self.permissionState = PERMISSION_STATE.LISTEN_ONLY
			else
				log:error("PermissionsService returned unknown permission state. Defaulting to listen only.")
				self.permissionState = PERMISSION_STATE.LISTEN_ONLY
			end
		else
			-- We pretend permission is denied if something wrong happens
			log:error("PermissionsService call failed.")
			self.permissionState = PERMISSION_STATE.LISTEN_ONLY
		end
		log:debug("Joining without mic permissions. Permission State: {}", self.permissionState)
		promiseStart = Promise.resolve()
	elseif FFlagAvatarChatCoreScriptSupport then
		--[[
			getPermissionsFunction used by multiple callers to get camera & microphone permissions and creates a queue.
			Check if the microphone has been authorized or not.
		]]
		promiseStart = Promise.new(function(resolve, _)
			local callback = function(response)
				local newAuth = {
					status = response.hasMicPermissions and PermissionsProtocol.Status.AUTHORIZED
						or PermissionsProtocol.Status.DENIED,
				}
				resolve(newAuth)
			end
			self.getPermissionsFunction(callback, permissions, nil, "VoiceChatServiceManager.requestMicPermission")
		end)
	else
		promiseStart = self.PermissionsService:requestPermissions(permissions)
	end

	self.permissionPromise = promiseStart
		:andThen(function(permissionResponse)
			if GetFFlagJoinWithoutMicPermissions() then
				return Promise.resolve()
			end
			if not permissionResponse and not permissionResponse.status then
				log:debug("No permission response, rejecting access")
				self:_reportJoinFailed("noPermissionResponse", Analytics.ERROR)
				return Promise.reject()
			end
			log:debug("Permission status {}", permissionResponse.status)

			local permissionGranted
			if FFlagAvatarChatCoreScriptSupport then
				permissionGranted = self:voicePermissionGranted(permissionResponse)
			else
				permissionGranted = permissionResponse.status == PermissionsProtocol.Status.AUTHORIZED
			end
			return permissionGranted and Promise.resolve() or Promise.reject()
		end)
		:andThen(function()
			-- Check volume settings. Show prompt if volume is 0
			if GetFFlagEnableUniveralVoiceToasts() then
				return self:CheckAndShowNotAudiblePrompt()
			end
			return Promise.resolve()
		end)
		:catch(function()
			-- Check mic permission settings. Show prompt if no permission
			if GetFFlagEnableUniveralVoiceToasts() and not FFlagSkipVoicePermissionCheck then
				return self:CheckAndShowPermissionPrompt():finallyReturn(Promise.reject())
			end
			return Promise.reject()
		end)
	return self.permissionPromise
end

function VoiceChatServiceManager:canUseServiceAsync()
	if self.coreVoiceManager then
		return self.coreVoiceManager:canUseServiceAsync()
	end

	if self.available ~= nil or not game:GetEngineFeature("VoiceChatSupported") then
		log:debug("Voice Chat is not Available, rejecting canUseService promise")
		return Promise.reject()
	end

	if not self.canUseServicePromise then
		self.canUseServicePromise = Promise.defer(function(resolve, reject)
			local canUseService = self:userAndPlaceCanUseVoice()
			if FFlagEnableVoiceSignal and self.VoiceJoinProgress == VOICE_JOIN_PROGRESS.Suspended then
				log:debug("Place is voice enabled but user is not, delaying voice rejection")
				self.attemptVoiceRejoin.Event:Wait()
				log:debug("Attempting voice rejoin")
				-- isVoiceEnabled is still false here because the user was not voice enabled in
				-- this flow. But if we are attempting a voice rejoin at this point, then the
				-- user must have opted into voice, so we should update isVoiceEnabled to be true
				self.communicationPermissionsResult.voiceSettings.isVoiceEnabled = true
				self.userEligible = true
				resolve()
				self:ChangeVoiceJoinProgress(VOICE_JOIN_PROGRESS.Joining)
				return
			elseif not canUseService then
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
				if
					FFlagHideUIWhenVoiceDefaultDisabled
					and not VoiceChatService.UseNewAudioApi
					and not VoiceChatService.EnableDefaultVoice
				then
					reject()
					return
				end
				if
					not VoiceChatService.VoiceChatEnabledForUniverseOnRcc
					or not VoiceChatService.VoiceChatEnabledForPlaceOnRcc
				then
					log:debug(
						"Disabling voice chat due to RCC Response. Universe: {}, Place: {}",
						VoiceChatService.VoiceChatEnabledForUniverseOnRcc,
						VoiceChatService.VoiceChatEnabledForPlaceOnRcc
					)

					if not VoiceChatService.VoiceChatEnabledForUniverseOnRcc then
						self:_reportJoinFailed("universeNotEnabled")
					elseif not VoiceChatService.VoiceChatEnabledForPlaceOnRcc then
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

-- Unused anywhere
function VoiceChatServiceManager:canUseService()
	if self.available ~= nil or not game:GetEngineFeature("VoiceChatSupported") then
		return false
	end
	local success, result = pcall(function()
		local request = HttpRbxApiService:GetAsyncFullUrl(
			"https://voice.roblox.com/v1/settings",
			Enum.ThrottlingPriority.Default,
			Enum.HttpRequestType.Players
		)
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
	if self.coreVoiceManager then
		return self.coreVoiceManager:ensureInitialized(action)
	end
	if not self.service then
		error(VCSManagerNamespace .. "Attempting to " .. action .. " before calling init")
	end
end

-- implementation wrappers for when VoiceChatInternal is deprecated
function VoiceChatServiceManager:GetSessionId()
	if self.coreVoiceManager then
		return self.coreVoiceManager:GetSessionId()
	end
	self:ensureInitialized("get session id")
	return self.service:GetSessionId()
end

function VoiceChatServiceManager:GetChannelId()
	if self.coreVoiceManager then
		return self.coreVoiceManager:GetChannelId()
	end
	self:ensureInitialized("get channel id")
	return self.service:GetChannelId()
end

function VoiceChatServiceManager:JoinWithVoiceMuteData(obj)
	if self.coreVoiceManager then
		return self.coreVoiceManager:JoinWithVoiceMuteData(obj)
	end
	local localPlayer = PlayersService.LocalPlayer
	return Cryo.Dictionary.join({
		userId = localPlayer.UserId,
		clientSessionId = self:GetSessionId(),
		channelId = self:GetChannelId(),
	}, obj)
end

function VoiceChatServiceManager:calculateBanDuration(startTimestamp: number, endTimestamp: number)
	return math.ceil((endTimestamp - startTimestamp) / 60)
end

function VoiceChatServiceManager:createPromptInstance(onReadyForSignal, promptType)
	if not self.voiceChatPromptInstance or GetFFlagAlwaysMountVoicePrompt() then
		if self.promptSignal then
			self.promptSignal:Destroy()
			self.promptSignal = nil
		end
		self.promptSignal = Instance.new("BindableEvent")
		local errorText = nil
		if GetFFlagEnableVoicePromptReasonText() then
			errorText = self.errorText
		end

		local isUpdatedBanModalB = GetFFlagUpdateNudgeV3VoiceBanUI()
			and promptType == VoiceChatPromptType.VoiceChatSuspendedTemporaryB
		local banEnd = ""
		if self.bannedUntil ~= nil then
			if isUpdatedBanModalB then
				-- We receive the date/time of the ban's end. For the updated Nudge v3 modal we need to show number of minutes the user is banned aka
				-- the difference between the ban's end and the current time
				local banDuration = self:calculateBanDuration(DateTime.now().UnixTimestamp, self.bannedUntil.Seconds)
				banEnd = tostring(banDuration)
			else
				banEnd = DateTime.fromUnixTimestamp(self.bannedUntil.Seconds)
					:FormatLocalTime("l LT", LocalizationService.RobloxLocaleId)
			end
		end
		local isNudge = GetFFlagEnableNudgeAnalytics()
			and (
				promptType == VoiceChatPromptType.VoiceToxicityModal
				or promptType == VoiceChatPromptType.VoiceToxicityToast
			)
		local isVoiceConsentModal = GetFFlagEnableInExpVoiceUpsell()
			and (
				promptType == VoiceChatPromptType.VoiceConsentModalV1
				or promptType == VoiceChatPromptType.VoiceConsentModalV2
				or promptType == VoiceChatPromptType.VoiceConsentModalV3
			)
		self.voiceChatPromptInstance = Roact.mount(
			Roact.createElement(VoiceChatPrompt, {
				Analytics = Analytics.new(),
				promptSignal = self.promptSignal.Event,
				bannedUntil = banEnd,
				policyMapper = self.policyMapper,
				errorText = errorText,
				onReadyForSignal = onReadyForSignal,
				VoiceChatServiceManager = self,
				onContinueFunc = if promptType == VoiceChatPromptType.VoiceChatSuspendedTemporary
						or isUpdatedBanModalB
					then function()
						PostInformedOfBan(bind(self, "PostRequest"), true)
					end
					elseif isNudge then function()
						self.Analytics:reportClosedNudge(self:GetNudgeAnalyticsData())
					end
					elseif isVoiceConsentModal then function()
						if GetFFlagUsePostRecordUserSeenGeneralModal() then
							self:RecordUserSeenModal(VoiceConstants.MODAL_IDS.IN_EXP_UPSELL)
						end
					end
					else nil,
				onPrimaryActivated = if isNudge
					then function()
						self.Analytics:reportAcknowledgedNudge(self:GetNudgeAnalyticsData())
					end
					elseif
						GetFFlagJoinWithoutMicPermissions() and promptType == VoiceChatPromptType.Permission
					then function()
						local settingsAppAvailable = LinkingProtocol:supportsSwitchToSettingsApp():await()
						log:debug("Settings app available: {}", settingsAppAvailable)
						if settingsAppAvailable then
							log:debug("Switching to settings app")
							LinkingProtocol:switchToSettingsApp()
								:andThen(function()
									log:debug("Successfully switched to settings app")
								end)
								:catch(function()
									log:error("Error switching to settings app")
								end)
						else
							log:debug("Current platform does not support switching to settings app")
						end
					end
					elseif isUpdatedBanModalB then function()
						self:reportBanMessage("Understood")
						self.Analytics:reportBanMessageEvent("Understood")
					end
					elseif isVoiceConsentModal then function()
						self:EnableVoice()
					end
					else nil,
				onSecondaryActivated = if promptType == VoiceChatPromptType.VoiceToxicityModal
					then function()
						self:ShowVoiceToxicityFeedbackToast()
						if FFlagFixNudgeDeniedEvents then
							self.Analytics:reportDeniedNudge(self:GetNudgeAnalyticsData())
						end
					end
					elseif isNudge then function()
						self.Analytics:reportDeniedNudge(self:GetNudgeAnalyticsData())
					end
					elseif isUpdatedBanModalB then function()
						self:ShowVoiceToxicityFeedbackToast()
						self:reportBanMessage("Denied")
						self.Analytics:reportBanMessageEvent("Denied")
					end
					elseif isVoiceConsentModal then function()
						self:showPrompt(VoiceChatPromptType.VoiceConsentDeclinedToast)
					end
					else nil,
			}),
			CoreGui,
			"RobloxVoiceChatPromptGui"
		)
	end
end

function VoiceChatServiceManager:showPrompt(promptType, errorText)
	if GetFFlagEnableVoicePromptReasonText() then
		self.errorText = errorText or nil
	end
	if not self.voiceChatPromptInstance or GetFFlagAlwaysMountVoicePrompt() then
		self:createPromptInstance(function()
			log:debug("Show Prompt: {}", promptType)
			self.promptSignal:fire(promptType)
		end, promptType)
	else
		log:debug("Show Prompt: {}", promptType)
		self.promptSignal:fire(promptType)
	end
end

function VoiceChatServiceManager:CheckAndShowPermissionPrompt()
	local function showPrompt()
		local userEligible = GetFFlagEnableVoiceMicPromptToastFix() and self.userEligible
		if self.voiceEnabled or userEligible then
			-- we already checked and requested permissions above. If we got here then Mic permissions were denied.
			if GetFFlagJoinWithoutMicPermissions() then
				if self.permissionState == PERMISSION_STATE.LISTEN_ONLY then
					self:showPrompt(VoiceChatPromptType.Permission)
				end
			elseif FFlagAvatarChatCoreScriptSupport then
				if FFlagFixMissingPermissionsAnalytics then
					self:_reportJoinFailed("missingPermissions")
				end
				self:showPrompt(VoiceChatPromptType.Permission)
			else
				return self.PermissionsService
					:hasPermissions({
						PermissionsProtocol.Permissions.MICROPHONE_ACCESS,
					})
					:andThen(function(permissionResponse)
						if permissionResponse and permissionResponse.status == PermissionsProtocol.Status.DENIED then
							self:showPrompt(VoiceChatPromptType.Permission)
						end
					end)
			end
		end
		return Promise.resolve()
	end
	if GetFFlagEnableUniveralVoiceToasts() then
		-- We can't call asyncInit here because in this flow it will be called by asyncInit
		return showPrompt()
	else
		return self:asyncInit():andThen(function() end):catch(function()
			return showPrompt()
		end)
	end
end

function VoiceChatServiceManager:CheckAndShowNotAudiblePrompt()
	if game:GetEngineFeature("VoiceChatSupported") then
		return self:asyncInit()
			:andThen(function()
				-- Check volume settings. Show prompt if volume is 0
				if UserSettings().GameSettings.MasterVolume == 0 then
					self:showPrompt(VoiceChatPromptType.NotAudible)
				end
			end)
			:catch(function() end)
	end
	return Promise.resolve()
end

function VoiceChatServiceManager:InitialJoinFailedPrompt()
	log:debug("JoinByGroupIdToken returns false")

	self:showPrompt(VoiceChatPromptType.Retry)
end

function VoiceChatServiceManager:ShowVoiceToxicityFeedbackToast()
	log:debug("Sending feedback toast")
	self:showPrompt(VoiceChatPromptType.VoiceToxicityFeedbackToast)
end

function VoiceChatServiceManager:GetNudgeAnalyticsData()
	return PlayersService.LocalPlayer.UserId, self:GetSessionId()
end

function VoiceChatServiceManager:reportBanMessage(eventType: string)
	self.Analytics:reportBanMessageEventV2(
		eventType,
		self.banReason,
		PlayersService.LocalPlayer.UserId,
		if self.service then self.previousSessionId else ""
	)
end

function VoiceChatServiceManager:SetAndSyncActive(device: AudioDeviceInput, newActive: boolean)
	if self.coreVoiceManager then
		self.coreVoiceManager:SetAndSyncActive(device, newActive)
	end
	-- Sets the device.Active property and sends a mute event to the server if needed
	device.Active = newActive
	local SendMuteEvent = self:GetSendMuteEvent()
	if SendMuteEvent and device.Player == PlayersService.LocalPlayer then
		SendMuteEvent:FireServer(newActive)
	end
end

function VoiceChatServiceManager:CreateAudioDeviceData(device: AudioDeviceInput): AudioDeviceData
	if self.coreVoiceManager then
		return self.coreVoiceManager:CreateAudioDeviceData(device)
	end
	local out = {}
	local isLocalPlayer = device.Player == PlayersService.LocalPlayer

	if device.Active then
		-- If AudioDeviceInputs get replicated while the local client is in a mute-all state. We need to sever the connection here to
		-- keep muteAll working
		if self.muteAll and not isLocalPlayer then
			device.Active = false
		end

		if device.Player and self.mutedPlayers[device.Player.UserId] then
			device.Active = false
		end
	end

	if FFlagSetActiveWhenConnecting then
		if device.Active and isLocalPlayer and self.localMuted == nil then
			-- If the player is still in the connecting state, set active to false
			self:SetAndSyncActive(device, false)
		end
	end

	if isLocalPlayer and self.localMuted ~= nil and self.localMuted ~= not device.Active and not self.isInCall then
		log:debug("Mismatch between LocalMuted and device.Active")
		local newActive = not self.localMuted
		device.Active = newActive
		local SendMuteEvent = self:GetSendMuteEvent()
		if SendMuteEvent then
			SendMuteEvent:FireServer(newActive)
		end
	elseif self.isInCall and isLocalPlayer then
		local newActive = not self.callMutedState
		log:debug("Overwriting Active State to match Iris call. .Active = {}", newActive)
		device.Active = newActive
		local SendMuteEvent = self:GetSendMuteEvent()
		if SendMuteEvent then
			SendMuteEvent:FireServer(newActive)
		end
	end

	out.onPlayerChanged = device:GetPropertyChangedSignal("Player"):Connect(function()
		if FFlagUpdateDeviceInputPlayerChanged then
			isLocalPlayer = device.Player == PlayersService.LocalPlayer
			if isLocalPlayer then
				if FFlagSetActiveWhenConnecting and device.Active and self.localMuted == nil then
					-- If the player is still in the connecting state, set active to false
					self:SetAndSyncActive(device, false)
				elseif self.localMuted ~= nil and self.localMuted ~= not device.Active then
					log:debug("Mismatch between LocalMuted and device.Active")
					self:SetAndSyncActive(device, not self.localMuted)
				end
			else
				if self.muteAll or (device.Player and self.mutedPlayers[device.Player.UserId]) then
					device.Active = false
				end
			end
		end
		self:UpdateAudioDeviceInputDebugger()
	end)

	out.onMutedChanged = device:GetPropertyChangedSignal("Muted"):Connect(function()
		self:UpdateAudioDeviceInputDebugger()
	end)

	out.onActiveChanged = device:GetPropertyChangedSignal("Active"):Connect(function()
		self:UpdateAudioDeviceInputDebugger()
		if self.muteAll and not isLocalPlayer then
			device.Active = false
		end
		if device.Player and self.mutedPlayers[device.Player.UserId] then
			device.Active = false
		end
	end)

	return out :: AudioDeviceData
end

local function avoidEmitting(character: Model)
	local function prune(instance: Instance)
		if instance:HasTag("RbxDefaultVoiceEmitter") then
			-- calling :Destroy() directly from DescendantAdded throws an error
			log:debug("Destroying RbxDefaultVoiceEmitter for local player")
			task.defer(function()
				instance:Destroy()
			end)
		end
	end
	character.DescendantAdded:Connect(prune)
	for _, desc in character:GetDescendants() do
		prune(desc)
	end
end

local function destroyDefaultEmitter(inst: Instance)
	local localPlayer = PlayersService.LocalPlayer
	local character = localPlayer.Character
	if not character then
		return
	end

	if inst:IsDescendantOf(character) then
		task.defer(function()
			log:debug("Destroying RbxDefaultVoiceEmitter for local player")
			inst:Destroy()
		end)
	end
end

function VoiceChatServiceManager:onInstanceAdded(inst: Instance)
	if self.coreVoiceManager then
		return self.coreVoiceManager:onInstanceAdded(inst)
	end
	if inst:IsA("AudioDeviceInput") then
		if FFlagHideVoiceUIUntilInputExists then
			self.audioDeviceInputAdded:Fire(inst)
		end
		local inst: AudioDeviceInput = inst
		log:debug("Found new audio device instance for {}", inst.Player and inst.Player.Name)
		self.audioDevices[inst] = self:CreateAudioDeviceData(inst)
		self:UpdateAudioDeviceInputDebugger()
	end
end

function VoiceChatServiceManager:UpdateAudioDeviceInputDebugger()
	if DebugShowAudioDeviceInputDebugger then
		if not self.voiceDebuggerInstance then
			log:debug("Mounting AudioDeviceInput Debugger")
			self.voiceDebuggerInstance = Roact.mount(
				Roact.createElement(AudioDeviceInputDebugger, {
					instances = self.audioDevices,
					mutedPlayers = self.mutedPlayers,
				}),
				CoreGui,
				"RobloxVoiceChatPromptGui"
			)
		else
			Roact.update(
				self.voiceDebuggerInstance,
				Roact.createElement(AudioDeviceInputDebugger, {
					instances = self.audioDevices,
					mutedPlayers = self.mutedPlayers,
				})
			)
		end
	end
end

function VoiceChatServiceManager:onInstanceRemove(inst: Instance)
	if self.coreVoiceManager then
		return self.coreVoiceManager:onInstanceRemove(inst)
	end
	if inst:IsA("AudioDeviceInput") then
		local inst: AudioDeviceInput = inst
		log:trace("Removing AudioDeviceInput {} {} {}", inst, "for user", inst.Player and inst.Player.UserId)
		local data = self.audioDevices[inst]
		if data then
			data.onActiveChanged:Disconnect()
			data.onMutedChanged:Disconnect()
			data.onPlayerChanged:Disconnect()
		end
		self.audioDevices[inst] = nil
		self:UpdateAudioDeviceInputDebugger()
	end
end

function VoiceChatServiceManager:hookupAudioDeviceInputListener()
	if self.coreVoiceManager then
		return self.coreVoiceManager:hookupAudioDeviceInputListener()
	end
	log:debug("Hooking up audio device listeners")
	local localPlayer = PlayersService.LocalPlayer
	if FFlagUseAudioInstanceAdded then
		SoundService.AudioInstanceAdded:Connect(function(inst)
			self:onInstanceAdded(inst)
		end)
	else
		game.DescendantAdded:Connect(function(inst)
			self:onInstanceAdded(inst)
		end)
	end

	local localAudioDevice = localPlayer:FindFirstChildOfClass("AudioDeviceInput")
	log:debug("Found local user audio device {}", localAudioDevice)
	if localAudioDevice then
		self:onInstanceAdded(localAudioDevice)
	end
	if (VoiceChatService :: any).EnableDefaultVoice then
		log:debug("Creating default voice listener")
		local listener = Instance.new("AudioListener")
		-- Does this need to change if the user changes camera?
		listener.Parent = workspace.CurrentCamera
		local wire = Instance.new("Wire")
		wire.Parent = listener
		local output = Instance.new("AudioDeviceOutput")
		output.Parent = wire
		wire.SourceInstance = listener
		wire.TargetInstance = output

		-- Snip the local player emitter by default
		if FFlagFixNewAudioAPIEcho then
			for _, inst in Collections:GetTagged("RbxDefaultVoiceEmitter") do
				destroyDefaultEmitter(inst)
			end
			Collections:GetInstanceAddedSignal("RbxDefaultVoiceEmitter"):Connect(destroyDefaultEmitter)
		end
		localPlayer.CharacterAdded:Connect(avoidEmitting)
		if localPlayer.Character then
			avoidEmitting(localPlayer.Character)
		end
	end

	game.DescendantRemoving:Connect(function(inst)
		self:onInstanceRemove(inst)
	end)

	-- TODO: Is this performant enough?
	for _, inst in game:GetDescendants() do
		self:onInstanceAdded(inst)
	end

	PlayersService.PlayerRemoving:Connect(function(player)
		-- TODO: Create a player index so we don't have to iterate through all audioDevices
		for device in self.audioDevices do
			if device.Player and device.Player == player then
				self:onInstanceRemove(device)
			end
		end
	end)
end

function VoiceChatServiceManager:ToggleMutePlayer(userId: number, context: string)
	self:ensureInitialized("mute player " .. userId)
	self._mutedAnyone = true
	local requestedMuteStatus = if GetFFlagVoiceUseAudioRoutingAPI() and FFlagOverwriteIsMutedLocally
		then not self.mutedPlayers[userId]
		else not self.service:IsSubscribePaused(userId)
	log:trace("Setting mute for {} to {}", shorten(userId), requestedMuteStatus)

	if GetFFlagVoiceUseAudioRoutingAPI() then
		-- We need to do this here because when we set the device, it checks self.mutedPlayers in device:GetPropertyChangedSignal("Active")
		self.mutedPlayers[userId] = requestedMuteStatus
		for device in self.audioDevices do
			if device.Player and device.Player.UserId == userId then
				-- TODO: Replace this with something that doesn't depend on VCI
				local participant = self.participants[tostring(userId)]
				local VCIActiveState = participant and not participant.isMuted

				-- setting device.Active calls SubscribePause
				device.Active = if not requestedMuteStatus then VCIActiveState else false
			end
		end
		self:UpdateAudioDeviceInputDebugger()
	else
		self.service:SubscribePause(userId, requestedMuteStatus)
	end
	-- We need to update the state and fire the event locally because toggling local muting doesn't trigger
	-- a participantStateChange for some reason.
	for _, player in pairs(self.participants) do
		if player.userId == userId then
			player.isMutedLocally = requestedMuteStatus
			self.participantsUpdate:Fire(self.participants)
		end
	end

	if context then
		self.Analytics:reportVoiceMuteIndividual(self:JoinWithVoiceMuteData({
			targetUserId = tonumber(userId),
			context = context,
			muted = requestedMuteStatus,
		}) :: VoiceMuteIndividualArgs)
	end
end

function VoiceChatServiceManager:MuteAll(muteState: boolean, context: string)
	self:ensureInitialized("mute all")
	self._mutedAnyone = true
	if GetFFlagVoiceUseAudioRoutingAPI() then
		self.muteAll = muteState
		log:debug("Setting self mute all to {}", muteState)
		-- When we flip .Active, it bulk edits all subscriptions. So no need for SubscribePauseAll here
		for audioDevice in self.audioDevices do
			if audioDevice.Player and audioDevice.Player ~= PlayersService.LocalPlayer then
				log:debug("Local muting {} to '{} = {}'", audioDevice.Player.Name, audioDevice.Active, muteState)
				-- TODO: Replace this with something that doesn't depend on VCI
				local userId = audioDevice.Player.UserId
				self.mutedPlayers[userId] = muteState
				local participant = self.participants[tostring(userId)]
				local VCIActiveState = participant and not participant.isMuted
				audioDevice.Active = if not muteState then VCIActiveState else false
			end
		end
	else
		self.service:SubscribePauseAll(muteState)
	end
	-- We need to update the state and fire the event locally because toggling local muting doesn't trigger
	-- a participantStateChange for some reason.
	for _, player in pairs(self.participants) do
		player.isMutedLocally = muteState
		self.participantsUpdate:Fire(self.participants)
	end
	self.muteAllChanged:Fire(muteState)

	if context then
		self.Analytics:reportVoiceMuteGroup(self:JoinWithVoiceMuteData({
			groupType = VoiceConstants.VOICE_GROUP_TYPE.ALL,
			context = context,
			muted = muteState,
		}) :: VoiceMuteGroupArgs)
	end
end

function VoiceChatServiceManager:ToggleMuteSome(
	userIds: { number },
	muteState: boolean,
	groupType: string,
	context: string
)
	self:ensureInitialized("mute some players")
	self._mutedAnyone = true
	local userIdSet: { [number]: boolean } = {}
	for _, userId in userIds do
		if GetFFlagVoiceUseAudioRoutingAPI() then
			userIdSet[userId] = true
			self.mutedPlayers[userId] = muteState
		else
			self.service:SubscribePause(userId, muteState)
		end
		local participant = self.participants[tostring(userId)]
		if participant then
			-- We need to update the state and fire the event locally because toggling local muting doesn't trigger
			-- a participantStateChange for some reason.
			participant.isMutedLocally = muteState
			self.participantsUpdate:Fire(self.participants)
		end
	end

	if GetFFlagVoiceUseAudioRoutingAPI() then
		for device in self.audioDevices do
			if device.Player and userIdSet[device.Player.UserId] then
				device.Active = not muteState
			end
		end
	end

	if groupType and context then
		self.Analytics:reportVoiceMuteGroup(self:JoinWithVoiceMuteData({
			groupType = groupType,
			context = context,
			muted = muteState,
		}) :: VoiceMuteGroupArgs)
	end
end

function VoiceChatServiceManager:FireMuteNonFriendsEvent()
	if FFlagMuteNonFriendsEvent then
		self.mutedNonFriends:Fire()
	end
end

function VoiceChatServiceManager:EnsureCorrectMuteState(userIds: { number }, muteState: boolean)
	local userIdSet: { [number]: boolean } = {}
	for _, userId in userIds do
		-- If the user does not have the correct isMutedLocally state, we need to override it so
		-- the UI updates correctly
		local participant = self.participants[tostring(userId)]
		if participant and participant.isMutedLocally ~= muteState then
			if GetFFlagVoiceUseAudioRoutingAPI() then
				userIdSet[userId] = true
				self.mutedPlayers[userId] = muteState
			else
				self.service:SubscribePause(userId, muteState)
			end

			participant.isMutedLocally = muteState
			self.participantsUpdate:Fire(self.participants)
		end
	end

	if GetFFlagVoiceUseAudioRoutingAPI() then
		for device in self.audioDevices do
			if device.Player and userIdSet[device.Player.UserId] then
				device.Active = not muteState
			end
		end
	end
end

function VoiceChatServiceManager:FireUserAgencySelectedEvent(muteState: boolean)
	if GetFFlagShowMuteToggles() then
		self.userAgencySelected:Fire(muteState)
	end
end

function VoiceChatServiceManager:ParticipantStateToIcon(participantState, level)
	local voiceState = VOICE_STATE.INACTIVE
	if not participantState.subscriptionCompleted then
		voiceState = VOICE_STATE.CONNECTING
	elseif participantState.isMutedLocally then
		voiceState = VOICE_STATE.LOCAL_MUTED
	elseif participantState.isMuted then
		voiceState = VOICE_STATE.MUTED
	elseif participantState.isSignalActive then
		voiceState = VOICE_STATE.TALKING
	end

	return getIcon(voiceState, level)
end

function VoiceChatServiceManager:VoiceStateToIcon(voiceState, level, folder)
	return getIcon(voiceState, level, folder)
end

function VoiceChatServiceManager:GetIcon(name, folder)
	return getIconSrc(name, folder)
end

function VoiceChatServiceManager:GetVoiceStateFromEnum(voiceStateEnum)
	-- If LOCAL_STATE_MAP is set globally outside of this function, unit tests throw this error:
	-- "VoiceChatState is not a valid member of 'Enum'"". This happens despite the type casting.
	-- Initializing it within the function and when it is being accessed stops the error from surfacing.
	-- This is also needed because VoiceChatState Enum is not available on devices where Voice Chat isn't supported.
	if not LOCAL_STATE_MAP[voiceStateEnum] then
		LOCAL_STATE_MAP = {
			[(Enum :: any).VoiceChatState.Idle] = VOICE_STATE.HIDDEN,
			[(Enum :: any).VoiceChatState.Joining] = VOICE_STATE.CONNECTING,
			[(Enum :: any).VoiceChatState.JoiningRetry] = VOICE_STATE.CONNECTING,
			[(Enum :: any).VoiceChatState.Joined] = VOICE_STATE.MUTED,
			[(Enum :: any).VoiceChatState.Leaving] = VOICE_STATE.MUTED,
			[(Enum :: any).VoiceChatState.Ended] = VOICE_STATE.HIDDEN,
			[(Enum :: any).VoiceChatState.Failed] = VOICE_STATE.ERROR,
		}
	end
	return LOCAL_STATE_MAP[voiceStateEnum]
end

-- Map the in-experience upsell variant to the prompt type we should show
function VoiceChatServiceManager:GetInExpUpsellPromptFromEnum(upsellVariant: string)
	return IN_EXP_VARIANT_TO_PROMPT[upsellVariant]
end

export type RecentInteractionData = { [string]: { lastHeardTime: number } }
function VoiceChatServiceManager:getRecentUsersInteractionData(): RecentInteractionData
	if self.coreVoiceManager then
		return self.coreVoiceManager:getRecentUsersInteractionData()
	end
	self:_updateRecentUsersInteractionData()
	return self.recentUsersInteractionData
end

function VoiceChatServiceManager:_setRecentUserState(userId, newState)
	if self.coreVoiceManager then
		return self.coreVoiceManager:_setRecentUserState(userId, newState)
	end
	local oldState = self.recentUsersInteractionData[tostring(userId)] or {}
	local participantInteractionData = Cryo.Dictionary.join(oldState, newState)

	self.recentUsersInteractionData = Cryo.Dictionary.join(self.recentUsersInteractionData, {
		[tostring(userId)] = participantInteractionData,
	})
end

function VoiceChatServiceManager:_updateRecentUsersInteractionData()
	if self.coreVoiceManager then
		return self.coreVoiceManager:_updateRecentUsersInteractionData()
	end
	local currentTime = os.time()
	local userIdsToRemove = {}

	if self.recentUsersInteractionData then
		for userId, interactionData in pairs(self.recentUsersInteractionData) do
			local participant = self.participants[userId]
			local clearOnLeave = GetFFlagClearUserFromRecentVoiceDataOnLeave()
				and not PlayersService:GetPlayerByUserId(tonumber(userId))
			local clearOnInactive = (currentTime - interactionData.lastHeardTime)
				>= GetFIntVoiceUsersInteractionExpiryTimeSeconds()
			local isCurrentlyMuted = if not participant then true else participant.isMuted

			if (clearOnInactive and isCurrentlyMuted) or clearOnLeave then
				userIdsToRemove[userId] = Cryo.None
			end
		end

		self.recentUsersInteractionData = Cryo.Dictionary.join(self.recentUsersInteractionData, userIdsToRemove)
	end
end

function VoiceChatServiceManager:SetupParticipantListeners()
	if self.coreVoiceManager then
		return self.coreVoiceManager:SetupParticipantListeners()
	end

	self:ensureInitialized("setup participant listeners")
	if not self.participants then
		self.participants = {}
		self.recentUsersInteractionData = {}

		-- TODO: Init the participants list with the "Initial" state when API is ready
		self.participantConnection = self.service.ParticipantsStateChanged:Connect(
			function(participantLeft, participantJoined, updatedStates)
				log:trace("Participants state changed")

				for _, userId in ipairs(participantLeft) do
					if not GetFFlagClearUserFromRecentVoiceDataOnLeave() then
						local participant = self.participants[tostring(userId)]

						if not participant.isMuted then
							self:_setRecentUserState(userId, {
								lastHeardTime = os.time(),
							})
						end
					end

					self.participants[tostring(userId)] = nil
					self.participantLeft:Fire(self.participants, GetFFlagPlayerListAnimateMic() and userId or nil)
					if FFlagEasierUnmutingPassMuteStatus and ExperienceChat.Events.VoiceParticipantRemoved then
						ExperienceChat.Events.VoiceParticipantRemoved(tostring(userId))
					end
				end
				for _, userId in ipairs(participantJoined) do
					self.participantJoined:Fire(self.participants, userId)
					if FFlagEasierUnmutingPassMuteStatus and ExperienceChat.Events.VoiceParticipantAdded then
						ExperienceChat.Events.VoiceParticipantAdded(tostring(userId))
					end
				end
				local updatedParticipants = {}
				for _, state in pairs(updatedStates) do
					local userId = state["userId"]
					local lastState = self.participants[userId]

					if not state.isMuted or (lastState and not lastState.isMuted) then
						self:_setRecentUserState(userId, {
							lastHeardTime = os.time(),
							player = PlayersService:GetPlayerByUserId(userId),
						})
					end

					if
						FFlagEasierUnmutingPassMuteStatus
						and ExperienceChat.Events.VoiceParticipantToggleMuted
						and (not lastState or (lastState.isMuted ~= state.isMuted))
					then
						ExperienceChat.Events.VoiceParticipantToggleMuted(tostring(userId), state.isMuted)
					end

					if GetFFlagVoiceUseAudioRoutingAPI() and FFlagOverwriteIsMutedLocally then
						state.isMutedLocally = not not self.mutedPlayers[userId] -- Not not to convert to bool
					end

					self.participants[tostring(userId)] = state
					if GetFFlagBatchVoiceParticipantsUpdates() then
						updatedParticipants[tostring(userId)] = state
					end
				end

				self:_updateRecentUsersInteractionData()

				if self.shouldThrottleParticipantUpdate then
					local stateUpdateTime = tick()
					-- Throttle to once every self.participantsStateThrottleTime seconds
					if stateUpdateTime - self.lastParticipantsStateUpdate >= self.participantsStateThrottleTime and #updatedStates > 0 then
						self.lastParticipantsStateUpdate = stateUpdateTime
						self.participantsUpdate:Fire(
							if GetFFlagBatchVoiceParticipantsUpdates()
								then updatedParticipants
								else self.participants
						)
					elseif #updatedStates > 0 then
						-- Too soon, yield until interval time and make sure only the last update is fired
						local remainingTime = self.participantsStateThrottleTime - (stateUpdateTime - self.lastParticipantsStateUpdate)
						self.lastStateUpdateCounter = (self.lastStateUpdateCounter + 1) % 100
						local currentCounter = self.lastStateUpdateCounter
						task.wait(remainingTime)
						if currentCounter == self.lastStateUpdateCounter then
							self.participantsUpdate:Fire(
								if GetFFlagBatchVoiceParticipantsUpdates()
									then updatedParticipants
									else self.participants
							)
						end
					end
				else
					if #updatedStates > 0 then
						self.participantsUpdate:Fire(
							if GetFFlagBatchVoiceParticipantsUpdates()
								then updatedParticipants
								else self.participants
						)
					end
				end
			end
		)

		self.stateConnection = self.service.StateChanged:Connect(function(oldState, newState)
			if getFFlagMicrophoneDevicePermissionsPromptLogging() then
				MicrophoneDevicePermissionsLogging:setClientSessionId(self:GetSessionId())
			end

			local inFailedState = newState == (Enum :: any).VoiceChatState.Failed
			local inConnectingState = newState == (Enum :: any).VoiceChatState.Joining
			local inLeavingState = newState == (Enum :: any).VoiceChatState.Leaving
			local inEndedState = newState == (Enum :: any).VoiceChatState.Ended
			local newMuted = self.service:IsPublishPaused()
			if GetFFlagEnableErrorIconFix() then
				if
					newMuted ~= self.localMuted
					and not inFailedState
					and not inConnectingState
					and not inLeavingState
					and not inEndedState
				then
					self.localMuted = newMuted
					self.muteChanged:Fire(newMuted)
				elseif inConnectingState or inLeavingState or inEndedState then
					self.localMuted = nil
				end
			else
				if newMuted ~= self.localMuted then
					self.localMuted = newMuted
					self.muteChanged:Fire(newMuted)
				end
			end

			if newState == (Enum :: any).VoiceChatState.Leaving then
				self.previousGroupId = self.service:GetGroupId()
				self.previousMutedState = self.service:IsPublishPaused()
			end
			if newState == (Enum :: any).VoiceChatState.Ended or inFailedState then
				self.participants = {}
				self.localMuted = nil
				self.participantsUpdate:Fire(self.participants)
				if inFailedState then
					log:debug("State Changed to Failed. Reason: {}", self.service:GetAndClearCallFailureMessage())
				end
				if
					oldState == (Enum :: any).VoiceChatState.Joining
					or oldState == (Enum :: any).VoiceChatState.JoiningRetry
					or oldState == (Enum :: any).VoiceChatState.Joined
				then
					if newState == (Enum :: any).VoiceChatState.Ended then
						log:debug("State Changed to Ended from {}", oldState)
					end
					self:showPrompt(VoiceChatPromptType.Retry)
				end
			end

			if
				FFlagEnableVoiceSignal
				and self.VoiceJoinProgress == VOICE_JOIN_PROGRESS.Joining
				and newState == (Enum :: any).VoiceChatState.Joined
			then
				self:ChangeVoiceJoinProgress(VOICE_JOIN_PROGRESS.Joined)
			end
		end)

		if self.service:GetVoiceChatApiVersion() >= MIN_VOICE_CHAT_API_VERSION_LOCAL_MIC_ACTIVITY then
			self.micConnection = self.service.PlayerMicActivitySignalChange:Connect(function(result)
				self.isTalking = result.isActive
				if GetFFlagLocalMutedNilFix then
					if self.localMuted == false then
						self.talkingChanged:Fire(self.isTalking)
					end
				else
					if not self.localMuted then
						self.talkingChanged:Fire(self.isTalking)
					end
				end
			end)
		end

		if GetFFlagLuaConsumePlayerModerated() then
			local playerModeratedEvent = self:GetSignalREvent("ParticipantModeratedFromVoice")
			self.playerModeratedConnection = playerModeratedEvent:Connect(function()
				log:debug("User Moderated")
				self.previousSessionId = self.service:GetSessionId()
				self:ShowPlayerModeratedMessage()
				self.service:Leave()
			end)
		-- This is controlled by DFFlagVoiceChatEnablePlayerModeratedSignal
		elseif game:GetEngineFeature("VoiceChatServicePlayerModeratedEvent") then
			self.playerModeratedConnection = self.service.LocalPlayerModerated:connect(function()
				log:debug("User Moderated old")
				self.previousSessionId = self.service:GetSessionId()
				self:ShowPlayerModeratedMessage()
				self.service:Leave()
			end)
		end
		if GetFFlagEnableVoiceNudge() then
			log:trace("Setting up voice nudge handlers")
			local voiceToxicityModalConnection = self:GetSignalREvent("VoiceToxicityModal")
			self.voiceToxicityModalConnection = voiceToxicityModalConnection:Connect(function(detail)
				if GetFFlagEnableNudgeAnalytics() then
					self.Analytics:reportReceivedNudge(detail, self:GetNudgeAnalyticsData())
				end
				log:debug("Showing Voice Toxicity Modal")
				self:showPrompt(VoiceChatPromptType.VoiceToxicityModal)
			end)

			local VoiceToxicityToastConnection = self:GetSignalREvent("VoiceToxicityToast")
			self.VoiceToxicityToastConnection = VoiceToxicityToastConnection:Connect(function(detail)
				if GetFFlagEnableNudgeAnalytics() then
					self.Analytics:reportReceivedNudge(detail, self:GetNudgeAnalyticsData())
				end
				log:debug("Showing Voice Toxicity Toast")
				self:showPrompt(VoiceChatPromptType.VoiceToxicityToast)
			end)
		end

		self.blockConnection = self.BlockStatusChanged:Connect(function(userId: number, isBlocked: boolean)
			if isBlocked then
				if self.participants[tostring(userId)] then
					log:debug("Blocking {}", shorten(userId))
					self.service:SubscribeBlock(userId)
				end
			else
				-- There's no way of knowing if the unblocked player will be in the voice channel, so we always have to disconnect
				log:debug("UnBlocking {}", shorten(userId))
				self.service:SubscribeUnblock(userId)
			end
		end)

		if GetFFlagVoiceUseAudioRoutingAPI() then
			self:hookupAudioDeviceInputListener()
		end
	end
end

function VoiceChatServiceManager:Disconnect()
	if self.coreVoiceManager then
		self.coreVoiceManager:Disconnect()
		self.coreVoiceManager:unsubscribeAll()
		return
	end

	if self.participantConnection then
		self.participantConnection:Disconnect()
		self.participantConnection = nil
	end
	if self.stateConnection then
		self.stateConnection:Disconnect()
		self.stateConnection = nil
	end
	if self.micConnection then
		self.micConnection:Disconnect()
		self.micConnection = nil
	end
	if self.blockConnection then
		self.blockConnection:Disconnect()
		self.blockConnection = nil
	end

	if self.playerModeratedConnection then
		self.playerModeratedConnection:Disconnect()
		self.playerModeratedConnection = nil
	end

	if self.voiceToxicityModalConnection then
		self.voiceToxicityModalConnection:Disconnect()
		self.voiceToxicityModalConnection = nil
	end

	if self.VoiceToxicityToastConnection then
		self.VoiceToxicityToastConnection:Disconnect()
		self.VoiceToxicityToastConnection = nil
	end
end

function VoiceChatServiceManager:GetSendMuteEvent(): RemoteEvent | nil
	if self.coreVoiceManager then
		return self.coreVoiceManager:GetSendMuteEvent()
	end

	if not self.SendMuteEvent then
		self.SendMuteEvent = RobloxReplicatedStorage:WaitForChild("SetUserActive", 10) :: RemoteEvent | nil
	end
	return self.SendMuteEvent
end

function VoiceChatServiceManager:GetLikelySpeakingUsersEvent(): RemoteEvent | nil
	if self.coreVoiceManager then
		return self.coreVoiceManager:GetLikelySpeakingUsersEvent()
	end

	if not self.LikelySpeakingUsersEvent then
		self.LikelySpeakingUsersEvent =
			RobloxReplicatedStorage:WaitForChild("SendLikelySpeakingUsers", 3) :: RemoteEvent | nil
	end
	return self.LikelySpeakingUsersEvent
end

-- Do not pass context if the call is not the result of user action
function VoiceChatServiceManager:ToggleMic(context: string?)
	if self.coreVoiceManager then
		return self.coreVoiceManager:ToggleMic(context)
	end
	self:ensureInitialized("toggle mic")
	if self.localMuted == nil then
		-- Not connected, so don't try and toggle anything.
		return
	end

	if GetFFlagJoinWithoutMicPermissions() then
		if self.permissionState == PERMISSION_STATE.PENDING_MIC then
			log:debug("In pending mic mode, requesting permission")
			self.getPermissionsFunction(function(params)
				self.permissionState = if params.hasMicPermissions
					then PERMISSION_STATE.LISTEN_AND_TALK
					else PERMISSION_STATE.LISTEN_ONLY
				log:debug("Got permissions, setting state to {}", self.permissionState)
				self:ToggleMic(context)
			end, { PermissionsProtocol.Permissions.MICROPHONE_ACCESS }, false)
			return
		elseif self.permissionState == PERMISSION_STATE.LISTEN_ONLY then
			log:debug("User tried to unmute despite being in listen only mode")
			self:showPrompt(VoiceChatPromptType.Permission)
			return
		end
	end

	if GetFFlagVoiceUseAudioRoutingAPI() then
		self.localMuted = not self.localMuted
		local active = not self.localMuted -- .Active is the opposite of localMuted
		log:trace("Setting self mute to {}", active)
		local SendMuteEvent = self:GetSendMuteEvent()
		if SendMuteEvent then
			SendMuteEvent:FireServer(active)
			for audioDevice in self.audioDevices do
				if audioDevice.Player and audioDevice.Player == PlayersService.LocalPlayer then
					audioDevice.Active = active
				end
			end
			self.muteChanged:Fire(self.localMuted)
		else
			log:error("Could not find SendMuteEvent")
		end
	else
		local newMuted = not self.service:IsPublishPaused()
		log:trace("Setting self mute to {}", newMuted)
		self.service:PublishPause(newMuted)
		self.localMuted = newMuted
		self.muteChanged:Fire(newMuted)
	end

	if not self.localMuted then
		self.talkingChanged:Fire(self.isTalking)
	end

	if context then
		self.Analytics:reportVoiceMuteSelf(self:JoinWithVoiceMuteData({
			context = context,
			muted = self.localMuted,
		}) :: VoiceMuteSelfArgs)
	end
end

function VoiceChatServiceManager:SubscribeRetry(userId: number)
	self:ensureInitialized("subscribe retry")
	log:debug("Attempting to retry connection to user: {}", shorten(userId))
	self.service:SubscribeRetry(userId)
end

function VoiceChatServiceManager:JoinByGroupIdToken(group, muteState)
	if self.coreVoiceManager then
		return self.coreVoiceManager:JoinByGroupIdToken(group, muteState)
	end
	self.previousGroupId = group
	self.previousMutedState = muteState
	return self.service:JoinByGroupIdToken(group, muteState)
end

function VoiceChatServiceManager:RejoinCurrentChannel()
	if self.coreVoiceManager then
		return self.coreVoiceManager:RejoinCurrentChannel()
	end
	pcall(function()
		local groupId = self.service:GetGroupId()
		if groupId and groupId ~= "" then
			local muted = self.service:IsPublishPaused()
			self.service:Leave()
			if GetFFlagClearVoiceStateOnRejoin() then
				log:debug("Rejoining current channel {}", groupId)
				-- Resets the UI on rejoin, as "Leave" doesn't seem to send any events in this case
				self.participants = {}
				self.participantsUpdate:Fire(self.participants)
			end
			local joinInProgress = self.service:JoinByGroupIdToken(groupId, muted, true)
			if not joinInProgress then
				(if FFlagFixNonSelfCalls then self else VoiceChatServiceManager):InitialJoinFailedPrompt()
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
			local joinInProgress = self.service:JoinByGroupIdToken(groupId, muted, true)
			if not joinInProgress then
				(if FFlagFixNonSelfCalls then self else VoiceChatServiceManager):InitialJoinFailedPrompt()
			end
		end
	end)
end

local function isValidDeviceList(deviceNames, deviceGuids, index)
	return deviceNames
		and deviceGuids
		and index
		and #deviceNames > 0
		and index > 0
		and index <= #deviceNames
		and #deviceNames == #deviceGuids
end

local function setVCSOutput(soundServiceOutputName, VCService)
	local VCSSuccess, VCSDeviceNames, VCSDeviceGuids, VCSIndex = pcall(function()
		return VCService:GetSpeakerDevices()
	end)

	if VCSSuccess and isValidDeviceList(VCSDeviceNames, VCSDeviceGuids, VCSIndex) then
		-- Find the matching VCS Device
		local VCSDeviceIndex = 0
		for deviceIndex, deviceName in ipairs(VCSDeviceNames) do
			if deviceName == soundServiceOutputName then
				VCSDeviceIndex = deviceIndex
			end
		end

		if VCSDeviceIndex > 0 then
			log:info(
				"[OutputDeviceSelection] Setting VCS Speaker Device To {} {}",
				VCSDeviceNames[VCSDeviceIndex],
				VCSDeviceGuids[VCSDeviceIndex]
			)
			VCService:SetSpeakerDevice(VCSDeviceNames[VCSDeviceIndex], VCSDeviceGuids[VCSDeviceIndex])
		else
			log:warning("Could not find equivalent VoiceChatService Device")
		end
	else
		log:warning("Could not connect to Voice Chat Service to change Output Device")
	end
end

function VoiceChatServiceManager:SwitchDevice(deviceType, deviceName, deviceGuid)
	if deviceType == VOICE_CHAT_DEVICE_TYPE.Input then
		if game:GetEngineFeature("UseFmodForInputDevices") and GetFFlagVoiceChatUseSoundServiceInputApi() then
			SoundService:SetInputDevice(deviceName, deviceGuid)
			log:info("[InputDeviceSelection] Setting SS Mic Device To {} {}", deviceName, deviceGuid)
		else
			self.service:SetMicDevice(deviceName, deviceGuid)
			-- TODO: This will be removed when set device API refactoring is done
			log:info("[OutputDeviceSelection] Setting VCS Mic Device To {} {}", deviceName, deviceGuid)
			log:info("[OutputDeviceSelection] Rejoining Voice Chat")
			self:RejoinCurrentChannel()
		end
	else
		SoundService:SetOutputDevice(deviceName, deviceGuid)
		log:info("[OutputDeviceSelection] Setting SS Speaker Device To {} {}", deviceName, deviceGuid)
		setVCSOutput(deviceName)
	end
end

function VoiceChatServiceManager:GetDevices(deviceType)
	local soundServiceSuccess, deviceNames, deviceGuids, selectedIndex = pcall(function()
		if deviceType == VOICE_CHAT_DEVICE_TYPE.Input then
			if game:GetEngineFeature("UseFmodForInputDevices") and GetFFlagVoiceChatUseSoundServiceInputApi() then
				return SoundService:GetInputDevices()
			else
				return self.service:GetMicDevices()
			end
		else
			return SoundService:GetOutputDevices()
		end
	end)

	if game:GetEngineFeature("UseFmodForInputDevices") and GetFFlagVoiceChatUseSoundServiceInputApi() then
		return soundServiceSuccess, deviceNames, deviceGuids, selectedIndex
	end

	-- The following is to add an additional check to ensure that VCS:GetSpeakerDevices() and SoundService:GetOutputDevices() are returning the same results.
	-- Otherwise we throw an error.
	local VCSSuccess, VCSDeviceNames, VCSDeviceGuids, VCSIndex = pcall(function()
		return self.service:GetSpeakerDevices()
	end)

	local deviceOutputsAreConsistent = soundServiceSuccess
		and VCSSuccess
		and isValidDeviceList(deviceNames, deviceGuids, selectedIndex)
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

function VoiceChatServiceManager:VoiceChatEnded()
	if self.service then
		local state = self.service.VoiceChatState
		return state == (Enum :: any).VoiceChatState.Ended or state == (Enum :: any).VoiceChatState.Idle
	end
	-- If VoiceChatService isn't initiated, we still count the call as ended even though it technically never began.
	return true
end

function VoiceChatServiceManager:UnmountPrompt()
	if self.voiceChatPromptInstance ~= nil then
		Roact.unmount(self.voiceChatPromptInstance)
	end
end

VoiceChatServiceManager.default = VoiceChatServiceManager.new(
	if CoreVoiceManager then CoreVoiceManager.default else nil,
	nil,
	HttpRbxApiService,
	PermissionsProtocol.default,
	GetFFlagDeferredBlockStatusChange() and BlockingUtility:GetAfterBlockedStatusChangedEvent()
		or BlockingUtility:GetBlockedStatusChangedEvent()
)

export type VoiceChatServiceManager = typeof(VoiceChatServiceManager.default)

return VoiceChatServiceManager
