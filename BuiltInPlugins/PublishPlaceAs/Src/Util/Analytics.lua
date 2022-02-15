--[[
	Helper functions to report analytics about how PublishPlaceAs plugin is used.

	This allows reporting on whether the user saved, published, or cancelled after opening the plugin window
	as well as the initial permissions that users set when publishing.
]]
local FFlagStudioReportTcToggleMetrics = game:GetFastFlag("StudioReportTcToggleMetrics")

local RbxAnalyticsService = game:GetService("RbxAnalyticsService")
local StudioService = FFlagStudioReportTcToggleMetrics and game:GetService("StudioService") or nil
local Cryo

if FFlagStudioReportTcToggleMetrics then
	local Plugin = script.Parent.Parent.Parent
	Cryo = require(Plugin.Packages.Cryo)
end

local TARGET_STUDIO = "studio"
local CONTEXT_TEAMCREATE = "TeamCreate"

local Analytics = {}

function Analytics.reportSaveCancel(isPublish)
	if FFlagStudioReportTcToggleMetrics then
		local eventName = isPublish and "FilePublishPlaceAsCancel" or "FileSavePlaceAsCancel"
		local args = {
			userId = StudioService:GetUserId(),
			inTreatment = StudioService:GetUserIsInTeamCreateToggleRamp(),
			studioSid = RbxAnalyticsService:GetSessionId(),
		}

		if StudioService:GetPlaceIsPersistedToCloud() then
			args = Cryo.Dictionary.join(args, {
				placeId = game.PlaceId
			})
		end
		
		RbxAnalyticsService:SendEventDeferred(TARGET_STUDIO, CONTEXT_TEAMCREATE, eventName, args)
	end
end

return Analytics
