local Plugin = script.Parent.Parent.Parent.Parent

local AnalyticsSenders = require(Plugin.Core.Util.Analytics.Senders)

local AnalyticsService = game:GetService("AnalyticsService")

-- TODO CLIDEVSRVS-1689: StudioSession + StudioID
local function getStudioSessionId()
	local sessionId = nil
	pcall(function()
		sessionId = AnalyticsService:GetSessionId()
	end)
	return sessionId
end

local function getClientId()
	local clientId = nil
	pcall(function()
		clientId = AnalyticsService:GetClientId()
	end)
	return clientId
end

local Analytics = { }

function Analytics.sendReports(plugin)
	AnalyticsSenders.sendReports(plugin)
end

function Analytics.onTermSearched(categoryName, searchTerm)
	AnalyticsSenders.trackEvent("Studio", categoryName, searchTerm)
end

function Analytics.onCategorySelected(oldCategory, newCategory)
	AnalyticsSenders.sendEventImmediately("studio", "click", "toolboxCategorySelection", {
		oldCategory = oldCategory,
		newCategory = newCategory,
		studioSid = getStudioSessionId(),
		clientId = getClientId(),
	})
end

function Analytics.onAssetInserted(assetId, searchTerm, assetIndex)
	AnalyticsSenders.sendEventImmediately("studio", "click", "toolboxInsert", {
		assetId = assetId,
		searchText = searchTerm,
		assetIndex = assetIndex,
		studioSid = getStudioSessionId(),
		clientId = getClientId(),
	})
end

function Analytics.onAssetDragInserted(assetId, searchTerm, assetIndex)
	AnalyticsSenders.sendEventImmediately("studio", "drag", "toolboxInsert", {
		assetId = assetId,
		searchText = searchTerm,
		assetIndex = assetIndex,
		studioSid = getStudioSessionId(),
		clientId = getClientId(),
	})
end

function Analytics.onAssetInsertRemains(time, contentId)
	AnalyticsSenders.trackEvent("Studio", ("InsertRemains%d"):format(time), contentId)
end

function Analytics.onAssetInsertDeleted(time, contentId)
	AnalyticsSenders.trackEvent("Studio", ("InsertDeleted%d"):format(time), contentId)
end

function Analytics.DEPRECATED_onAssetInsertRemains(contentId)
	AnalyticsSenders.trackEvent("Studio", "StudioInsertRemains", contentId)
end

function Analytics.DEPRECATED_onAssetInsertDeleted(contentId)
	AnalyticsSenders.trackEvent("Studio", "StudioInsertDeleted", contentId)
end

function Analytics.trackEventAssetInsert(assetId)
	AnalyticsSenders.trackEvent("Action", "Insert", assetId)
end

function Analytics.incrementAssetInsertCollector()
	AnalyticsSenders.incrementCounter("Inserts")
end

function Analytics.incrementToolboxInsertCounter(assetTypeId)
	AnalyticsSenders.reportCounter(("Studio.ToolboxInsert.%s"):format(tostring(assetTypeId)))
end

function Analytics.incrementWorkspaceInsertCounter()
	AnalyticsSenders.reportCounter("StudioWorkspaceInsertCounter")
end

function Analytics.onSoundInserted()
	AnalyticsSenders.trackEvent("Studio", "Toolbox", "Inserted sound")
end

function Analytics.onSoundPlayed()
	AnalyticsSenders.trackEvent("Studio", "Toolbox", "Played sound")
end

function Analytics.onSoundPaused()
	AnalyticsSenders.trackEvent("Studio", "Toolbox", "Paused sound")
end

function Analytics.onSoundPlayedCounter()
	AnalyticsSenders.reportCounter("Studio.ToolboxAudio.Played")
end

function Analytics.onSoundPausedCounter()
	AnalyticsSenders.reportCounter("Studio.ToolboxAudio.Paused")
end

return Analytics
