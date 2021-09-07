local GA_CATEGORY_ACTION = "Action"
local ASSET_MANAGER_CATEGORY = "Asset Manager"

local FFlagFixAssetManagerAssetPreviewMedia = game:DefineFastFlag("FixAssetManagerAssetPreviewMedia", false)

return function(rbxAnalyticsService)
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

        AssetPreviewPlaySound = FFlagFixAssetManagerAssetPreviewMedia and function()
            rbxAnalyticsService:TrackEvent(GA_CATEGORY_ACTION, ASSET_MANAGER_CATEGORY, "Asset Preview Play Sound")
            rbxAnalyticsService:ReportCounter("AssetManagerAssetPreviewPlaySound", 1)
        end or nil,
        AssetPreviewPauseSound = FFlagFixAssetManagerAssetPreviewMedia and function()
            rbxAnalyticsService:TrackEvent(GA_CATEGORY_ACTION, ASSET_MANAGER_CATEGORY, "Asset Preview Pause Sound")
            rbxAnalyticsService:ReportCounter("AssetManagerAssetPreviewPauseSound", 1)
        end or nil,
        AssetPreviewPlayVideo = FFlagFixAssetManagerAssetPreviewMedia and function()
            rbxAnalyticsService:TrackEvent(GA_CATEGORY_ACTION, ASSET_MANAGER_CATEGORY, "Asset Preview Play Video")
            rbxAnalyticsService:ReportCounter("AssetManagerAssetPreviewPlayVideo", 1)
        end or nil,
        AssetPreviewPauseVideo = FFlagFixAssetManagerAssetPreviewMedia and function()
            rbxAnalyticsService:TrackEvent(GA_CATEGORY_ACTION, ASSET_MANAGER_CATEGORY, "Asset Preview Pause Video")
            rbxAnalyticsService:ReportCounter("AssetManagerAssetPreviewPauseVideo", 1)
        end or nil,
    }
end