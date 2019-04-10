local Plugin = script.Parent.Parent.Parent.Parent

local AnalyticsSenders = require(Plugin.Core.Util.Analytics.Senders)

local DebugSettings = settings():GetService("DebugSettings")
local AnalyticsService = game:GetService("AnalyticsService")
local StudioService = game:GetService("StudioService")
local platformId = 0

local FFlagStudioToolboxSearchOptionsAnalytics = settings():GetFFlag("StudioToolboxSearchOptionsAnalytics")

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

-- TODO: We should fetch this only once per plugin session.
local function getUserId()
	local userId = nil
	pcall(function()
		userId = StudioService:GetUserId()
	end)
	return userId
end

local function getPlatformId()
	if platformId == 0 then
		pcall(function()
			platformId = DebugSettings.OsPlatform
		end)
	end
	return platformId
end

local Analytics = { }

function Analytics.sendReports(plugin)
	AnalyticsSenders.sendReports(plugin)
end

function Analytics.onTermSearched(categoryName, searchTerm, creatorId)
	if FFlagStudioToolboxSearchOptionsAnalytics and creatorId and creatorId > 0 then
		AnalyticsSenders.trackEvent("Studio", categoryName, searchTerm, creatorId)
	else
		AnalyticsSenders.trackEvent("Studio", categoryName, searchTerm)
	end
end

function Analytics.onCreatorSearched(searchTerm, creatorId)
	if FFlagStudioToolboxSearchOptionsAnalytics then
		AnalyticsSenders.sendEventImmediately("studio", "toolbox", "creatorSearched", {
			searchTerm = searchTerm,
			creatorId = creatorId,
			studioSid = getStudioSessionId(),
			clientId = getClientId(),
			userId = getUserId(),
		})
	end
end

function Analytics.onSearchOptionsOpened()
	if FFlagStudioToolboxSearchOptionsAnalytics then
		AnalyticsSenders.sendEventImmediately("studio", "toolbox", "searchOptionsOpened", {
			studioSid = getStudioSessionId(),
			clientId = getClientId(),
			userId = getUserId(),
		})
	end
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

-- AssetPreview
function Analytics.onAssetPreviewSelected(assetId)
	AnalyticsSenders.sendEventDeferred("studio", "toolbox", "assetPreviewOpen", {
		assetId = assetId,
		clientId = getClientId(),
		userId = getUserId(),
		platformId = getPlatformId(),
	})
end

-- time, milliseconds
function Analytics.onAssetPreviewEnded(assetId, time)
	AnalyticsSenders.sendEventDeferred("studio", "toolbox", "modelPreviewInteractionDuration", {
		assetId = assetId,
		time = time,
		clientId = getClientId(),
		userId= getUserId(),
		platformId = getPlatformId(),
	})
end

function Analytics.onAssetInsertedFromAssetPreview(assetId)
	AnalyticsSenders.sendEventDeferred("studio", "toolbox", "previewInsertion", {
		assetId = assetId,
		clientId = getClientId(),
		userId = getUserId(),
		platformId = getPlatformId(),
	})
end

function Analytics.onTreeviewActivated(assetId)
	AnalyticsSenders.sendEventDeferred("studio", "toolbox", "treeviewUsage", {
		assetId = assetId,
		clientId = getClientId(),
		userId = getUserId(),
		platformId = getPlatformId(),
	})
end

return Analytics
