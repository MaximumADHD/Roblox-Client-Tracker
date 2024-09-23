--!nonstrict
local CorePackages = game:GetService("CorePackages")
local PlayersService = game:GetService("Players")
local Promise = require(CorePackages.Promise)
local Roact = require(CorePackages.Roact)
local LuauPolyfill = require(CorePackages.Packages.LuauPolyfill)
local PermissionsProtocol = require(CorePackages.Workspace.Packages.PermissionsProtocol).PermissionsProtocol
local CoreGui = game:GetService("CoreGui")
local runService = game:GetService("RunService")
local SoundService = game:GetService("SoundService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local NotificationService = game:GetService("NotificationService")
local LocalizationService = game:GetService("LocalizationService")
local AnalyticsService = game:GetService("RbxAnalyticsService")
local log = require(CorePackages.Workspace.Packages.CoreScriptsInitializer).CoreLogger:new(script.Name)

local CoreGuiModules = RobloxGui:WaitForChild("Modules")
local IXPServiceWrapper = require(CoreGuiModules.Common.IXPServiceWrapper)

local GetFFlagEnableCoreVoiceManagerMuteAll = require(script.Parent.Flags.GetFFlagEnableCoreVoiceManagerMuteAll)

local GetFFlagEnableUniveralVoiceToasts = require(RobloxGui.Modules.Flags.GetFFlagEnableUniveralVoiceToasts)
local GetFFlagEnableVoicePromptReasonText = require(RobloxGui.Modules.Flags.GetFFlagEnableVoicePromptReasonText)
local GetFFlagOldMenuUseSpeakerIcons = require(RobloxGui.Modules.Flags.GetFFlagOldMenuUseSpeakerIcons)
local GetFFlagAvatarChatServiceEnabled = require(RobloxGui.Modules.Flags.GetFFlagAvatarChatServiceEnabled)
local GetFFlagVoiceChatServiceManagerUseAvatarChat =
	require(RobloxGui.Modules.Flags.GetFFlagVoiceChatServiceManagerUseAvatarChat)
local FFlagAvatarChatCoreScriptSupport = require(RobloxGui.Modules.Flags.FFlagAvatarChatCoreScriptSupport)
local GetFFlagUseLuaSignalrConsumer = require(RobloxGui.Modules.Flags.GetFFlagUseLuaSignalrConsumer)
local GetFFlagAlwaysMountVoicePrompt = require(RobloxGui.Modules.Flags.GetFFlagAlwaysMountVoicePrompt)
local GetFFlagSeamlessVoiceFTUX = require(RobloxGui.Modules.Flags.GetFFlagSeamlessVoiceFTUX)
local GetFFlagEnableNudgeAnalytics = require(RobloxGui.Modules.Flags.GetFFlagEnableNudgeAnalytics)
local GetFFlagVoiceUseAudioRoutingAPI = require(RobloxGui.Modules.Flags.GetFFlagVoiceUseAudioRoutingAPI)
local FFlagMuteNonFriendsEvent = require(RobloxGui.Modules.Flags.FFlagMuteNonFriendsEvent)
local GetFFlagShowMuteToggles = require(RobloxGui.Modules.Settings.Flags.GetFFlagShowMuteToggles)
local GetFFlagJoinWithoutMicPermissions = require(RobloxGui.Modules.Flags.GetFFlagJoinWithoutMicPermissions)
local GetFFlagEnableShowVoiceUI = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableShowVoiceUI
local GetFFlagEnableSeamlessVoiceConnectDisconnectButton = require(RobloxGui.Modules.Flags.GetFFlagEnableSeamlessVoiceConnectDisconnectButton)
local GetFIntVoiceReverseNudgeUXDisplayTimeSeconds = require(RobloxGui.Modules.Flags.GetFIntVoiceReverseNudgeUXDisplayTimeSeconds)
local EngineFeatureRbxAnalyticsServiceExposePlaySessionId =
	game:GetEngineFeature("RbxAnalyticsServiceExposePlaySessionId")
local GetFFlagUseMicPermForEnrollment = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagUseMicPermForEnrollment

local VoiceChatCore = require(CorePackages.Workspace.Packages.VoiceChatCore)

local FFlagFixNudgeDeniedEvents = game:DefineFastFlag("FixNudgeDeniedEvents", false)
local DebugShowAudioDeviceInputDebugger = game:DefineFastFlag("DebugShowAudioDeviceInputDebugger", false)
local FFlagFixMissingPermissionsAnalytics = game:DefineFastFlag("FixMissingPermissionsAnalytics", false)
local FFlagSkipVoicePermissionCheck = game:DefineFastFlag("DebugSkipVoicePermissionCheck", false)
local FFlagDebugSimulateConnectDisconnect = game:DefineFastFlag("DebugSimulateConnectDisconnect", false)
local FFlagDebugSkipSeamlessVoiceAPICheck = game:DefineFastFlag("DebugSkipSeamlessVoiceAPICheck", false)
local FIntDebugConnectDisconnectInterval = game:DefineFastInt("DebugConnectDisconnectInterval", 15)
local FFlagOverwriteIsMutedLocally = require(VoiceChatCore.Flags.GetFFlagOverwriteIsMutedLocally)()
local FFlagHideVoiceUIUntilInputExists = require(VoiceChatCore.Flags.GetFFlagHideVoiceUIUntilInputExists)()

local getFFlagMicrophoneDevicePermissionsPromptLogging =
	require(RobloxGui.Modules.Flags.getFFlagMicrophoneDevicePermissionsPromptLogging)
local GetFFlagVoiceBanShowToastOnSubsequentJoins =
	require(RobloxGui.Modules.Flags.GetFFlagVoiceBanShowToastOnSubsequentJoins)
local GetFFlagUpdateNudgeV3VoiceBanUI = require(RobloxGui.Modules.Flags.GetFFlagUpdateNudgeV3VoiceBanUI)
local GetFFlagEnableInExpVoiceUpsell = require(RobloxGui.Modules.Flags.GetFFlagEnableInExpVoiceUpsell)
local GetFFlagEnableInExpVoiceConsentAnalytics =
	require(RobloxGui.Modules.Flags.GetFFlagEnableInExpVoiceConsentAnalytics)
local GetFFlagEnableInExpMicPermissionsAnalytics = require(RobloxGui.Modules.Flags.GetFFlagEnableInExpMicPermissionsAnalytics)
local GetFIntThrottleParticipantsUpdateMs = require(RobloxGui.Modules.Flags.GetFIntThrottleParticipantsUpdateMs)
local GetFFlagEnableInExpJoinVoiceAnalytics = require(RobloxGui.Modules.Flags.GetFFlagEnableInExpJoinVoiceAnalytics)
local GetFFlagSendDevicePermissionsModalAnalytics = require(RobloxGui.Modules.Flags.GetFFlagSendDevicePermissionsModalAnalytics)
local FStringVoiceUIImprovementsIXPLayerName =
	game:DefineFastString("VoiceUIImprovementsIXPLayerName", "Voice.Exposure")
local FStringThrottleParticipantsUpdateIXPLayerValue =
	game:DefineFastString("ThrottleParticipantsUpdateIXPLayerValue", "ThrottleParticipantsUpdate")
local FIntSeamlessVoiceSTUXDisplayCount =
	game:DefineFastInt("SeamlessVoiceSTUXDisplayCount", 3)
local GetFFlagShowLikelySpeakingBubbles = require(RobloxGui.Modules.Flags.GetFFlagShowLikelySpeakingBubbles)
local GetFFlagEnableInExpPhoneVoiceUpsellEntrypoints = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableInExpPhoneVoiceUpsellEntrypoints
local GetFFlagShowDevicePermissionsModal = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagShowDevicePermissionsModal
local FFlagEnableRetryForLinkingProtocolFetch = game:DefineFastFlag("EnableRetryForLinkingProtocolFetch", false)
local FIntLinkingProtocolFetchRetries = game:DefineFastInt("LinkingProtocolFetchRetries", 1)
local FIntLinkingProtocolFetchTimeoutMS = game:DefineFastInt("LinkingProtocolFetchTimeoutMS", 1)
local VoiceChat = require(CorePackages.Workspace.Packages.VoiceChat)
local Constants = VoiceChat.Constants
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
local SeamlessVoiceStatus = require(RobloxGui.Modules.Settings.Enum.SeamlessVoiceStatus)

local Analytics = VoiceChatCore.Analytics

local HttpService = game:GetService("HttpService")
local HttpRbxApiService = game:GetService("HttpRbxApiService")
-- We require here because one of the side effects of BlockingUtility.lua sets up PlayerBlockedEvent
local BlockingUtility = require(RobloxGui.Modules.BlockingUtility)
local MicrophoneDevicePermissionsLogging =
	require(RobloxGui.Modules.Settings.Resources.MicrophoneDevicePermissionsLogging)

local AvatarChatService = if GetFFlagAvatarChatServiceEnabled() then game:GetService("AvatarChatService") else nil
local ExperienceChat = require(CorePackages.ExperienceChat)

local GetFFlagUsePostRecordUserSeenGeneralModal = VoiceChatFlags.GetFFlagUsePostRecordUserSeenGeneralModal

local LinkingProtocol = require(CorePackages.Workspace.Packages.LinkingProtocol).LinkingProtocol.default
local SettingsRoute = require(CorePackages.Workspace.Packages.LinkingProtocol).Enums.SettingsRoute

local PhoneUpsellController = if GetFFlagEnableInExpPhoneVoiceUpsellEntrypoints() then require(CorePackages.Workspace.Packages.PhoneUpsell).PhoneUpsellController else nil
local PostPhoneUpsellDisplayed = if GetFFlagEnableInExpPhoneVoiceUpsellEntrypoints() then require(CorePackages.Workspace.Packages.PhoneUpsell).Http.Requests.PostPhoneUpsellDisplayed else nil

local CoreVoiceManager = VoiceChatCore.CoreVoiceManager
local CoreVoiceConstants = VoiceChatCore.Constants

type VoiceMuteIndividualArgs = VoiceChatCore.VoiceMuteIndividualArgs
type VoiceMuteGroupArgs = VoiceChatCore.VoiceMuteGroupArgs

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
local VOICE_CHAT_AVAILABILITY = Constants.VOICE_CHAT_AVAILABILITY
local MIN_VOICE_CHAT_API_VERSION = Constants.MIN_VOICE_CHAT_API_VERSION
local WATCHED_MESSAGE_TYPES = Constants.WATCHED_MESSAGE_TYPES
local PERMISSION_STATE = Constants.PERMISSION_STATE

local VOICE_JOIN_PROGRESS = CoreVoiceConstants.VOICE_JOIN_PROGRESS
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
	showVoiceUI = Instance.new("BindableEvent"),
	hideVoiceUI = Instance.new("BindableEvent"),
	voiceUIVisible = false,
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
	seamlessVoiceStatus = nil,
	isShowingFTUX = false,
	hideFTUXSignal = Instance.new("BindableEvent"),
	settingsAppAvailable = nil,
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

if GetFFlagEnableCoreVoiceManagerMuteAll() then
	VOICE_CHAT_CORE_PROPERTIES:add('_mutedAnyone')
	VOICE_CHAT_CORE_PROPERTIES:add('muteAllChanged')
end

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
	self.reverseNudgeToxicUserRemovalCallbacks = {}
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

	self.coreVoiceManager:subscribe('GetPermissions', function (callback, permissions, shouldNotRequestPerms, rawGet)
		local context = "VoiceChatServiceManager.requestMicPermission"
		if GetFFlagEnableInExpMicPermissionsAnalytics() and self.inExpUpsellEntrypoint ~= nil then
			context = self.inExpUpsellEntrypoint
		end
		self.getPermissionsFunction(callback, permissions, shouldNotRequestPerms, context, rawGet)
	end)
	self.coreVoiceManager:subscribe('OnVoiceParticipantRemoved', function (userId)
		if ExperienceChat.Events.VoiceParticipantRemoved then
			ExperienceChat.Events.VoiceParticipantRemoved(tostring(userId))
		end
	end)
	self.coreVoiceManager:subscribe('OnVoiceParticipantAdded', function (userId)
		if ExperienceChat.Events.VoiceParticipantAdded then
			ExperienceChat.Events.VoiceParticipantAdded(tostring(userId))
		end
	end)
	self.coreVoiceManager:subscribe('OnVoiceParticipantToggleMuted', function (userId, isMuted)
		if ExperienceChat.Events.VoiceParticipantToggleMuted
		then
			ExperienceChat.Events.VoiceParticipantToggleMuted(tostring(userId), isMuted)
		end
	end)
	if GetFFlagShowLikelySpeakingBubbles() then
		-- This tells us who in the experience is voice enabled, which is needed to determine who
		-- should have likely speaking bubbles over their avatars. It fires when players join.
		self.coreVoiceManager:subscribe('OnLikelySpeakingUsersUpdated', function(likelySpeakingUsers)
			if ExperienceChat.Events.LikelySpeakingUsersUpdated then
				ExperienceChat.Events.LikelySpeakingUsersUpdated(likelySpeakingUsers)
			end
		end)
		-- This tells us whether we should show likely speaking bubbles in general for the local player.
		-- It'll fire true once per session if the local player will see the bubbles and will fire
		-- false if the local player accepts or declines the in-experience voice upsell.
		self.coreVoiceManager:subscribe('OnShowLikelySpeakingBubblesChanged', function(showLikelySpeakingBubbles)
			if ExperienceChat.Events.ShowLikelySpeakingBubblesChanged then
				ExperienceChat.Events.ShowLikelySpeakingBubblesChanged(showLikelySpeakingBubbles)
			end
		end)
	end
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
	self.coreVoiceManager:subscribe('OnStateChanged', function (oldState, newState)
		if getFFlagMicrophoneDevicePermissionsPromptLogging() then
			MicrophoneDevicePermissionsLogging:setClientSessionId(self.coreVoiceManager:GetSessionId())
		end
		if GetFFlagEnableShowVoiceUI() then
			local inEndedState = newState == (Enum :: any).VoiceChatState.Ended
			if inEndedState and self.bannedUntil == nil then
				self:HideVoiceUI()
				self:showPrompt(VoiceChatPromptType.LeaveVoice)
			end
		end
	end)
	self.coreVoiceManager:subscribe('OnPlayerMuted', function ()
		self:UpdateAudioDeviceInputDebugger()
	end)
	self.coreVoiceManager:subscribe('OnAudioDeviceInputAdded', function ()
		self:UpdateAudioDeviceInputDebugger()
	end)

	if GetFFlagEnableShowVoiceUI() then
		self.coreVoiceManager:subscribe('OnVoiceChatServiceInitialized', function ()
			self:ShowVoiceUI()
			if FFlagDebugSimulateConnectDisconnect then
				log:debug("Simulating join voice")
				self:simulateVoiceConnectDisconnect()
			end
		end)
	end

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
		if GetFFlagShowDevicePermissionsModal() then
			self:showPrompt(VoiceChatPromptType.DevicePermissionsModal)
		else
			self:showPrompt(VoiceChatPromptType.Permission)
		end
	end)
	self.coreVoiceManager:subscribe('OnVoiceReverseNudgeIconColorChange', function (details)
		log:debug("Showing Reverse Nudge Icon Color Change")
		if ExperienceChat.Events.AddReverseNudgeToxicUser and ExperienceChat.Events.RemoveReverseNudgeToxicUser then
			self:AddReverseNudgeToxicUser(details.toxicUserId, ExperienceChat.Events.AddReverseNudgeToxicUser, ExperienceChat.Events.RemoveReverseNudgeToxicUser)
		end
	end)
	self.coreVoiceManager:subscribe('OnVoiceJoin', function ()
		if GetFFlagEnableSeamlessVoiceConnectDisconnectButton() and self:IsSeamlessVoice() then
			self:showPrompt(VoiceChatPromptType.JoinVoice)
			self:SetVoiceConnectCookieValue(true)
		else
			self:showPrompt(VoiceChatPromptType.VoiceConsentAcceptedToast)
		end
	end)
	return self
end

local function shorten(id)
	return "..." .. string.sub(tostring(id), -4)
end

local function bind(t, k)
	return function(...)
		return t[k](t, ...)
	end
end

function VoiceChatServiceManager:_reportJoinFailed(result, level)
	return self.coreVoiceManager:_reportJoinFailed(result, level)
end

function VoiceChatServiceManager:_asyncInit()
	return self.coreVoiceManager:_asyncInit()
end

function VoiceChatServiceManager:asyncInit()
	return self.coreVoiceManager:asyncInit()
end

function VoiceChatServiceManager:CheckAudioInputExists()
	return self.coreVoiceManager:CheckAudioInputExists()
end

function VoiceChatServiceManager:getService()
	return self.service
end

function VoiceChatServiceManager:GetMutedAnyone()
	if GetFFlagEnableCoreVoiceManagerMuteAll() then
		return self.coreVoiceManager:GetMutedAnyone()
	end
	return self._mutedAnyone
end

function VoiceChatServiceManager:GetRequest(url, method)
	return self.coreVoiceManager:GetRequest(url, method)
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

type AgeVerificationOverlayData = {
	universePlaceVoiceEnabledSettings: any,
	voiceSettings: any,
	showVoiceInExperienceUpsell: boolean,
	showVoiceInExperienceUpsellVariant: string,
}

function VoiceChatServiceManager:_GetShowAgeVerificationOverlay(hasMicPermissions): nil | AgeVerificationOverlayData
	return self.coreVoiceManager:_GetShowAgeVerificationOverlay(if GetFFlagUseMicPermForEnrollment() then hasMicPermissions else nil)
end

function VoiceChatServiceManager:simulateVoiceConnectDisconnect()
	task.spawn(function()
		while true do
			task.wait(FIntDebugConnectDisconnectInterval)
			if self.voiceUIVisible then
				log:debug("Hiding Voice")
				self:HideVoiceUI()
			else
				log:debug("Showing Voice")
				self:ShowVoiceUI()
			end
		end
	end)
end

function VoiceChatServiceManager:FetchAgeVerificationOverlay(hasMicPermissions): nil | AgeVerificationOverlayData
	return self.coreVoiceManager:FetchAgeVerificationOverlay(if GetFFlagUseMicPermForEnrollment() then hasMicPermissions else nil)
end

function VoiceChatServiceManager:FetchPhoneVerificationUpsell(layerName: string, sessionStartTime: number?, forceRefetch: boolean?)
	return self.coreVoiceManager:FetchPhoneVerificationUpsell(layerName, sessionStartTime, forceRefetch)
end

function VoiceChatServiceManager:RecordUserSeenModal(modalId: string): nil
	if GetFFlagUsePostRecordUserSeenGeneralModal() then
		return PostRecordUserSeenGeneralModal(bind(self, "PostRequest"), modalId)
	end
	return nil
end

function VoiceChatServiceManager:checkAndUpdateSequence(namespace: string, value: number)
	return self.coreVoiceManager:checkAndUpdateSequence(namespace, value)
end

function VoiceChatServiceManager:onMissedSequence(namespace)
	return self.coreVoiceManager:onMissedSequence(namespace)
end

function VoiceChatServiceManager:watchSignalR()
	return self.coreVoiceManager:watchSignalR()
end

--[[
	Given the response from PermissionProtocol, check if voice has been given.
	Multiple permissions may have been asked for, so narrow down to voice.
]]
function VoiceChatServiceManager:voicePermissionGranted(permissionResponse)
	return self.coreVoiceManager:voicePermissionGranted(permissionResponse)
end

function VoiceChatServiceManager:GetSignalREvent(type: WatchedMessageTypes): RBXScriptSignal
	return self.coreVoiceManager:GetSignalREvent(type)
end

-- Map AvatarChatService feature mask to VoiceChat structs.
function VoiceChatServiceManager:avatarChatUserAndPlaceSettingsValueOfClientFeatures(clientFeatures)
	return self.coreVoiceManager:avatarChatUserAndPlaceSettingsValueOfClientFeatures(clientFeatures)
end

function VoiceChatServiceManager:resolveAvatarChatUserAndPlaceSettings()
	return self.coreVoiceManager:resolveAvatarChatUserAndPlaceSettings()
end

function VoiceChatServiceManager:EnableVoice()
	return self.coreVoiceManager:EnableVoice()
end

function VoiceChatServiceManager:_VoiceChatFirstTimeUX(appStorageService: AppStorageService)
	local hasShownFTUX, STUXCount
	local success = pcall(function()
		local rawHasShownFTUX = appStorageService:GetItem(VoiceConstants.SEAMLESS_VOICE_FTUX_KEY)
		local RawSTUXCount = appStorageService:GetItem(VoiceConstants.SEAMLESS_VOICE_STUX_KEY)
		hasShownFTUX = rawHasShownFTUX == "true"
		STUXCount = if RawSTUXCount == nil then 0 else tonumber(RawSTUXCount)
	end)

	if not success then
		log:warning("Failed to read FTUX/STUX from AppStorage")
		return
	end

	log:trace("hasShownFTUX: {}. STUXCount: {}", hasShownFTUX, STUXCount)

	if not hasShownFTUX then
		log:debug("Showing FTUX")
		self.isShowingFTUX = true
		self:MuteAll(true, "FTUX")
		if ExperienceChat.Events.ShowLikelySpeakingBubblesChanged and ExperienceChat.Events.LikelySpeakingUsersUpdated then
			log:debug("Showing likely speaking bubbles")
			local likelySpeakingUsers = {}
			ExperienceChat.Events.ShowLikelySpeakingBubblesChanged(true)
			for k in self.participants do
				likelySpeakingUsers[k] = true
			end
			ExperienceChat.Events.LikelySpeakingUsersUpdated(likelySpeakingUsers)
			local joinedEvent = self.participantJoined.Event:Connect(function(userId)
				likelySpeakingUsers[userId] = true
				ExperienceChat.Events.LikelySpeakingUsersUpdated(likelySpeakingUsers)
			end)
			self.hideFTUXSignal.Event:Connect(function()
				joinedEvent:Disconnect()
				ExperienceChat.Events.ShowLikelySpeakingBubblesChanged(false)
				ExperienceChat.Events.LikelySpeakingUsersUpdated({})
			end)
			self.hideVoiceUI.Event:Once(function()
				ExperienceChat.Events.ShowLikelySpeakingBubblesChanged(false)
				ExperienceChat.Events.LikelySpeakingUsersUpdated({})
			end)
			self.muteAllChanged.Event:Once(function()
				self:HideFTUX(appStorageService)
			end)
			self.talkingChanged.Event:Once(function()
				self:HideFTUX(appStorageService)
			end)
		end
	elseif STUXCount < FIntSeamlessVoiceSTUXDisplayCount then
		log:debug("Showing STUX")
		self:showPrompt(VoiceChatPromptType.JoinVoiceSTUX)
		pcall(function()
			appStorageService:SetItem(VoiceConstants.SEAMLESS_VOICE_STUX_KEY, tostring(STUXCount + 1))
			appStorageService:Flush()
		end)
	end
end

function VoiceChatServiceManager:VoiceChatFirstTimeUX(appStorageService: AppStorageService)
	-- We only want to do this once per voice session
	if not FFlagDebugSkipSeamlessVoiceAPICheck then
		local permissions = self:FetchAgeVerificationOverlay()
		if permissions.voiceSettings
			and permissions.voiceSettings.seamlessVoiceStatus ~= VoiceConstants.SEAMLESS_VOICE_STATUS_ENABLED_NEW_USER
		then
			log:debug("User not eligible for FTUX/STUX")
			return
		end
	end
	local function startFTUX()
		log:debug("Starting FTUX")
		self:_VoiceChatFirstTimeUX(appStorageService)
	end
	self:asyncInit():andThen(function()
		local stateChangedConnection: RBXScriptConnection
		if self.service.VoiceChatState and self.service.VoiceChatState == (Enum :: any).VoiceChatState.Joined then
			startFTUX()
		end
		stateChangedConnection = self.service.StateChanged:Connect(function(_oldState, newState)
			if newState == (Enum :: any).VoiceChatState.Joined then
				startFTUX()
				stateChangedConnection:Disconnect()
			end
		end)
	end):catch(function(e)
		log:trace("Failed to start FTUX: {}", e)
	end)
end

function VoiceChatServiceManager:HideFTUX(appStorageService: AppStorageService)
	self.isShowingFTUX = false
	self.hideFTUXSignal:Fire()
	self:MuteAll(false, "FTUX")
	pcall(function()
		appStorageService:SetItem(VoiceConstants.SEAMLESS_VOICE_FTUX_KEY, "true")
		appStorageService:Flush()
	end)
	self:showPrompt(VoiceChatPromptType.JoinedVoiceToast)
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
	return self.coreVoiceManager:ChangeVoiceJoinProgress(state)
end

function VoiceChatServiceManager:UserOnlyEligibleForVoice(): boolean
	return self.coreVoiceManager:UserOnlyEligibleForVoice()
end

function VoiceChatServiceManager:UserVoiceEnabled(): boolean
	return self.coreVoiceManager:UserVoiceEnabled()
end

function VoiceChatServiceManager:UserInInExperienceUpsellTreatment(): boolean
	return self.coreVoiceManager:UserInInExperienceUpsellTreatment()
end

function VoiceChatServiceManager:UserEligibleForInExperienceUpsell(): boolean
	return self.coreVoiceManager:UserEligibleForInExperienceUpsell()
end

function VoiceChatServiceManager:UserEligibleForLikelySpeakingBubbles(): boolean
	return self.coreVoiceManager:UserEligibleForLikelySpeakingBubbles()
end

function VoiceChatServiceManager:ShowInExperienceVoiceUpsell(entrypoint: string)
	local ageVerificationResponse = self:FetchAgeVerificationOverlay()
	local voiceInExpUpsellVariant = ageVerificationResponse.showVoiceInExperienceUpsellVariant

	self:SetInExpUpsellEntrypoint(entrypoint)

	local promptToShow = self:GetInExpUpsellPromptFromEnum(voiceInExpUpsellVariant)
	self:showPrompt(promptToShow)
end

function VoiceChatServiceManager:ShowInExperiencePhoneVoiceUpsell(entrypoint: string, layerName: string)
	self:SetInExpUpsellEntrypoint(entrypoint)

	PhoneUpsellController.openPhoneUpsell({
		origin = "inExperience",
		eventContext = "verificationUpsell",
		entryConfig = {
			titleKey = "Feature.VerificationUpsell.Heading.UnlockVoiceChat",
			descriptionKey = "Feature.VerificationUpsell.Description.UnlockVoiceChatBody",
			buttonKey = "Feature.VerificationUpsell.Action.AddPhoneNumber",
			extraButtonConfig = {
				extraButtonKey = "Feature.VerificationUpsell.Action.NotNow"
			},
			legalTextKey = "Feature.VerificationUpsell.Description.VoiceLegalDisclaimer2"
		},
		onSuccessBeforeToast = function()
			self.coreVoiceManager:DisablePhoneVerificationUpsell()
			if GetFFlagShowLikelySpeakingBubbles() and ExperienceChat.Events.ShowLikelySpeakingBubblesChanged then
				ExperienceChat.Events.ShowLikelySpeakingBubblesChanged(false)
			end
			PostPhoneUpsellDisplayed(bind(self, "PostRequest"), layerName, os.time(), false)
		end,
		onSuccess = function()
			self:EnableVoice()
		end,
		closeUpsell = function()
			if GetFFlagShowLikelySpeakingBubbles() and ExperienceChat.Events.ShowLikelySpeakingBubblesChanged then
				ExperienceChat.Events.ShowLikelySpeakingBubblesChanged(false)
			end
			if entrypoint ~= VoiceConstants.IN_EXP_UPSELL_ENTRYPOINTS.JOIN_VOICE then
				self:showPrompt(VoiceChatPromptType.VoiceConsentDeclinedToast)
			end
			PostPhoneUpsellDisplayed(bind(self, "PostRequest"), layerName, os.time(), true)
		end
	})
end

function VoiceChatServiceManager:DisablePhoneVerificationUpsell()
	self.coreVoiceManager:DisablePhoneVerificationUpsell()
end

function VoiceChatServiceManager:SetInExpUpsellEntrypoint(entrypoint: string)
	self.inExpUpsellEntrypoint = entrypoint
end

function VoiceChatServiceManager:userAndPlaceCanUseVoice()
	return self.coreVoiceManager:userAndPlaceCanUseVoice()
end

function VoiceChatServiceManager:GetVoiceConnectCookieValue(): boolean
	return self.coreVoiceManager:GetVoiceConnectCookieValue()
end

function VoiceChatServiceManager:SetVoiceConnectCookieValue(value: boolean): boolean
	return self.coreVoiceManager:SetVoiceConnectCookieValue(value)
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
	return self.coreVoiceManager:CheckCallState()
end

function VoiceChatServiceManager:ShowVoiceChatLoadingMessage()
	self:showPrompt(VoiceChatPromptType.VoiceLoading)
end

function VoiceChatServiceManager:requestMicPermission()
	return self.coreVoiceManager:requestMicPermission()
end

function VoiceChatServiceManager:canUseServiceAsync()
	return self.coreVoiceManager:canUseServiceAsync()
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
	return self.coreVoiceManager:ensureInitialized(action)
end

-- implementation wrappers for when VoiceChatInternal is deprecated
function VoiceChatServiceManager:GetSessionId()
	return self.coreVoiceManager:GetSessionId()
end

function VoiceChatServiceManager:GetChannelId()
	return self.coreVoiceManager:GetChannelId()
end

function VoiceChatServiceManager:JoinWithVoiceMuteData(obj)
	return self.coreVoiceManager:JoinWithVoiceMuteData(obj)
end

function VoiceChatServiceManager:calculateBanDuration(startTimestamp: number, endTimestamp: number)
	return math.ceil((endTimestamp - startTimestamp) / 60)
end

function VoiceChatServiceManager:ShowVoiceUI()
	if not GetFFlagEnableShowVoiceUI() then
		return
	end
	self.voiceUIVisible = true
	self.showVoiceUI:Fire()

	if ExperienceChat.Events.VoiceUIVisibilityChanged then
		ExperienceChat.Events.VoiceUIVisibilityChanged(true)
	end
end

function VoiceChatServiceManager:HideVoiceUI()
	if not GetFFlagEnableShowVoiceUI() then
		return
	end
	self.voiceUIVisible = false
	self.hideVoiceUI:Fire()

	if ExperienceChat.Events.VoiceUIVisibilityChanged then
		ExperienceChat.Events.VoiceUIVisibilityChanged(false)
	end
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

		local success = false
		local canSwitchToSettings = nil
		if GetFFlagShowDevicePermissionsModal() and promptType == VoiceChatPromptType.DevicePermissionsModal then
			-- There is a known issue where calling LinkingProtocol:supportsSwitchToSettingsApp for the first time 
			-- stalls forever and never resolves, but when it's called any time after that it succeeds. To work around
			-- this before a fix goes out, we run the code in a separate thread and wait briefly for it determine
			-- if the device supports deeplinking. We cancel the task and check if we were able to determine this.
			-- If not, we retry so that we get the success the second time.
			-- Once the actual fix is implemented, we can flip the flag off and clean up the logic
			if self.settingsAppAvailable == nil then
				if FFlagEnableRetryForLinkingProtocolFetch then
					for i = 0, FIntLinkingProtocolFetchRetries do
						local supportsSwitchToSettingsTask = task.spawn(function()
							success, canSwitchToSettings = LinkingProtocol:supportsSwitchToSettingsApp(SettingsRoute.Microphone):await()
						end)
						task.wait(FIntLinkingProtocolFetchTimeoutMS / 1000)
						task.cancel(supportsSwitchToSettingsTask)
	
						if canSwitchToSettings ~= nil then
							break
						end
					end
				else
					success, canSwitchToSettings = LinkingProtocol:supportsSwitchToSettingsApp(SettingsRoute.Microphone):await()
				end

				-- We cache the result of checking if the device supports deeplinking so that we don't call logic above again
				self.settingsAppAvailable = success and canSwitchToSettings
			end
		end

		self.voiceChatPromptInstance = Roact.mount(
			Roact.createElement(VoiceChatPrompt, {
				Analytics = Analytics.new(),
				promptSignal = self.promptSignal.Event,
				bannedUntil = banEnd,
				policyMapper = self.policyMapper,
				errorText = errorText,
				onReadyForSignal = onReadyForSignal,
				VoiceChatServiceManager = self,
				settingsAppAvailable = if self.settingsAppAvailable == nil then false else self.settingsAppAvailable,
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
						if GetFFlagShowLikelySpeakingBubbles() and ExperienceChat.Events.ShowLikelySpeakingBubblesChanged then
							ExperienceChat.Events.ShowLikelySpeakingBubblesChanged(false)
						end
					end
					else nil,
				onPrimaryActivated = if isNudge
					then function()
						self.Analytics:reportAcknowledgedNudge(self:GetNudgeAnalyticsData())
					end
					elseif GetFFlagJoinWithoutMicPermissions() and promptType == VoiceChatPromptType.Permission then function()
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
					elseif GetFFlagJoinWithoutMicPermissions() and GetFFlagShowDevicePermissionsModal() and promptType == VoiceChatPromptType.DevicePermissionsModal then function()
						log:debug("Settings app available: {}", self.settingsAppAvailable)
						if GetFFlagSendDevicePermissionsModalAnalytics() then
							self.Analytics:reportDevicePermissionsModalEvent(
								if self.settingsAppAvailable then "OpenedSettings" else "Acknowledged",
								self:GetSessionId(),
								self:GetInExpUpsellAnalyticsData()
							)
						end

						if self.settingsAppAvailable then
							log:debug("Switching to settings app")
							LinkingProtocol:switchToSettingsApp(SettingsRoute.Microphone)
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
						if GetFFlagEnableInExpVoiceConsentAnalytics() then
							self.Analytics:reportInExpConsent(
								"accepted",
								self.inExpUpsellEntrypoint,
								self:GetInExpUpsellAnalyticsData()
							)
						end
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
						if GetFFlagEnableInExpVoiceConsentAnalytics() then
							self.Analytics:reportInExpConsent(
								"denied",
								self.inExpUpsellEntrypoint,
								self:GetInExpUpsellAnalyticsData()
							)
						end
						if self.inExpUpsellEntrypoint ~= VoiceConstants.IN_EXP_UPSELL_ENTRYPOINTS.JOIN_VOICE then
							self:showPrompt(VoiceChatPromptType.VoiceConsentDeclinedToast)
						end
					end
					elseif GetFFlagSendDevicePermissionsModalAnalytics() and promptType == VoiceChatPromptType.DevicePermissionsModal then function()
						self.Analytics:reportDevicePermissionsModalEvent(
							"Denied",
							self:GetSessionId(),
							self:GetInExpUpsellAnalyticsData()
						)
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
		local userEligible = self.userEligible
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

function VoiceChatServiceManager:GetInExpUpsellAnalyticsData()
	local sessionId = ""
	if EngineFeatureRbxAnalyticsServiceExposePlaySessionId then
		sessionId = AnalyticsService:GetPlaySessionId()
	end
	return game.GameId, game.PlaceId, sessionId
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
	self.coreVoiceManager:SetAndSyncActive(device, newActive)
end

function VoiceChatServiceManager:CreateAudioDeviceData(device: AudioDeviceInput): AudioDeviceData
	return self.coreVoiceManager:CreateAudioDeviceData(device)
end

function VoiceChatServiceManager:onInstanceAdded(inst: Instance)
	return self.coreVoiceManager:onInstanceAdded(inst)
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

function VoiceChatServiceManager:AddReverseNudgeToxicUser(toxicUserId: string, addReverseNudgeToxicUserEvent: any, removeReverseNudgeToxicUserEvent: any)
	addReverseNudgeToxicUserEvent(toxicUserId, "iconColorChange")

	-- Cancel existing callback for the user, if one exists
	local existingRemovalCallback = self.reverseNudgeToxicUserRemovalCallbacks[toxicUserId]
	if existingRemovalCallback ~= nil then 
		task.cancel(existingRemovalCallback)
	end

	-- Schedule a callback to remove the user from state after a set delay
	local newCallback = task.delay(GetFIntVoiceReverseNudgeUXDisplayTimeSeconds(), function()
		removeReverseNudgeToxicUserEvent(toxicUserId)
		self.reverseNudgeToxicUserRemovalCallbacks[toxicUserId] = nil
	end)
	self.reverseNudgeToxicUserRemovalCallbacks[toxicUserId] = newCallback
end

function VoiceChatServiceManager:onInstanceRemove(inst: Instance)
	return self.coreVoiceManager:onInstanceRemove(inst)
end

function VoiceChatServiceManager:hookupAudioDeviceInputListener()
	return self.coreVoiceManager:hookupAudioDeviceInputListener()
end

function VoiceChatServiceManager:ToggleMutePlayer(userId: number, context: string)
	if GetFFlagEnableCoreVoiceManagerMuteAll() then
		return self.coreVoiceManager:ToggleMutePlayer(userId, context)
	end
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
	if GetFFlagEnableCoreVoiceManagerMuteAll() then
		return self.coreVoiceManager:MuteAll(muteState, context)
	end
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
	if GetFFlagEnableCoreVoiceManagerMuteAll() then
		return self.coreVoiceManager:ToggleMuteSome(userIds, muteState, groupType, context)
	end
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

function VoiceChatServiceManager:JoinVoice()
	local ageVerificationResponse = self:FetchAgeVerificationOverlay()
	local voiceInExpUpsellVariant = ageVerificationResponse.showVoiceInExperienceUpsellVariant

	if GetFFlagEnableInExpJoinVoiceAnalytics() then
		self.Analytics:reportJoinVoiceButtonEvent(
			"clicked",
			self:GetInExpUpsellAnalyticsData()
		)
	end

	if self:UserOnlyEligibleForVoice() then
		self:SetInExpUpsellEntrypoint(VoiceConstants.IN_EXP_UPSELL_ENTRYPOINTS.JOIN_VOICE)

		local promptToShow = self:GetInExpUpsellPromptFromEnum(voiceInExpUpsellVariant)
		self:showPrompt(promptToShow)
	end
end

-- Show join voice button in voice enabled experiences, for voice eligible users who haven't enabled voice and voice enabled users with denied mic permissions
function VoiceChatServiceManager:ShouldShowJoinVoice()
	local userInInExperienceUpsellTreatment = self:UserInInExperienceUpsellTreatment()
	local userVoiceUpsellEligible = self:UserOnlyEligibleForVoice()
		or self:UserVoiceEnabled()
	return userInInExperienceUpsellTreatment and userVoiceUpsellEligible
end

function VoiceChatServiceManager:IsSeamlessVoice()
	local ageVerificationOverlayData = self:FetchAgeVerificationOverlay()
	local seamlessVoiceStatus = ageVerificationOverlayData.voiceSettings.seamlessVoiceStatus
	return seamlessVoiceStatus == SeamlessVoiceStatus.EnabledExistingUser or seamlessVoiceStatus == SeamlessVoiceStatus.EnabledNewUser
end

function VoiceChatServiceManager:GetConnectDisconnectButtonAnalyticsData(addVoiceSessionId: boolean)
	local sessionId = ""
	if EngineFeatureRbxAnalyticsServiceExposePlaySessionId then
		sessionId = AnalyticsService:GetPlaySessionId()
	end
	local analytics = {game.GameId, game.PlaceId, sessionId}
	if addVoiceSessionId and self:getService() then
		table.insert(analytics, self:GetSessionId())
	end
	return unpack(analytics)
end

function VoiceChatServiceManager:Leave()
	self:ensureInitialized("leave")
	local previousGroupId = self.service:GetGroupId()
	local previousMutedState = self.service:IsPublishPaused()
	self.service:Leave()
	self:HideVoiceUI()
	self.previousGroupId = 	previousGroupId
	self.previousMutedState = previousMutedState
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
	return self.coreVoiceManager:getRecentUsersInteractionData()
end

function VoiceChatServiceManager:_setRecentUserState(userId, newState)
	return self.coreVoiceManager:_setRecentUserState(userId, newState)
end

function VoiceChatServiceManager:_updateRecentUsersInteractionData()
	return self.coreVoiceManager:_updateRecentUsersInteractionData()
end

function VoiceChatServiceManager:SetupParticipantListeners()
	return self.coreVoiceManager:SetupParticipantListeners()
end

function VoiceChatServiceManager:Disconnect()
	self.coreVoiceManager:Disconnect()
	self.coreVoiceManager:unsubscribeAll()
end

function VoiceChatServiceManager:GetSendMuteEvent(): RemoteEvent | nil
	return self.coreVoiceManager:GetSendMuteEvent()
end

function VoiceChatServiceManager:GetLikelySpeakingUsersEvent(): RemoteEvent | nil
	return self.coreVoiceManager:GetLikelySpeakingUsersEvent()
end

-- Do not pass context if the call is not the result of user action
function VoiceChatServiceManager:ToggleMic(context: string?)
	return self.coreVoiceManager:ToggleMic(context)
end

function VoiceChatServiceManager:SubscribeRetry(userId: number)
	self:ensureInitialized("subscribe retry")
	log:debug("Attempting to retry connection to user: {}", shorten(userId))
	self.service:SubscribeRetry(userId)
end

function VoiceChatServiceManager:JoinByGroupIdToken(group, muteState)
	return self.coreVoiceManager:JoinByGroupIdToken(group, muteState)
end

function VoiceChatServiceManager:RejoinCurrentChannel()
	return self.coreVoiceManager:RejoinCurrentChannel()
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
				self:InitialJoinFailedPrompt()
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
		if game:GetEngineFeature("UseFmodForInputDevices") then
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
			if game:GetEngineFeature("UseFmodForInputDevices") then
				return SoundService:GetInputDevices()
			else
				return self.service:GetMicDevices()
			end
		else
			return SoundService:GetOutputDevices()
		end
	end)

	if game:GetEngineFeature("UseFmodForInputDevices") then
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
		self.voiceChatPromptInstance = nil
	end
end

VoiceChatServiceManager.default = VoiceChatServiceManager.new(
	CoreVoiceManager.default,
	nil,
	HttpRbxApiService,
	PermissionsProtocol.default,
	BlockingUtility:GetAfterBlockedStatusChangedEvent()
)

export type VoiceChatServiceManager = typeof(VoiceChatServiceManager.default)

return VoiceChatServiceManager
