local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent
local Dash = require(Plugin.Packages.Dash)

local DebugFlags = require(Plugin.Src.Util.DebugFlags)

local join = Dash.join

local FFlagIncompleteDragShouldCancel = game:GetFastFlag("IncompleteDragShouldCancel")
local FFlagAssetManagerUseEventIngest = game:GetFastFlag("AssetManagerUseEventIngest")

-- Remove with FFlagAssetManagerUseEventIngest
local GA_CATEGORY_ACTION = "Action"
local ASSET_MANAGER_CATEGORY = "Asset Manager"

local pluginAnalyticsContext = if FFlagAssetManagerUseEventIngest then "Asset Manager" else ASSET_MANAGER_CATEGORY

return function(rbxAnalyticsService)
	local sendEvent
	local reportCounter
	if FFlagIncompleteDragShouldCancel then
		function sendEvent(eventName, additionalArgs)
			additionalArgs = additionalArgs or {}

			local args = join({
				studioSid = rbxAnalyticsService:GetSessionId(),
				clientId = rbxAnalyticsService:GetClientId(),
				placeId = game.PlaceId,
			}, additionalArgs)

			if DebugFlags.LogAnalytics() then
				print(("%s SendEvent eventName=%s args=%s"):format(
					pluginAnalyticsContext, tostring(eventName), HttpService:JSONEncode(args)))
			end

			rbxAnalyticsService:SendEventDeferred("studio", pluginAnalyticsContext, eventName, args)
		end

		function reportCounter(counterName, count)
			count = count or 1
			if DebugFlags.LogAnalytics() then
				print(("%s ReportCounter counterName=%s count=%s"):format(
					pluginAnalyticsContext, tostring(counterName), tostring(count)))
			end
			rbxAnalyticsService:ReportCounter(counterName, count)
		end
	end

	return {
		openFolder = function(folderName)
			if FFlagAssetManagerUseEventIngest then
				sendEvent(folderName)
				reportCounter("AssetManagerFolderOpen")
			else
				rbxAnalyticsService:TrackEvent(GA_CATEGORY_ACTION, ASSET_MANAGER_CATEGORY, folderName)
				rbxAnalyticsService:ReportCounter("AssetManagerFolderOpen", 1)
			end
		end,

		clickContextMenuItem = function()
			if FFlagAssetManagerUseEventIngest then
				sendEvent("Context Menu Item Click")
				reportCounter("AssetManagerContextMenuItemClick")
			else
				rbxAnalyticsService:TrackEvent(GA_CATEGORY_ACTION, ASSET_MANAGER_CATEGORY, "Context Menu Item Click")
				rbxAnalyticsService:ReportCounter("AssetManagerContextMenuItemClick", 1)
			end
		end,

		massUpdateFromAssetManager = function()
			if FFlagAssetManagerUseEventIngest then
				reportCounter("MassUpdateFromAssetManager")
			else
				rbxAnalyticsService:ReportCounter("MassUpdateFromAssetManager", 1)
			end
		end,

		clickBulkImportButton = function()
			if FFlagAssetManagerUseEventIngest then
				sendEvent("Bulk Import Button Click")
				reportCounter("AssetManagerBulkImportButtonClick")
			else
				rbxAnalyticsService:TrackEvent(GA_CATEGORY_ACTION, ASSET_MANAGER_CATEGORY, "Bulk Import Button Click")
				rbxAnalyticsService:ReportCounter("AssetManagerBulkImportButtonClick", 1)
			end
		end,

		search = function()
			if FFlagAssetManagerUseEventIngest then
				sendEvent("Search")
				reportCounter("AssetManagerSearch")
			else
				rbxAnalyticsService:TrackEvent(GA_CATEGORY_ACTION, ASSET_MANAGER_CATEGORY, "Search")
				rbxAnalyticsService:ReportCounter("AssetManagerSearch", 1)
			end
		end,

		insertAfterSearch = function()
			if FFlagAssetManagerUseEventIngest then
				sendEvent("Insert After Search")
				reportCounter("AssetManagerInsertAfterSearch")
			else
				rbxAnalyticsService:TrackEvent(GA_CATEGORY_ACTION, ASSET_MANAGER_CATEGORY, "Insert After Search")
				rbxAnalyticsService:ReportCounter("AssetManagerInsertAfterSearch", 1)
			end
		end,

		doubleClickInsert = function()
			if FFlagAssetManagerUseEventIngest then
				sendEvent("Double Click Insert")
				reportCounter("AssetManagerDoubleClickInsert")
			else
				rbxAnalyticsService:TrackEvent(GA_CATEGORY_ACTION, ASSET_MANAGER_CATEGORY, "Double Click Insert")
				rbxAnalyticsService:ReportCounter("AssetManagerDoubleClickInsert", 1)
			end
		end,

		dragInsert = function()
			if FFlagAssetManagerUseEventIngest then
				sendEvent("Drag Insert")
				reportCounter("AssetManagerDragInsert")
			else
				rbxAnalyticsService:TrackEvent(GA_CATEGORY_ACTION, ASSET_MANAGER_CATEGORY, "Drag Insert")
				rbxAnalyticsService:ReportCounter("AssetManagerDragInsert", 1)
			end
		end,

		cancelDragInsert = if FFlagIncompleteDragShouldCancel then function()
			sendEvent("CancelDragInsert")
			reportCounter("AssetManagerCancelDragInsert")
		end else nil,

		AssetPreviewPlaySound = function()
			if FFlagAssetManagerUseEventIngest then
				sendEvent("Asset Preview Play Sound")
				reportCounter("AssetManagerAssetPreviewPlaySound")
			else
				rbxAnalyticsService:TrackEvent(GA_CATEGORY_ACTION, ASSET_MANAGER_CATEGORY, "Asset Preview Play Sound")
				rbxAnalyticsService:ReportCounter("AssetManagerAssetPreviewPlaySound", 1)
			end
		end,
		AssetPreviewPauseSound = function()
			if FFlagAssetManagerUseEventIngest then
				sendEvent("Asset Preview Pause Sound")
				reportCounter("AssetManagerAssetPreviewPauseSound")
			else
				rbxAnalyticsService:TrackEvent(GA_CATEGORY_ACTION, ASSET_MANAGER_CATEGORY, "Asset Preview Pause Sound")
				rbxAnalyticsService:ReportCounter("AssetManagerAssetPreviewPauseSound", 1)
			end
		end,
		AssetPreviewPlayVideo = function()
			if FFlagAssetManagerUseEventIngest then
				sendEvent("Asset Preview Play Video")
				reportCounter("AssetManagerAssetPreviewPlayVideo")
			else
				rbxAnalyticsService:TrackEvent(GA_CATEGORY_ACTION, ASSET_MANAGER_CATEGORY, "Asset Preview Play Video")
				rbxAnalyticsService:ReportCounter("AssetManagerAssetPreviewPlayVideo", 1)
			end
		end,

		AssetPreviewPauseVideo = function()
			if FFlagAssetManagerUseEventIngest then
				sendEvent("Asset Preview Pause Video")
				reportCounter("AssetManagerAssetPreviewPauseVideo")
			else
				rbxAnalyticsService:TrackEvent(GA_CATEGORY_ACTION, ASSET_MANAGER_CATEGORY, "Asset Preview Pause Video")
				rbxAnalyticsService:ReportCounter("AssetManagerAssetPreviewPauseVideo", 1)
			end
		end,
	}
end