local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local InGameMenu = script.Parent.Parent
local OpenReportSentDialog = require(InGameMenu.Actions.OpenReportSentDialog)

return function(abuseReason, abuseDescription, userId)
	return function(store)
		if userId ~= nil then
			local player = Players:GetPlayerByUserId(userId)
			if player then
				coroutine.wrap(function()
					Players:ReportAbuse(player, abuseReason, abuseDescription)
					store:dispatch(OpenReportSentDialog())
				end)()
			end
		else
			local state = store:getState()
			if state.localization.currentGameName ~= "" then
				local formattedText = string.format(
					"User Report: \n    %s \n".."Place Title: \n    %s \n".."PlaceId: \n    %s \n".."Place Description: \n    %s \n",
					abuseDescription,
					state.localization.currentGameName,
					tostring(game.PlaceId),
					state.localization.currentGameDescription
				)
				coroutine.wrap(function()
					if not RunService:IsStudio() then
						Players:ReportAbuse(nil, abuseReason, formattedText)
					end
					store:dispatch(OpenReportSentDialog())
				end)()
			end
		end
	end
end
