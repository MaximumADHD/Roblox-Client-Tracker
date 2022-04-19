local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local TrustAndSafety = script.Parent.Parent
local OpenReportSentDialog = require(TrustAndSafety.Actions.OpenReportSentDialog)

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

			local gameName = state.gameInfo.name
			local gameDescription = state.gameInfo.description

			if gameName ~= "" then
				local formattedText = string.format(
					"User Report: \n    %s \n".."Place Title: \n    %s \n".."PlaceId: \n    %s \n".."Place Description: \n    %s \n",
					abuseDescription,
					gameName,
					tostring(game.PlaceId),
					gameDescription
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
