
local USER_INELIGIBLE_WARNING = "Current Player is not eligible to use Spatial Voice"
local PLACE_INELIGIBLE_WARNING = "Current place is not eligible for Spatial Voice. Spatial Voice is available for places with Max Players <= 30."
local SKIP_VOICE_CHECK_KEY = "SKIP_VOICE_CHECK_KEY"
local SKIP_VOICE_CHECK_UNIVERSE_KEY = "SKIP_VOICE_CHECK_UNIVERSE_KEY"

local MIN_VOICE_CHAT_API_VERSION = 3
local MIN_VOICE_CHAT_API_VERSION_LOCAL_MIC_ACTIVITY = 9
local MIN_VOICE_CHAT_API_VERSION_IS_CONTEXT_ENABLED = 10
local VOICE_CHAT_AVAILABILITY = {
	PlaceNotAvailable = -1,
	UserNotAvailable = 0,
	Checking = 1,
	Available = 2,
}

local VOICE_CHAT_DEVICE_TYPE = {
	Input = "Input",
	Output = "Output",
}

local VOICE_STATE = {
	INACTIVE = "Inactive",
	TALKING = "Talking",
	CONNECTING = "Connecting",
	MUTED = "Muted",
	LOCAL_MUTED = "LOCAL_MUTED",
	ERROR = "Error",
	HIDDEN = "Hidden",
}

-- If any of the sequence numbers for these namespaces are missed, VoiceChatServiceManager will rejoin the call
local WATCHED_NAMESPACES = { VoiceNotifications=true, VoiceModeration=true }
export type WatchedMessageTypes = "ParticipantModeratedFromVoice" | "VoiceToxicityModal" | "VoiceToxicityToast"
local WATCHED_MESSAGE_TYPES: {WatchedMessageTypes} = { "ParticipantModeratedFromVoice", "VoiceToxicityModal", "VoiceToxicityToast" }

return {
	VOICE_STATE = VOICE_STATE,
	SKIP_VOICE_CHECK_KEY = SKIP_VOICE_CHECK_KEY,
	SKIP_VOICE_CHECK_UNIVERSE_KEY = SKIP_VOICE_CHECK_UNIVERSE_KEY,
	USER_INELIGIBLE_WARNING = USER_INELIGIBLE_WARNING,
	PLACE_INELIGIBLE_WARNING = PLACE_INELIGIBLE_WARNING,
	MIN_VOICE_CHAT_API_VERSION = MIN_VOICE_CHAT_API_VERSION,
	MIN_VOICE_CHAT_API_VERSION_LOCAL_MIC_ACTIVITY = MIN_VOICE_CHAT_API_VERSION_LOCAL_MIC_ACTIVITY,
	MIN_VOICE_CHAT_API_VERSION_IS_CONTEXT_ENABLED = MIN_VOICE_CHAT_API_VERSION_IS_CONTEXT_ENABLED,
	VOICE_CHAT_AVAILABILITY = VOICE_CHAT_AVAILABILITY,
	VOICE_CHAT_DEVICE_TYPE = VOICE_CHAT_DEVICE_TYPE,
	WATCHED_NAMESPACES = WATCHED_NAMESPACES,
	WATCHED_MESSAGE_TYPES = WATCHED_MESSAGE_TYPES,
}