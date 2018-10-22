local Plugin = script.Parent.Parent.Parent.Parent

local AnalyticsSenders = require(Plugin.Core.Util.Analytics.Senders)

local AnalyticsService = game:GetService("AnalyticsService")

-- TODO CLIDEVSRVS-1689: StudioSession + StudioID
local function getStudioSession()
	local sessionId = nil
	pcall(function()
		sessionId = AnalyticsService:GetSessionId()
	end)
	return sessionId
end

local function getStudioId()
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
	AnalyticsSenders.sendEventImmediately("Studio", "click", "ToolboxCategorySelection", {
		OldCategory = oldCategory,
		NewCategory = newCategory,
		StudioSession = getStudioSession(),
		StudioID = getStudioId(),
	})
end

function Analytics.onAssetInserted(assetId, searchText, assetIndex)
	AnalyticsSenders.sendEventImmediately("Studio", "click", "ToolboxInsert", {
		AssetId = assetId,
		SearchText = searchText,
		AssetIndex = assetIndex,
		StudioSession = getStudioSession(),
		StudioID = getStudioId(),
	})
end

function Analytics.onAssetDragInserted(assetId, searchText, assetIndex)
	-- TODO CLIDEVSRVS-1689: Is "toolboxInsert" lowerCase or not?
	AnalyticsSenders.sendEventImmediately("Studio", "drag", "toolboxInsert", {
		AssetId = assetId,
		SearchText = searchText,
		AssetIndex = assetIndex,
		StudioSession = getStudioSession(),
		StudioID = getStudioId(),
	})
end

function Analytics.onAssetInsertRemains(contentId)
	AnalyticsSenders.trackEvent("Studio", "StudioInsertRemains", contentId)
end

function Analytics.onAssetInsertDeleted(contentId)
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
