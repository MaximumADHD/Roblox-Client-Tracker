-- Lua flag definitions should go in this file so that they can be used by both main and runTests
-- If the flags are defined in main, then it's possible for the tests run first
-- And then error when trying to use flags that aren't yet defined

game:DefineFastFlag("AssetManagerFixRightClickForAudio", false)
game:DefineFastFlag("AssetManagerRemoveAssetFixes", false)
game:DefineFastFlag("CleanupRightClickContextMenuFunctions", false)
game:DefineFastFlag("EnableAssetManagerStylizer", false)
game:DefineFastFlag("StudioAssetManagerAssetPreviewRequest", false)
game:DefineFastFlag("StudioAssetManagerLinkedScriptIcon", false)
game:DefineFastFlag("UseFakeFavoriteIncrement", false)
game:DefineFastFlag("StudioAssetManagerFetchMoreAssets", false)
game:DefineFastInt("StudioAssetManagerAssetFetchNumber", 50)
game:DefineFastFlag("StudioAssetManagerShowRootPlaceListView", false)
game:DefineFastFlag("StudioAssetManagerEnableCopyGameId", false)
game:DefineFastFlag("StudioAssetManagerNewMultiselectMeshBehavior", false)
game:DefineFastFlag("StudioAssetManagerUseNewPackagesEndpoint", false)
game:DefineFastFlag("StudioAssetManagerFixLinkedScripts", false)
game:DefineFastFlag("StudioAssetManagerConvertToDevFrameworkTooltips", false)
game:DefineFastFlag("StudioAssetManagerFixMeshContextMenu", false)
game:DefineFastFlag("StudioAssetManagerTileAssetPreviewRequest", false)
return nil