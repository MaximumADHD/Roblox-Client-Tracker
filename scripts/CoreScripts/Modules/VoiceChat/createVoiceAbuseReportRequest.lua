local HttpService = game:GetService("HttpService")
local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Cryo)

local VCSM = require(script.Parent.VoiceChatServiceManager)
local VoiceUsersByProximity = require(script.Parent.VoiceUsersByProximity)
local getVoiceUsersByProximity = VoiceUsersByProximity.getSortedPlayers
local VOICE_TRANSMISSION_RADIUS = 80

export type VoiceAbuseReportData = {
	localUserId: number,
	abuserUserId: number,
	abuseComment: string,
	abuseReason: string,
	inExpMenuOpenedUnixMilli: number,
	sortedPlayerListUserIds: { [number]: number },
	abuseVector: string,
}

return function(
	PlayersService: Players,
	VoiceChatServiceManager: VCSM.VoiceChatServiceManager,
	reportData: VoiceAbuseReportData
): string
	local abuserPlayer = PlayersService:GetPlayerByUserId(reportData.abuserUserId)
	local abuserPosition

	if abuserPlayer and abuserPlayer.Character and abuserPlayer.Character.PrimaryPart then
		abuserPosition = abuserPlayer.Character.PrimaryPart.Position
	end

	local voiceUserCount = #Cryo.Dictionary.values(VoiceChatServiceManager.participants)
	local impactedUserCount = 0

	if abuserPosition then
		impactedUserCount = #getVoiceUsersByProximity(
			PlayersService,
			VoiceChatServiceManager,
			abuserPosition,
			VOICE_TRANSMISSION_RADIUS * 2,
			nil,
			abuserPlayer
		)
	end

	local sortedPlayerListUserIds = Cryo.List.map(reportData.sortedPlayerListUserIds, function(userId)
		return { data = tostring(userId) }
	end)

	local request = {
		tags = {
			ENTRY_POINT = {
				valueList = {
					{ data = "in-experience" },
				},
			},

			SUBMITTER_USER_ID = {
				valueList = {
					{ data = tostring(reportData.localUserId) },
				},
			},

			REPORT_TARGET_USER_ID = {
				valueList = {
					{ data = tostring(reportData.abuserUserId) },
				},
			},

			REPORTED_ABUSE_CATEGORY = {
				valueList = {
					{ data = reportData.abuseReason },
				},
			},

			REPORTER_COMMENT = {
				valueList = {
					{ data = reportData.abuseComment },
				},
			},

			IS_PLACE_VOICE_ENABLED = {
				valueList = {
					{ data = "true" },
				},
			},

			VOICE_USER_IDS_FROM_CLIENT = {
				valueList = sortedPlayerListUserIds,
			},

			IN_EXP_MENU_OPENED_UNIX_MILLI = {
				valueList = {
					{ data = tostring(reportData.inExpMenuOpenedUnixMilli) },
				},
			},

			VOICE_CHANNEL_ID = {
				valueList = {
					{
						data = tostring(
							if game:GetEngineFeature("VoiceChatServiceExposesChannelId")
								then VoiceChatServiceManager.service:GetChannelId()
								else VoiceChatServiceManager.service:GetGroupId()
						),
					},
				},
			},

			VOICE_USER_COUNT = {
				valueList = {
					{ data = tostring(voiceUserCount) },
				},
			},

			VOICE_IMPACTED_USER_COUNT = {
				valueList = {
					{ data = tostring(impactedUserCount) },
				},
			},

			REPORTED_ABUSE_VECTOR = {
				valueList = {
					{ data = reportData.abuseVector },
				},
			},
		},
	}

	return HttpService:JSONEncode(request)
end
