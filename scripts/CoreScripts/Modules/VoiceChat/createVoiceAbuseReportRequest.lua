local HttpService = game:GetService("HttpService")
local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Cryo)

local VCSM = require(script.Parent.VoiceChatServiceManager)
local VoiceUsersByProximity = require(script.Parent.VoiceUsersByProximity)
local getVoiceUsersByProximity = VoiceUsersByProximity
local VOICE_TRANSMISSION_RADIUS = 80

export type VoiceAbuseReportData = {
	localUserId: number,
	abuserUserId: number,
	abuseComment: string,
	abuseReason: string,
	inExpMenuOpenedUnixMilli: number,
	sortedPlayerListUserIds: { [number]: number },
}

return function(
	PlayersService: Players,
	VoiceChatServiceManager: VCSM.VoiceChatServiceManager,
	reportData: VoiceAbuseReportData
) : string
	local abuserPlayer = PlayersService:GetPlayerByUserId(reportData.abuserUserId)
	local abuserPosition

	if abuserPlayer and abuserPlayer.Character and abuserPlayer.Character.PrimaryPart then
		abuserPosition = abuserPlayer.Character.PrimaryPart.Position
	end

	local voiceUserCount = #Cryo.Dictionary.values(VoiceChatServiceManager.participants)
	local impactedUserCount = 0

	if abuserPosition then
		impactedUserCount = #getVoiceUsersByProximity(
			VoiceChatServiceManager,
			abuserPosition,
			VOICE_TRANSMISSION_RADIUS*2,
			nil,
			abuserPlayer
		)
	end

	local request = {
		submitter = {
			type = "User",
			id = tostring(reportData.localUserId),
		},
		entryPoint = "in-experience",
		submissionContexts = {
			{
				key = "comment",
				value = reportData.abuseComment,
			},
			{
				key = "targetType",
				value = "User",
			},
			{
				key = "targetId",
				value = tostring(reportData.abuserUserId),
			},
			{
				key = "category",
				value = reportData.abuseReason,
			},
			{
				key = "isVoiceEnabled",
				value = "true",
			},
			{
				key = "voiceChannelId",
				value = VoiceChatServiceManager.service:GetGroupId(),
			},
			{
				key = "inExpMenuOpenedUnixMilli",
				value = reportData.inExpMenuOpenedUnixMilli,
			},
			{
				key = "reportUserIds",
				value = reportData.sortedPlayerListUserIds,
			},
			{
				key = "voiceUserCount",
				value = tostring(voiceUserCount),
			},
			{
				key = "impactedUserCount",
				value = tostring(impactedUserCount),
			},
		},
	}

	return HttpService:JSONEncode(request)
end
