--[[
	Helper functions to report analytics about how PublishPlaceAs plugin is used.

	This allows reporting on whether the user saved, published, or cancelled after opening the plugin window
	as well as the initial permissions that users set when publishing.
]]
local FFlagStudioUseNewSavePlaceWorkflow = game:GetFastFlag("StudioUseNewSavePlaceWorkflow")
local FFlagStudioEnableNewGamesInTheCloudMetrics = game:GetFastFlag("StudioEnableNewGamesInTheCloudMetrics")
local FFlagStudioReportTcToggleMetrics = game:GetFastFlag("StudioReportTcToggleMetrics")

local RbxAnalyticsService = game:GetService("RbxAnalyticsService")
local StudioService = FFlagStudioReportTcToggleMetrics and game:GetService("StudioService") or nil
local Cryo

if FFlagStudioReportTcToggleMetrics then
	local Plugin = script.Parent.Parent.Parent
	Cryo = require(Plugin.Packages.Cryo)
end

local CATEGORY_STUDIO = "Studio"
local TARGET_STUDIO = "studio"
local ACTION_PUBLISHPLACEAS = "PublishPlaceAs"
local CONTEXT_TEAMCREATE = "TeamCreate"

function getNewGamesInTheCloudArgs()
	return {
		newGamesInTheCloud = FFlagStudioUseNewSavePlaceWorkflow and 1 or 0
	}
end

local Analytics = {}

function Analytics.reportInitialPerms(isActive, isFriendsOnly)
	local eventLabel
	if isFriendsOnly then
		eventLabel = "InitialPlacePerms.Friends"
	elseif isActive then
		eventLabel = "InitialPlacePerms.Public"
	else
		eventLabel = "InitialPlacePerms.Private"
	end
	RbxAnalyticsService:TrackEvent(CATEGORY_STUDIO, ACTION_PUBLISHPLACEAS, eventLabel, 0)
end

function Analytics.reportCloudSaveSuccess(isPublish, saveOrPublishAs)
	local eventLabel = isPublish and "PlaceSaved.Publish" or "PlaceSaved.CloudSave"
	if saveOrPublishAs then
		eventLabel = eventLabel .. "As"
	end
	RbxAnalyticsService:TrackEventWithArgs(CATEGORY_STUDIO, ACTION_PUBLISHPLACEAS, eventLabel, getNewGamesInTheCloudArgs(), 0)
end

function Analytics.reportLocalSaveSuccess()
	RbxAnalyticsService:TrackEventWithArgs(CATEGORY_STUDIO, ACTION_PUBLISHPLACEAS, "PlaceSaved.LocalSave", getNewGamesInTheCloudArgs(), 0)
end

function Analytics.reportSaveFailure()
	RbxAnalyticsService:TrackEventWithArgs(CATEGORY_STUDIO, ACTION_PUBLISHPLACEAS, "PlaveSaved.Failure", getNewGamesInTheCloudArgs(), 0)
end

function Analytics.reportSaveCancel(isPublish)
	if FFlagStudioEnableNewGamesInTheCloudMetrics then
		local eventLabel = isPublish and "PlaceSaved.CancelPublish" or "PlaceSaved.CancelSave"
		RbxAnalyticsService:TrackEventWithArgs(CATEGORY_STUDIO, ACTION_PUBLISHPLACEAS, eventLabel, getNewGamesInTheCloudArgs(), 0)
	end
	
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
