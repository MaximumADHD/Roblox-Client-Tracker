local CoreGui = game:GetService("CoreGui")
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local PlayersService = game:GetService("Players")
local CorePackages = game:GetService("CorePackages")
local RunService = game:GetService("RunService")

local Dash = require(CorePackages.Packages.Dash)

local GetFFlagVoiceAbuseReportsEnabled = require(RobloxGui.Modules.Flags.GetFFlagVoiceAbuseReportsEnabled)
local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local ReportAbuseLogic = require(RobloxGui.Modules.VoiceChat.ReportAbuseLogic)
local createVoiceAbuseReportRequest = require(RobloxGui.Modules.VoiceChat.createVoiceAbuseReportRequest)
local Url = require(RobloxGui.Modules.Common.Url)

local TnsModule = script.Parent.Parent
local Dependencies = require(TnsModule.Dependencies)
local SendAnalytics = Dependencies.SendAnalytics

local ANALYTICS_REPORT_SUBMITTED_NAME = "ingame_menu_report_submitted"

type UserAbuseReport = {
	methodOfAbuse: ReportAbuseLogic.MethodOfAbuse?,
	reason: string,
	comment: string,
	abusingPlayer: Player,
	beginningTimestamp: number,
	sortedUserIds: Dash.Table,
}

type PlaceAbuseReport = {
	placeId: number,
	reason: string,
	comment: string,
	placeName: string,
	placeDescription: string,
}

function sendAnalytics(reportType: string, entityId: number)
	local stringTable = {
		"report_type=" .. reportType,
		"reported_entity_id=" .. tostring(entityId),
		"report_source=ingame",
	}
	local infoString = table.concat(stringTable,"&")
	SendAnalytics(ANALYTICS_REPORT_SUBMITTED_NAME, infoString, {})
end

function getAbuseVectorFromMethodOfAbuse(methodOfAbuse: ReportAbuseLogic.MethodOfAbuse?): string
	if methodOfAbuse == ReportAbuseLogic.MethodsOfAbuse.voice then
		return "Voice"
	elseif methodOfAbuse == ReportAbuseLogic.MethodsOfAbuse.text then
		return "Chat"
	end
	return "Other"
end

function submitUserAbuseReport(report: UserAbuseReport, onSubmitted: Dash.AnyFunction)
	local isVoiceReport = report.methodOfAbuse == ReportAbuseLogic.MethodsOfAbuse.voice
	local localPlayer = PlayersService.LocalPlayer
	if localPlayer then
		pcall(function()
			coroutine.wrap(function()
				if GetFFlagVoiceAbuseReportsEnabled() and isVoiceReport then
					local request = createVoiceAbuseReportRequest(PlayersService, VoiceChatServiceManager, {
						localUserId = localPlayer.UserId,
						abuserUserId = report.abusingPlayer.UserId,
						abuseComment = report.comment,
						abuseReason = report.reason,
						inExpMenuOpenedUnixMilli = math.floor(report.beginningTimestamp * 1000), --milliseconds conversion
						sortedPlayerListUserIds = report.sortedUserIds,
						abuseVector = getAbuseVectorFromMethodOfAbuse(report.methodOfAbuse),
					})

					if game:GetEngineFeature("AbuseReportV3") then
						PlayersService:ReportAbuseV3(localPlayer, request)
					else
						local fullUrl = Url.APIS_URL.."/abuse-reporting/v2/abuse-report"
						HttpRbxApiService:PostAsyncFullUrl(fullUrl, request)
					end
				else
					PlayersService:ReportAbuse(report.abusingPlayer, report.reason, report.comment)
				end

				sendAnalytics("user", report.abusingPlayer.UserId)

				if onSubmitted then
					onSubmitted()
				end
			end)()
		end)
	end
end

function submitPlaceAbuseReport(report: PlaceAbuseReport, onSubmitted: Dash.AnyFunction)
	if report.placeName ~= "" then
		coroutine.wrap(function()
			if not RunService:IsStudio() then
				local formattedText = string.format(
					"User Report: \n    %s \n".."Place Title: \n    %s \n".."PlaceId: \n    %s \n".."Place Description: \n    %s \n",
					report.comment,
					report.placeName,
					tostring(report.placeId),
					report.placeDescription
				)
				-- ROBLOX FIXME: Players:ReportAbuse() should accept an optional Player
				PlayersService:ReportAbuse((nil :: any) :: Player, report.reason, formattedText)
			end

			sendAnalytics("game", report.placeId)

			if onSubmitted then
				onSubmitted()
			end
		end)()
	end
end

return {
	submitUserAbuseReport = submitUserAbuseReport,
	submitPlaceAbuseReport = submitPlaceAbuseReport,
}
