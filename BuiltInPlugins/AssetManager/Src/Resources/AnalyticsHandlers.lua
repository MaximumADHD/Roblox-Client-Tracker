local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent
local Dash = require(Plugin.Packages.Dash)

local DebugFlags = require(Plugin.Src.Util.DebugFlags)

local join = Dash.join

local FFlagAssetManagerDragAndDrop = game:GetFastFlag("AssetManagerDragAndDrop")
local FFlagIncompleteDragShouldCancel = game:GetFastFlag("IncompleteDragShouldCancel")

local GA_CATEGORY_ACTION = "Action"
local ASSET_MANAGER_CATEGORY = "Asset Manager"

local pluginAnalyticsContext = ASSET_MANAGER_CATEGORY

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
			rbxAnalyticsService:TrackEvent(GA_CATEGORY_ACTION, ASSET_MANAGER_CATEGORY, folderName)
			rbxAnalyticsService:ReportCounter("AssetManagerFolderOpen", 1)
		end,

		clickContextMenuItem = function()
			rbxAnalyticsService:TrackEvent(GA_CATEGORY_ACTION, ASSET_MANAGER_CATEGORY, "Context Menu Item Click")
			rbxAnalyticsService:ReportCounter("AssetManagerContextMenuItemClick", 1)
		end,

		massUpdateFromAssetManager = function()
			rbxAnalyticsService:ReportCounter("MassUpdateFromAssetManager", 1)
		end,

		clickBulkImportButton = function()
			rbxAnalyticsService:TrackEvent(GA_CATEGORY_ACTION, ASSET_MANAGER_CATEGORY, "Bulk Import Button Click")
			rbxAnalyticsService:ReportCounter("AssetManagerBulkImportButtonClick", 1)
		end,

		search = function()
			rbxAnalyticsService:TrackEvent(GA_CATEGORY_ACTION, ASSET_MANAGER_CATEGORY, "Search")
			rbxAnalyticsService:ReportCounter("AssetManagerSearch", 1)
		end,

		insertAfterSearch = function()
			rbxAnalyticsService:TrackEvent(GA_CATEGORY_ACTION, ASSET_MANAGER_CATEGORY, "Insert After Search")
			rbxAnalyticsService:ReportCounter("AssetManagerInsertAfterSearch", 1)
		end,

		doubleClickInsert = function()
			rbxAnalyticsService:TrackEvent(GA_CATEGORY_ACTION, ASSET_MANAGER_CATEGORY, "Double Click Insert")
			rbxAnalyticsService:ReportCounter("AssetManagerDoubleClickInsert", 1)
		end,

		dragInsert = if FFlagAssetManagerDragAndDrop then function()
			rbxAnalyticsService:TrackEvent(GA_CATEGORY_ACTION, ASSET_MANAGER_CATEGORY, "Drag Insert")
			rbxAnalyticsService:ReportCounter("AssetManagerDragInsert", 1)
		end else nil,

		cancelDragInsert = if FFlagIncompleteDragShouldCancel then function()
			sendEvent("CancelDragInsert")
			reportCounter("AssetManagerCancelDragInsert")
		end else nil,

		AssetPreviewPlaySound = function()
			rbxAnalyticsService:TrackEvent(GA_CATEGORY_ACTION, ASSET_MANAGER_CATEGORY, "Asset Preview Play Sound")
			rbxAnalyticsService:ReportCounter("AssetManagerAssetPreviewPlaySound", 1)
		end,
		AssetPreviewPauseSound = function()
			rbxAnalyticsService:TrackEvent(GA_CATEGORY_ACTION, ASSET_MANAGER_CATEGORY, "Asset Preview Pause Sound")
			rbxAnalyticsService:ReportCounter("AssetManagerAssetPreviewPauseSound", 1)
		end,
		AssetPreviewPlayVideo = function()
			rbxAnalyticsService:TrackEvent(GA_CATEGORY_ACTION, ASSET_MANAGER_CATEGORY, "Asset Preview Play Video")
			rbxAnalyticsService:ReportCounter("AssetManagerAssetPreviewPlayVideo", 1)
		end,
		AssetPreviewPauseVideo = function()
			rbxAnalyticsService:TrackEvent(GA_CATEGORY_ACTION, ASSET_MANAGER_CATEGORY, "Asset Preview Pause Video")
			rbxAnalyticsService:ReportCounter("AssetManagerAssetPreviewPauseVideo", 1)
		end,
	}
end