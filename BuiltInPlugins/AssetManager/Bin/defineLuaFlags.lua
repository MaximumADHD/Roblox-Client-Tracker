-- Lua flag definitions should go in this file so that they can be used by both main and runTests
-- If the flags are defined in main, then it's possible for the tests run first
-- And then error when trying to use flags that aren't yet defined

game:DefineFastFlag("AssetManagerAddAnalytics", false)
game:DefineFastFlag("AssetManagerOpenContextMenu", false)
game:DefineFastFlag("StudioAssetManagerAddGridListToggle", false)
game:DefineFastFlag("StudioAssetManagerShiftMultiSelect", false)
game:DefineFastFlag("StudioAssetManagerAddMiddleElision", false)
game:DefineFastFlag("AssetManagerAddPlaceVerisonHistoryToContextMenu", false)
game:DefineFastFlag("FixAssetManagerInsertWithLocation", false)
game:DefineFastFlag("AssetManagerAddNewPlaceBehavior", false)
game:DefineFastFlag("OnlyAllowInsertPackageInEdit", false)
game:DefineFastFlag("CleanupRightClickContextMenuFunctions", false)
game:DefineFastFlag("AssetManagerRemoveAssetFixes", false)
game:DefineFastFlag("UseFakeFavoriteIncrement", false)
game:DefineFastFlag("AssetManagerFixNavBarSetState", false)
game:DefineFastFlag("StudioAssetManagerHideTooltipOnAssetPreview", false)
game:DefineFastFlag("StudioAssetManagerUXFixes", false)
game:DefineFastFlag("AssetManagerFixRightClickForAudio", false)
game:DefineFastFlag("StudioAssetManagerAssetPreviewRequest", false)
game:DefineFastFlag("StudioAssetManagerLinkedScriptIcon", false)

return nil