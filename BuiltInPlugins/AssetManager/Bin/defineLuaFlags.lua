-- Lua flag definitions should go in this file so that they can be used by both main and runTests
-- If the flags are defined in main, then it's possible for the tests run first
-- And then error when trying to use flags that aren't yet defined
game:DefineFastInt("StudioAssetManagerAssetFetchNumber", 50)
game:DefineFastFlag("AssetManagerRefactorPath", false)
game:DefineFastFlag("AssetManagerMassUpdateContextMenuFix", false)
game:DefineFastFlag("EnableAssetManagerGlobalSearchBar", false)
game:DefineFastFlag("StudioAssetManagerAssetModerationPendingIcon", false)
game:DefineFastFlag("EnableAssetManagerSortButton", false)
game:DefineFastFlag("AssetManagerInitiallyDisabled", false)
return nil
