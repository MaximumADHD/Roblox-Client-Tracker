--!nonstrict
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local ReportAbuseLogic = require(RobloxGui.Modules.VoiceChat.ReportAbuseLogic)

local TnsModule = script.Parent.Parent
local Constants = require(TnsModule.Resources.Constants)
local OpenReportSentDialog = require(TnsModule.Actions.OpenReportSentDialog)
local ReportManager = require(TnsModule.Utility.ReportManager)

return function(reportType, targetPlayer, reason, description)
	return function(store)
		if reportType == Constants.ReportType.Player then
			ReportManager.submitUserAbuseReport({
				methodOfAbuse = ReportAbuseLogic.MethodsOfAbuse.text, -- TODO depending on the method
				abusingPlayer = targetPlayer,
				reason = reason,
				comment = description,
				beginningTimestamp = 0, -- TODO add correct timestamp of when the report page opened to the user
				sortedUserIds = {}, -- TODO correct with the actual sorted list of reportable player Ids,
			}, function()
				store:dispatch(OpenReportSentDialog(reportType, targetPlayer))
			end)
		elseif reportType == Constants.ReportType.Place then
			local state = store:getState()
			ReportManager.submitPlaceAbuseReport({
				placeId = game.PlaceId,
				placeName = state.placeInfo.name,
				placeDescription = state.placeInfo.description,
				reason = reason,
				comment = description,
			}, function()
				store:dispatch(OpenReportSentDialog(reportType))
			end)
		end
	end
end
