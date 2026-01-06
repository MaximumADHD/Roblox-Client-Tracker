local AnalyticsService = game:GetService("RbxAnalyticsService")
local AvatarChatService = game:GetService("AvatarChatService")
local FStringMicrophoneDevicePermissionsLoggingEventName = game:DefineFastString("MicrophoneDevicePermissionsLoggingEventName", "microphoneDevicePermissionPrompted")

export type MicrophoneDeviceLoggingConfig = {
    didAuthorize: boolean,
    uiContext: string?
}

export type MicrophoneDeviceLoggingEventPayload = {
    didAuthorize: boolean,
    uiType: number,
    uiContext: string?,
    placeId: number?,
    universeId: number?,
    placeVoiceEnabled: boolean?,
    universeVoiceEnabled: boolean?,
    clientSessionId: string?
}

export type MicrophoneDeviceLoggingSingleton = {
    _init: (MicrophoneDeviceLoggingSingleton, clientFeatures: any, hasMicPermissionsOnExperienceJoin: boolean) -> (),
    _getEventPayload: (MicrophoneDeviceLoggingSingleton, uiType: number, config: MicrophoneDeviceLoggingConfig) -> MicrophoneDeviceLoggingEventPayload,
    _isReady: (MicrophoneDeviceLoggingSingleton) -> boolean,

    init: (MicrophoneDeviceLoggingSingleton, hasMicPermissionsOnExperienceJoin: boolean) -> (),
    logExperienceJoin: (MicrophoneDeviceLoggingSingleton, config: MicrophoneDeviceLoggingConfig) -> (),
    logPromptImpression: (MicrophoneDeviceLoggingSingleton, config: MicrophoneDeviceLoggingConfig) -> (),
    logPromptInteraction: (MicrophoneDeviceLoggingSingleton, config: MicrophoneDeviceLoggingConfig) -> (),
    setClientSessionId: (MicrophoneDeviceLoggingSingleton, id: string) -> (),

    _initialized: boolean,
    placeId: number,
    universeId: number,
    placeVoiceEnabled: boolean,
    universeVoiceEnabled: boolean,
    clientSessionId: string,
    UIType: { [string]: number }
}

local MicrophoneDevicePermissionsLogging: MicrophoneDeviceLoggingSingleton = {
    _initialized = false,
    placeId = 0,
    universeId = 0,
    placeVoiceEnabled = false,
    universeVoiceEnabled = false,
    clientSessionId = "",
    UIType = {
        EXPERIENCE_JOIN = 0,
        PROMPT_IMPRESSION = 1,
        PROMPT_INTERACTION = 2
    }
} :: MicrophoneDeviceLoggingSingleton


function MicrophoneDevicePermissionsLogging:_init(clientFeatures, hasMicPermissionsOnExperienceJoin)
    self._initialized = true
    self.placeId = game.PlaceId
    self.universeId = game.GameId
    self.placeVoiceEnabled = AvatarChatService:IsEnabled(clientFeatures, Enum.AvatarChatServiceFeature.PlaceAudio)
    self.universeVoiceEnabled = AvatarChatService:IsEnabled(clientFeatures, Enum.AvatarChatServiceFeature.UniverseAudio)

    self:logExperienceJoin({
        didAuthorize = hasMicPermissionsOnExperienceJoin
    })
end

function MicrophoneDevicePermissionsLogging:_getEventPayload(uiType, config)
    return {
        uiType = uiType,
        uiContext = config.uiContext,
        didAuthorize = config.didAuthorize,
        placeId = self.placeId,
        universeId = self.universeId,
        placeVoiceEnabled = self.placeVoiceEnabled,
        universeVoiceEnabled = self.universeVoiceEnabled,
        clientSessionId = self.clientSessionId
    }
end

function MicrophoneDevicePermissionsLogging:_isReady()
    return self._initialized
end

function MicrophoneDevicePermissionsLogging:init(hasMicPermissionsOnExperienceJoin)
    if AvatarChatService.ClientFeaturesInitialized then
        self:_init(AvatarChatService.ClientFeatures, hasMicPermissionsOnExperienceJoin)
    else
        local clientFeaturesChangedListener
        clientFeaturesChangedListener = AvatarChatService:GetPropertyChangedSignal("ClientFeatures"):Connect(function()
            self:_init(AvatarChatService.ClientFeatures, hasMicPermissionsOnExperienceJoin)
            clientFeaturesChangedListener:Disconnect()
        end)
    end
end

function MicrophoneDevicePermissionsLogging:logExperienceJoin(config)
    if not self:_isReady() then
        return
    end

    AnalyticsService:SendEventDeferred(
        "client",
        "voice",
        FStringMicrophoneDevicePermissionsLoggingEventName,
        self:_getEventPayload(self.UIType.EXPERIENCE_JOIN, config)
    )
end

function MicrophoneDevicePermissionsLogging:logPromptImpression(config)
    if not self:_isReady() then
        return
    end

    AnalyticsService:SendEventDeferred(
        "client",
        "voice",
        FStringMicrophoneDevicePermissionsLoggingEventName,
        self:_getEventPayload(self.UIType.PROMPT_IMPRESSION, config)
    )
end

function MicrophoneDevicePermissionsLogging:logPromptInteraction(config)
    if not self:_isReady() then
        return
    end

    AnalyticsService:SendEventDeferred(
        "client",
        "voice",
        FStringMicrophoneDevicePermissionsLoggingEventName,
        self:_getEventPayload(self.UIType.PROMPT_INTERACTION, config)
    )
end

function MicrophoneDevicePermissionsLogging:setClientSessionId(id)
    if not self:_isReady() or self.clientSessionId == id then
        return
    end

    self.clientSessionId = id
end

return MicrophoneDevicePermissionsLogging