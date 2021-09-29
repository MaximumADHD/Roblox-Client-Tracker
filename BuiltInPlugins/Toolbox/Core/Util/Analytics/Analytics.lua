local Plugin = script.Parent.Parent.Parent.Parent

local AnalyticsSenders = require(Plugin.Core.Util.Analytics.Senders)

local AnalyticsTypes = require(Plugin.Core.Types.AnalyticsTypes)
local AnalyticsService = game:GetService("RbxAnalyticsService")
local DebugFlags = require(Plugin.Core.Util.DebugFlags)

local getUserId = require(Plugin.Core.Util.getUserId)

local FlagsList = require(Plugin.Core.Util.FlagsList)

local FFlagPluginManagementDirectlyOpenToolbox = game:GetFastFlag("PluginManagementDirectlyOpenToolbox")
local FFlagNewPackageAnalyticsWithRefactor2 = game:GetFastFlag("NewPackageAnalyticsWithRefactor2")
local FFlagToolboxTrackReportAction = game:GetFastFlag("ToolboxTrackReportAction")

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

local function getPlatformId()
	return 0
end

local function getPlaceId()
	-- while game.PlaceId is normally a safe call, it's possible that the code might be executed by tests
	-- outside the context of an open place.
	local placeId = -1
	local success, result = pcall(function()
		placeId = game.PlaceId
	end)
	if not success and DebugFlags.shouldDebugWarnings() then
		warn(result)
	end
	return placeId
end

local Analytics = {}

local isEditMode = game:GetService("RunService"):IsEdit()
local getIsEditMode = function()
	return isEditMode
end
Analytics.getIsEditMode = getIsEditMode

Analytics.getPlaceId = getPlaceId
Analytics.getPlatformId = getPlatformId
Analytics.getClientId = getClientId
Analytics.getStudioSessionId = getStudioSessionId

-- TODO: Remove with FFlagToolboxRemoveTrackEvent
function Analytics.sendReports(plugin)
	AnalyticsSenders.sendReports(plugin)
end

-- TODO: Remove with FFlagToolboxRemoveTrackEvent
function Analytics.onTermSearched(categoryName, searchTerm, creatorId)
	if creatorId and creatorId > 0 then
		AnalyticsSenders.trackEvent("Studio", categoryName, searchTerm, creatorId)
	else
		AnalyticsSenders.trackEvent("Studio", categoryName, searchTerm)
	end
end

function Analytics.onTermSearchedWithoutInsertion(categoryName, searchTerm)
	AnalyticsSenders.sendEventImmediately("studio", "toolbox", "termSearchedWithoutInsertion", {
		categoryName = categoryName,
		searchTerm = searchTerm,
		studioSid = getStudioSessionId(),
		clientId = getClientId(),
		userId = getUserId(),
		isEditMode = getIsEditMode(),
	})
end

function Analytics.onCreatorSearched(searchTerm, creatorId)
	AnalyticsSenders.sendEventImmediately("studio", "toolbox", "creatorSearched", {
		searchTerm = searchTerm,
		creatorId = creatorId,
		studioSid = getStudioSessionId(),
		clientId = getClientId(),
		userId = getUserId(),
		isEditMode = getIsEditMode(),
	})
end

function Analytics.onTryAsset(assetId)
	AnalyticsSenders.sendEventImmediately("studio", "toolbox", "tryAsset", {
		assetId = assetId,
		studioSid = getStudioSessionId(),
		clientId = getClientId(),
		userId = getUserId(),
		isEditMode = getIsEditMode(),
	})
end

function Analytics.onTryAssetFailure(assetId)
	AnalyticsSenders.sendEventImmediately("studio", "toolbox", "tryAssetFailure", {
		assetId = assetId,
		studioSid = getStudioSessionId(),
		clientId = getClientId(),
		userId = getUserId(),
		isEditMode = getIsEditMode(),
	})
end

function Analytics.onSearchOptionsOpened()
	AnalyticsSenders.sendEventImmediately("studio", "toolbox", "searchOptionsOpened", {
		studioSid = getStudioSessionId(),
		clientId = getClientId(),
		userId = getUserId(),
		isEditMode = getIsEditMode(),
	})
end

-- FFlagToolboxSaveSearchWhenSwitchingCategories adds optional param searchTerm
function Analytics.onCategorySelected(oldCategory, newCategory, searchTerm)
	AnalyticsSenders.sendEventImmediately("studio", "click", "toolboxCategorySelection", {
		oldCategory = oldCategory,
		newCategory = newCategory,
		studioSid = getStudioSessionId(),
		clientId = getClientId(),
		isEditMode = getIsEditMode(),
		searchTerm = searchTerm
	})
end

function Analytics.onAssetInserted(assetId, searchTerm, assetIndex, currentCategory)
	local context = "click"
	local eventName = "toolboxInsert"

	AnalyticsSenders.sendEventImmediately("studio", context, eventName, {
		assetId = assetId,
		searchText = searchTerm,
		assetIndex = assetIndex,
		currentCategory = currentCategory,
		studioSid = getStudioSessionId(),
		clientId = getClientId(),
		placeId = getPlaceId(),
		userId = getUserId(),
		isEditMode = getIsEditMode(),
	})
end

function Analytics.onAssetDragInserted(assetId, searchTerm, assetIndex, currentCategory)
	local context = "drag"
	local eventName = "toolboxInsert"

	AnalyticsSenders.sendEventImmediately("studio", context, eventName, {
		assetId = assetId,
		searchText = searchTerm,
		assetIndex = assetIndex,
		currentCategory = currentCategory,
		studioSid = getStudioSessionId(),
		clientId = getClientId(),
		placeId = getPlaceId(),
		userId = getUserId(),
		isEditMode = getIsEditMode(),
	})
end

-- TODO: Remove with FFlagToolboxRemoveTrackEvent
function Analytics.trackEventAssetInsert(assetId)
	AnalyticsSenders.trackEvent("Action", "Insert", assetId)
end

-- TODO: Remove with FFlagToolboxRemoveTrackEvent
function Analytics.incrementAssetInsertCollector()
	AnalyticsSenders.incrementCounter("Inserts")
end

function Analytics.incrementToolboxInsertCounter(assetTypeId)
	AnalyticsSenders.reportCounter(("Studio.ToolboxInsert.%s"):format(tostring(assetTypeId)))
end

function Analytics.incrementToolboxCategoryInsertCounter(categoryName)
	AnalyticsSenders.reportCounter(("Studio.ToolboxCategoryInsert.%s"):format(tostring(categoryName)))
end

function Analytics.incrementWorkspaceInsertCounter()
	AnalyticsSenders.reportCounter("StudioWorkspaceInsertCounter")
end

function Analytics.incrementUploadAssetSuccess(assetTypeId)
	AnalyticsSenders.reportCounter(("Studio.Upload.%s.Success"):format(tostring(assetTypeId)))
end

function Analytics.incrementUploadeAssetFailure(assetTypeId)
	AnalyticsSenders.reportCounter(("Studio.Upload.%s.Failure"):format(tostring(assetTypeId)))
end

-- TODO: Remove with FFlagToolboxRemoveTrackEvent
function Analytics.onSoundInserted()
	AnalyticsSenders.trackEvent("Studio", "Toolbox", "Inserted sound")
end

-- TODO: Remove with FFlagToolboxRemoveTrackEvent
function Analytics.onSoundPlayed()
	AnalyticsSenders.trackEvent("Studio", "Toolbox", "Played sound")
end

-- TODO: Remove with FFlagToolboxRemoveTrackEvent
function Analytics.onSoundPaused()
	AnalyticsSenders.trackEvent("Studio", "Toolbox", "Paused sound")
end

function Analytics.onSoundPlayedCounter()
	AnalyticsSenders.reportCounter("Studio.ToolboxAudio.Played")
end

function Analytics.onSoundPausedCounter()
	AnalyticsSenders.reportCounter("Studio.ToolboxAudio.Paused")
end

function Analytics.sendResultToKibana(result)
	assert(FFlagNewPackageAnalyticsWithRefactor2)
	AnalyticsSenders.sendResultToKibana(result)
end

-- AssetPreview
function Analytics.onAssetPreviewSelected(assetId)
	AnalyticsSenders.sendEventDeferred("studio", "toolbox", "assetPreviewOpen", {
		assetId = assetId,
		clientId = getClientId(),
		userId = getUserId(),
		platformId = getPlatformId(),
		isEditMode = getIsEditMode(),
	})
end

-- time, milliseconds
function Analytics.onAssetPreviewEnded(assetId, time)
	AnalyticsSenders.sendEventDeferred("studio", "toolbox", "modelPreviewInteractionDuration", {
		assetId = assetId,
		time = time,
		clientId = getClientId(),
		userId = getUserId(),
		platformId = getPlatformId(),
		isEditMode = getIsEditMode(),
	})
end

function Analytics.onAssetInsertedFromAssetPreview(assetId)
	AnalyticsSenders.sendEventDeferred("studio", "toolbox", "previewInsertion", {
		assetId = assetId,
		clientId = getClientId(),
		userId = getUserId(),
		platformId = getPlatformId(),
		isEditMode = getIsEditMode(),
	})
end

if not FlagsList:get("FFlagToolboxUseDevFrameworkAssetPreview") then
	-- This appears to never be used.
	function Analytics.onTreeviewActivated(assetId)
		AnalyticsSenders.sendEventDeferred("studio", "toolbox", "treeviewUsage", {
			assetId = assetId,
			clientId = getClientId(),
			userId = getUserId(),
			platformId = getPlatformId(),
			isEditMode = getIsEditMode(),
		})
	end
end

function Analytics.onPluginButtonClickOpen()
	AnalyticsSenders.sendEventDeferred("studio", "toolbox", "MarketplaceOpen", {
		userId = getUserId(),
		placeId = getPlaceId(),
		isEditMode = getIsEditMode(),
	})
end

function Analytics.onPluginButtonClickClose()
	AnalyticsSenders.sendEventDeferred("studio", "toolbox", "MarketplaceClosed", {
		userId = getUserId(),
		placeId = getPlaceId(),
		isEditMode = getIsEditMode(),
	})
end

function Analytics.onToolboxDisplayed()
	AnalyticsSenders.sendEventDeferred("studio", "toolbox", "MarketplaceImpression", {
		userId = getUserId(),
		placeId = getPlaceId(),
		isEditMode = getIsEditMode(),
	})
end

if FFlagPluginManagementDirectlyOpenToolbox then
	function Analytics.openedFromPluginManagement()
		AnalyticsSenders.sendEventImmediately("studio", "Marketplace", "OpenedFromPluginManagement", {
			studioSid = getStudioSessionId(),
			clientId = getClientId(),
			isEditMode = getIsEditMode(),
		})
	end
end

if FFlagToolboxTrackReportAction then
	function Analytics.reportAssetClicked(assetId, assetTypeId)
		AnalyticsSenders.sendEventImmediately("studio", "Marketplace", "ReportAssetClicked", {
			studioSid = getStudioSessionId(),
			clientId = getClientId(),
			isEditMode = getIsEditMode(),
			assetId = assetId,
			assetTypeId = assetTypeId,
		})
	end
end

function Analytics.marketplaceSearch(keyword, prefix, keyCount, delCount, autocompleteShown, searchInfo: AnalyticsTypes.SearchInfo)
	AnalyticsSenders.sendEventImmediately("studio", "Marketplace", "MarketplaceSearch", {
		studioSid = getStudioSessionId(),
		clientID = getClientId(),
		isEditMode = getIsEditMode(),
		userID = getUserId(),
		ptid = getPlatformId(),
		placeID = getPlaceId(),

		searchKeyword = keyword,
		autocompletePrefix = prefix,
		autocompleteKeyCount = keyCount,
		autocompleteDeleteCount = delCount,
		autocompleteShown = autocompleteShown,

		assetType = searchInfo.assetType,
		searchByCreatorID = searchInfo.creatorID,
		searchID = searchInfo.searchId,
		sort = searchInfo.sort,
		toolboxTab = searchInfo.toolboxTab,
	})
end

return Analytics
