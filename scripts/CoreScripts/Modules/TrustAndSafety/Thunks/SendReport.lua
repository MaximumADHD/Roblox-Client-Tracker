--!nonstrict
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local ReportAbuseLogic = require(RobloxGui.Modules.VoiceChat.ReportAbuseLogic)

local TnsModule = script.Parent.Parent
local Constants = require(TnsModule.Resources.Constants)
local ShowToast = require(TnsModule.Actions.ShowToast)
local OpenReportSentDialog = require(TnsModule.Actions.OpenReportSentDialog)
local EndReportFlow = require(TnsModule.Actions.EndReportFlow)
local ReportManager = require(TnsModule.Utility.ReportManager)

return function(reportType, targetPlayer, reason, description, reportCategory, toastTitle, toastSubtitle)
	return function(store)
		local state = store:getState()
		if reportType == Constants.ReportType.Player then
			ReportManager.submitUserAbuseReport({
				reportCategory = reportCategory,
				abusingPlayer = targetPlayer,
				reason = reason,
				comment = description,
				beginningTimestamp = state.report.beginningTimestamp,
				sortedUserIds = state.report.sortedUserIds,
			}, function()
				store:dispatch(OpenReportSentDialog(reportType, targetPlayer))
			end)
		elseif reportType == Constants.ReportType.Place then
			ReportManager.submitPlaceAbuseReport({
				placeId = game.PlaceId,
				placeName = state.placeInfo.name,
				placeDescription = state.placeInfo.description,
				reason = reason,
				comment = description,
			}, function()
				store:dispatch(ShowToast(toastTitle, toastSubtitle))
			end)
			store:dispatch(EndReportFlow())
		end
	end
end
