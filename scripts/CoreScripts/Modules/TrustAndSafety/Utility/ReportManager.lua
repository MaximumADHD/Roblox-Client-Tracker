local CoreGui = game:GetService("CoreGui")
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local PlayersService = game:GetService("Players")
local CorePackages = game:GetService("CorePackages")
local RunService = game:GetService("RunService")

local Dash = require(CorePackages.Packages.Dash)

local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local createVoiceAbuseReportRequest = require(RobloxGui.Modules.VoiceChat.createVoiceAbuseReportRequest)
local Url = require(RobloxGui.Modules.Common.Url)

local TnsModule = script.Parent.Parent
local Constants = require(TnsModule.Resources.Constants)
local SendAnalytics = require(TnsModule.Utility.SendAnalytics)
local SessionUtility = require(TnsModule.Utility.SessionUtility)

type UserAbuseReport = {
	reportCategory: string,
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

function sendAnalytics(reportType: string, entityId: number, reason: string, abuseVector: string?)
	SendAnalytics(
		reportType,
		Constants.Analytics.ReportSubmittedName,
		{
			reportType = reportType,
			reportedEntityId = tostring(entityId),
			reportSource = Constants.Analytics.ReportSourceInGame,
			reason = reason,
			abuseVector = abuseVector
		}
	)
end

function getAbuseVectorFromReportCategory(reportCategory: string): string
	if reportCategory == Constants.Category.Voice then
		return "voice"
	elseif reportCategory == Constants.Category.Text then
		return "chat"
	end
	return "other"
end

function submitUserAbuseReport(report: UserAbuseReport, onSubmitted: Dash.AnyFunction)
	local isVoiceReport = report.reportCategory == Constants.Category.Voice
	local localPlayer = PlayersService.LocalPlayer
	if localPlayer then
		pcall(function()
			coroutine.wrap(function()
				local abuseVector = getAbuseVectorFromReportCategory(report.reportCategory)

				if isVoiceReport then
					local request = createVoiceAbuseReportRequest(PlayersService, VoiceChatServiceManager, {
						localUserId = localPlayer.UserId,
						abuserUserId = report.abusingPlayer.UserId,
						abuseComment = report.comment,
						abuseReason = report.reason,
						inExpMenuOpenedUnixMilli = math.floor(report.beginningTimestamp * 1000), --milliseconds conversion
						sortedPlayerListUserIds = report.sortedUserIds,
						abuseVector = abuseVector
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

				sendAnalytics(Constants.Analytics.ReportTypeUser, report.abusingPlayer.UserId, report.reason, abuseVector)
				SessionUtility.endAbuseReportSession()

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

			sendAnalytics(Constants.Analytics.ReportTypeGame, report.placeId, report.reason)
			SessionUtility.endAbuseReportSession()

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
