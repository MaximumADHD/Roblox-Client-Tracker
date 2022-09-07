--!nonstrict
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local TnsModule = script.Parent.Parent
local Constants = require(TnsModule.Resources.Constants)
local Dependencies = require(TnsModule.Dependencies)
local OpenReportSentDialog = require(TnsModule.Actions.OpenReportSentDialog)

local SendAnalytics = require(Dependencies.SendAnalytics)

local ANALYTICS_REPORT_SUBMITTED_NAME = "ingame_menu_report_submitted"

return function(reportType, targetPlayer, reason, description)
	return function(store)
		if reportType == Constants.ReportType.Player then
			coroutine.wrap(function()
				Players:ReportAbuse(targetPlayer, reason, description)
				store:dispatch(OpenReportSentDialog(reportType, targetPlayer))
			end)()
		elseif reportType == Constants.ReportType.Place then
			local state = store:getState()
			local placeName = state.placeInfo.name
			local placeDescription = state.placeInfo.description
			if placeName ~= "" then
				coroutine.wrap(function()
					if not RunService:IsStudio() then
						local formattedText = string.format(
							"User Report: \n    %s \n".."Place Title: \n    %s \n".."PlaceId: \n    %s \n".."Place Description: \n    %s \n",
							description,
							placeName,
							tostring(game.PlaceId),
							placeDescription
						)
						Players:ReportAbuse(nil, reason, formattedText)
					end
					store:dispatch(OpenReportSentDialog(reportType))
				end)()
			end
		else
			return
		end

		-- send analytics
		local stringTable = {}
		if reportType == Constants.ReportType.Player then
			table.insert(stringTable, "report_type=user")
			table.insert(stringTable, "reported_entity_id=" .. tostring(targetPlayer.UserId))
		elseif reportType == Constants.ReportType.Place then
			table.insert(stringTable, "report_type=game")
			table.insert(stringTable, "reported_entity_id=" .. tostring(game.GameId))
		end
		table.insert(stringTable, "report_source=ingame")
		local infoString = table.concat(stringTable,"&")
		SendAnalytics(ANALYTICS_REPORT_SUBMITTED_NAME, infoString, {})
	end
end
