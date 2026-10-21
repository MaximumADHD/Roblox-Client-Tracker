--!strict
local ACRONYMS: { [string]: string } = {
	ice = "ICE",
	sdp = "SDP",
	ssrc = "SSRC",
	acs = "ACS",
	rtc = "RTC",
}

local TRAILING_SUFFIXES = { "State", "Operation", "Event" }

local function stripTrailingSuffix(raw: string): string
	for _, suffix in TRAILING_SUFFIXES do
		local cut = #raw - #suffix
		if cut > 0 and raw:sub(cut + 1) == suffix then
			return raw:sub(1, cut)
		end
	end
	return raw
end

local function splitPascalCase(raw: string): { string }
	local words = {}
	local current = ""
	for i = 1, #raw do
		local ch = raw:sub(i, i)
		local nextCh = raw:sub(i + 1, i + 1)
		current ..= ch
		local chIsUpper = ch:match("%u") ~= nil
		local nextIsUpper = nextCh:match("%u") ~= nil
		if not chIsUpper and nextIsUpper then
			words[#words + 1] = current
			current = ""
		elseif chIsUpper and nextIsUpper then
			local afterNext = raw:sub(i + 2, i + 2)
			if afterNext:match("%l") then
				words[#words + 1] = current
				current = ""
			end
		end
	end
	if current ~= "" then
		words[#words + 1] = current
	end
	return words
end

local function canonicalizeWord(word: string): string
	return ACRONYMS[word:lower()] or word
end

local function humanizeName(raw: string): string
	local words = splitPascalCase(stripTrailingSuffix(raw))
	for i, word in words do
		words[i] = canonicalizeWord(word)
	end
	return table.concat(words, " ")
end

local operationTypeLabels: { [string]: string } = {
	ClientJoinOperation = "Join",
	ClientLeaveOperation = "Leave",
	ClientPublishOperation = "Publish",
	ClientSubscribeOperation = "Subscribe",
	ClientMuteUnmuteOperation = "Mute/Unmute",
	ClientPeerLocalMuteUnmuteOperation = "Peer Local Mute/Unmute",
	ClientPeerRemoteMuteUnmuteOperation = "Peer Remote Mute/Unmute",
	ClientCullingOperation = "Culling",
	ClientICETrickleOperation = "ICE Trickle",
	ClientTurnAuthOperation = "TURN Auth",
	ClientSubscriberAudioQualityOperation = "Subscriber Audio Quality",
	ClientVoiceRtcStatsOperation = "Voice RTC Stats",
	ClientVoiceRtcStatsMonitorOperation = "Voice RTC Stats Monitor",
	ClientVoiceWebrtcConnectionChangesOperation = "WebRTC Connection Changes",
	ClientRebootOperation = "Reboot",
	ClientContextParsingOperation = "Context Parsing",
	ConnectOperation = "Connect",
}

local eventNameLabels: { [string]: string } = {
	ClientRetryJoin = "Client Retry Join",
	ClientRetryJoinWithConfig = "Client Retry Join With Config",
	VoiceChatplayerMuteStatusChangedEvent = "Player Mute Status Changed",
	SubscribeStateChange = "Subscribe State Change",
	PublishStateChange = "Publish State Change",
	JoinedVoice = "Joined Voice",
	JoinedVoiceV2 = "Joined Voice V2",
	PublishingHandshakeAcked = "Publishing Handshake Acked",
	PublishingHandshakeCompleted = "Publishing Handshake Completed",
	PublishingHandshakeInitiated = "Publishing Handshake Initiated",
	PublishingHandshakeInitiatedWithBothSdp = "Publishing Handshake Initiated (Both SDP)",
	PublishingHandshakeAckedWithBothSdp = "Publishing Handshake Acked (Both SDP)",
	PublishingHandshakeInitiatedWithCompressedSdp = "Publishing Handshake Initiated (Compressed SDP)",
	PublishingHandshakeAckedWithCompressedSdp = "Publishing Handshake Acked (Compressed SDP)",
	UpdateTurnAuthInfoRequest = "Update TURN Auth Info Request",
	ACSCleanup = "ACS Cleanup",
	ReJoinedVoice = "Rejoined Voice",
	ReJoinedVoiceV2 = "Rejoined Voice V2",
	UserTurnAuth = "User TURN Auth",
	UserTurnAuthV2 = "User TURN Auth V2",
	FetchUserTurnAuthOperationFailed = "Fetch User TURN Auth Failed",
	RelayCandidatesGathered = "Relay Candidates Gathered",
	VoiceChatClientVoiceCapability = "Client Voice Capability",
	VoiceChatClientVoiceCapabilityWithConfig = "Client Voice Capability (With Config)",
	VoiceChatPlayerMuteStateChangedClientToServer = "Player Mute State Changed (Client to Server)",
	VoiceChatPlayerMuteStateChangedServerToClient = "Player Mute State Changed (Server to Client)",
	VoiceChatSampleTaggedEventClientToServer = "Sample Tagged Event (Client to Server)",
	VoiceChatSampleTaggedEventServerToClient = "Sample Tagged Event (Server to Client)",
	VoiceSetupFailed = "Voice Setup Failed",
	SubscriptionReset = "Subscription Reset",
	SsrcUserIdMappingUpdate = "SSRC/User ID Mapping Update",
	ClientStreamSwitchAck = "Client Stream Switch Ack",
	SubscriptionHandshakeInitiated = "Subscription Handshake Initiated",
	SubscriptionHandshakeAcked = "Subscription Handshake Acked",
	SubscriptionHandshakeInitiatedWithBothSdp = "Subscription Handshake Initiated (Both SDP)",
	SubscriptionHandshakeAckedWithBothSdp = "Subscription Handshake Acked (Both SDP)",
	SubscriptionHandshakeInitiatedWithCompressedSdp = "Subscription Handshake Initiated (Compressed SDP)",
	SubscriptionHandshakeAckedWithCompressedSdp = "Subscription Handshake Acked (Compressed SDP)",
	SubscriptionHandshakeCompleted = "Subscription Handshake Completed",
	VoiceChatSubscriptionInitialBatchEmpty = "Subscription Initial Batch Empty",
	SubscriptionFeedStarted = "Subscription Feed Started",
	VoiceMigration = "Voice Migration",
	SubscriberAudioQualitySample = "Subscriber Audio Quality Sample",
}

local function labelForOperationType(operationType: string): string
	return operationTypeLabels[operationType] or humanizeName(operationType)
end

local function labelForEventName(name: string): string
	return eventNameLabels[name] or humanizeName(name)
end

return {
	operationTypeLabels = operationTypeLabels,
	eventNameLabels = eventNameLabels,
	humanizeName = humanizeName,
	labelForOperationType = labelForOperationType,
	labelForEventName = labelForEventName,
}
