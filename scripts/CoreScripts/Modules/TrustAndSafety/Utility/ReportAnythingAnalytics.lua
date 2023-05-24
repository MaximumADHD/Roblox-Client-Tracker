local CorePackages = game:GetService("CorePackages")
local EventIngestService = game:GetService("EventIngestService")

local Cryo = require(CorePackages.Cryo)
local AvatarIdentificationModule = require(CorePackages.Workspace.Packages.TnSAvatarIdentification)
local EventIngest = require(CorePackages.Workspace.Packages.Analytics).AnalyticsReporters.EventIngest

type AvatarIDStats = AvatarIdentificationModule.AvatarIDStats

type AccumulatedParameters = {
	annotationOptionSeenCount: number,
	annotationPageSeenCount: number,
	annotationPlaceCount: number,
	annotationUndoCount: number,
	annotationRedoCount: number,
	abandonedForRetake: boolean,
	isPortraitMode: boolean,
}

local Constants = {
	EventType = {
		AvatarsIdentified = "ReportAnythingAvatarsIdentified",
	},
	Context = {
		LegacyMenu = "ReportAbuseLegacyMenu"
	}
}

local createZeroAccumulatedParameters = function(): AccumulatedParameters
	return {
		annotationOptionSeenCount = 0,
		annotationPageSeenCount = 0,
		annotationPlaceCount = 0,
		annotationUndoCount = 0,
		annotationRedoCount = 0,
		abandonedForRetake = false,
		isPortraitMode = false
	}
end

local accumulatedParameters = createZeroAccumulatedParameters()

local _eventIngest = nil
local getEventIngest = function()
	if not _eventIngest then
		_eventIngest = EventIngest.new(EventIngestService)
	end
	return _eventIngest
end

return {
	incrementAnnotationOptionSeen = function()
		accumulatedParameters.annotationOptionSeenCount += 1
	end,
	incrementAnnotationPageSeen = function()
		accumulatedParameters.annotationPageSeenCount += 1
	end,
	incrementAnnotationPlace = function()
		accumulatedParameters.annotationPlaceCount += 1
	end,
	incrementAnnotationUndo = function()
		accumulatedParameters.annotationUndoCount += 1
	end,
	incrementAnnotationRedo = function()
		accumulatedParameters.annotationRedoCount += 1
	end,
	setAbandonedForRetake = function()
		accumulatedParameters.abandonedForRetake = true
	end,
	setIsPortraitMode = function()
		accumulatedParameters.isPortraitMode = true
	end,

	getAccumulatedParameters = function()
		return accumulatedParameters
	end,
	emitAvatarsIdentifiedStats = function(avatarIDStats: AvatarIDStats)
		local statsWithMicroseconds = Cryo.Dictionary.join(avatarIDStats, {
			duration = avatarIDStats.duration * 1e6
		})
		getEventIngest():sendEventDeferred(
			Constants.Context.LegacyMenu,
			Constants.EventType.AvatarsIdentified,
			statsWithMicroseconds
		)
	end,
	clear = function()
		accumulatedParameters = createZeroAccumulatedParameters()
	end
}
